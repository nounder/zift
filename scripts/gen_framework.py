#!/usr/bin/env python3
"""Generate Zig bindings from Swift symbol graphs.

Usage:
    python3 scripts/gen_framework.py AppKit
    python3 scripts/gen_framework.py Foundation
    python3 scripts/gen_framework.py CoreData

Automatically resolves and generates dependencies (e.g. AppKit → Foundation).
Outputs to src/{FrameworkName}.zig
"""

import json
import os
import re
import subprocess
import sys
from collections import defaultdict
from pathlib import Path

SDK = subprocess.check_output(["xcrun", "--show-sdk-path"], text=True).strip()
TARGET = "arm64-apple-macos13"
PROJECT_DIR = Path(__file__).parent.parent
SG_CACHE = Path("/tmp/zig_symbolgraph_cache")

ZIG_KEYWORDS = {
    "error", "type", "null", "undefined", "true", "false",
    "switch", "return", "break", "continue", "while", "for",
    "if", "else", "fn", "var", "const", "enum", "struct",
    "union", "and", "or", "try", "catch", "test", "defer",
    "inline", "pub", "export", "extern", "comptime",
    "unreachable", "align", "suspend", "resume", "async",
    "await", "volatile", "linksection", "threadlocal",
    "allowzero", "noalias", "opaque",
}

SWIFT_TYPE_MAP = {
    "Void": "void",
    "Bool": "objc.BOOL",
    "Int": "objc.NSInteger",
    "UInt": "c_ulong",
    "Int8": "i8", "Int16": "i16", "Int32": "i32", "Int64": "i64",
    "UInt8": "u8", "UInt16": "u16", "UInt32": "u32", "UInt64": "u64",
    "Float": "f32",
    "Double": "f64",
    "CGFloat": "objc.CGFloat",
    "String": "objc.NSString",
    "NSString": "objc.NSString",
    "Selector": "Selector",
    "NSRect": "NSRect", "CGRect": "NSRect",
    "NSSize": "NSSize", "CGSize": "NSSize",
    "NSPoint": "NSPoint", "CGPoint": "NSPoint",
    "NSRange": "NSRange",
    "NSEdgeInsets": "NSEdgeInsets",
    "TimeInterval": "TimeInterval",
    "AnyObject": "AnyObject",
    "Any": "Any",
    "AnyClass": "AnyClass",
    "OpaquePointer": "OpaquePointer",
    "pid_t": "pid_t",
}

# Swift value types that bridge to ObjC classes at the ABI boundary.
# Matched by preciseIdentifier since names like "Data" are too generic.
# Values are (objc_class_precise, fallback_zig_type) — the precise ID is used
# to look up the typed class name via class_type_map at resolution time.
SWIFT_BRIDGED_TYPES = {
    "s:10Foundation4DataV": "c:objc(cs)NSData",                # Data ↔ NSData
    "s:10Foundation4DateV": "c:objc(cs)NSDate",                # Date ↔ NSDate
    "s:10Foundation3URLV": "c:objc(cs)NSURL",                  # URL ↔ NSURL
    "s:10Foundation6LocaleV": "c:objc(cs)NSLocale",            # Locale ↔ NSLocale
    "s:10Foundation16AttributedStringV": "c:objc(cs)NSAttributedString",  # AttributedString
    "s:10Foundation12NotificationV": "c:objc(cs)NSNotification",
    "s:10Foundation8IndexSetV": "c:objc(cs)NSIndexSet",
    "s:10Foundation11MeasurementV": "c:objc(cs)NSMeasurement",
    "s:Sp": "UnsafeMutablePointer",             # UnsafeMutablePointer<T>
    "s:SP": "UnsafePointer",                   # UnsafePointer<T>
    "s:Sv": "UnsafeMutableRawPointer",         # UnsafeMutableRawPointer
    "s:SV": "UnsafeRawPointer",               # UnsafeRawPointer
}

# Types that are always opaque pointers (C refs, CF types, etc.)
OPAQUE_TYPES = {
    "CGColor", "CGImage", "CGContext", "CGEvent", "CGPath",
    "CGColorSpace", "CGGradient", "CGPattern",
    "SecIdentity", "SecCertificate", "SecTrust",
    "IOSurfaceRef", "CVPixelBuffer",
}

def _build_typedef_map(graphs):
    """Build c:@T@ → Zig type map from symbol graph rawValue init signatures.

    NS_TYPED_EXTENSIBLE_ENUM types are imported as Swift structs with
    RawRepresentable conformance.  Their rawValue init parameter reveals
    the underlying C type (Int → NSInteger, Float → f32, CGFloat, etc.).
    """
    # memberOf: child → parent
    members = {}
    for sg in graphs.values():
        for r in sg["relationships"]:
            if r["kind"] == "memberOf":
                members[r["source"]] = r["target"]

    # Collect c:@T@ struct symbols
    typedef_precises = set()
    for sg in graphs.values():
        for sym in sg["symbols"]:
            p = sym["identifier"]["precise"]
            if sym["kind"]["identifier"] == "swift.struct" and p.startswith("c:@T@"):
                typedef_precises.add(p)

    # Also handle c:@T@ typealias symbols (some simpler typedefs)
    for sg in graphs.values():
        for sym in sg["symbols"]:
            p = sym["identifier"]["precise"]
            if sym["kind"]["identifier"] == "swift.typealias" and p.startswith("c:@T@"):
                frags = sym.get("declarationFragments", [])
                types = [f for f in frags if f["kind"] == "typeIdentifier"]
                if types:
                    raw_name = types[-1]["spelling"]
                    if raw_name in SWIFT_TYPE_MAP:
                        td_name = p[len("c:@T@"):]
                        # Will be added below
                        typedef_precises.discard(p)  # handled directly
                        # Store directly
                        members[f"_alias_{td_name}"] = raw_name

    result = {}

    # Extract rawValue type from init members
    for sg in graphs.values():
        for sym in sg["symbols"]:
            p = sym["identifier"]["precise"]
            parent = members.get(p, "")
            if parent in typedef_precises and sym["kind"]["identifier"] == "swift.init":
                fs = sym.get("functionSignature", {})
                for param in fs.get("parameters", []):
                    frags = param.get("declarationFragments", [])
                    types = [f for f in frags if f["kind"] == "typeIdentifier"]
                    if types:
                        raw_name = types[-1]["spelling"]
                        td_name = parent[len("c:@T@"):]
                        if raw_name in SWIFT_TYPE_MAP and td_name not in result:
                            result[td_name] = SWIFT_TYPE_MAP[raw_name]
                        break

    # Add typealias-based entries
    for key, raw_name in members.items():
        if key.startswith("_alias_"):
            td_name = key[len("_alias_"):]
            if td_name not in result and raw_name in SWIFT_TYPE_MAP:
                result[td_name] = SWIFT_TYPE_MAP[raw_name]

    # Hardcode a few that lack rawValue inits in the symbol graph
    result.setdefault("NSRangePointer", "?*anyopaque")

    return result


def _build_enum_map(graphs):
    """Extract all NS_ENUM definitions with their cases and raw values.

    Returns {c_enum_name: {
        "owner_class": ObjC class name or None (for standalone enums),
        "owner_module": module name,
        "swift_name": last pathComponent (e.g. "ActivationPolicy"),
        "cases": [(case_name, raw_value), ...],
    }}

    Uses Swift to evaluate raw values at generation time.
    """
    # Collect enum metadata from symbol graphs
    members = {}
    for sg in graphs.values():
        for r in sg["relationships"]:
            if r["kind"] == "memberOf":
                members.setdefault(r["source"], []).append(r["target"])

    enums = {}  # c_name -> info
    enum_module = {}  # c_name -> module

    for mod, sg in graphs.items():
        for sym in sg["symbols"]:
            kind = sym["kind"]["identifier"]
            precise = sym["identifier"]["precise"]

            if kind == "swift.enum" and precise.startswith("c:@E@"):
                c_name = precise[5:]
                path = sym.get("pathComponents", [])
                # Find owning class via memberOf
                parents = members.get(precise, [])
                class_parent = None
                for p in parents:
                    if p.startswith("c:objc(cs)"):
                        m = re.match(r'c:objc\(cs\)(\w+)', p)
                        if m:
                            class_parent = m.group(1)
                            break

                swift_name = path[-1] if path else c_name
                enums[c_name] = {
                    "owner_class": class_parent,
                    "owner_module": mod,
                    "swift_name": swift_name,
                    "swift_path": ".".join(path),
                    "cases": [],
                }
                enum_module[c_name] = mod

            elif kind == "swift.enum.case" and precise.startswith("c:@E@"):
                parts = precise.split("@")
                if len(parts) >= 4 and parts[1] == "E":
                    c_name = parts[2]
                    case_name = sym.get("pathComponents", [])[-1] if sym.get("pathComponents") else ""
                    if c_name in enums and case_name:
                        enums[c_name]["cases"].append(case_name)

    # Generate Swift code to extract raw values
    modules_needed = set()
    for info in enums.values():
        modules_needed.add(info["owner_module"])

    swift_lines = [f"import {m}" for m in sorted(modules_needed)]
    for c_name, info in sorted(enums.items()):
        for case_name in info["cases"]:
            swift_lines.append(
                f'print("{c_name}.{case_name}=\\({info["swift_path"]}.{case_name}.rawValue)")'
            )

    # Run Swift to get values
    swift_code = "\n".join(swift_lines)
    try:
        result = subprocess.run(
            ["swift", "-sdk", SDK, "-"],
            input=swift_code, capture_output=True, text=True, timeout=120,
        )
        if result.returncode != 0:
            print(f"  Warning: Swift enum extraction failed: {result.stderr[:200]}", file=sys.stderr)
            return enums

        # Parse output
        raw_values = {}
        for line in result.stdout.strip().split("\n"):
            if "=" in line:
                key, val = line.split("=", 1)
                raw_values[key] = int(val)

        # Attach values to enum cases
        for c_name, info in enums.items():
            valued_cases = []
            for case_name in info["cases"]:
                key = f"{c_name}.{case_name}"
                if key in raw_values:
                    valued_cases.append((case_name, raw_values[key]))
            info["cases"] = valued_cases

        print(f"  Extracted {len(raw_values)} enum case values from {len(enums)} enums", file=sys.stderr)

    except (subprocess.TimeoutExpired, FileNotFoundError) as e:
        print(f"  Warning: Swift enum extraction failed: {e}", file=sys.stderr)

    return enums


def extract_symbolgraph(module_name):
    """Run swift-symbolgraph-extract and return parsed JSON."""
    SG_CACHE.mkdir(parents=True, exist_ok=True)
    outpath = SG_CACHE / f"{module_name}.symbols.json"

    if not outpath.exists() or outpath.stat().st_size == 0:
        print(f"  Extracting {module_name} symbol graph...", file=sys.stderr)
        subprocess.run([
            "xcrun", "swift-symbolgraph-extract",
            "-module-name", module_name,
            "-target", TARGET,
            "-sdk", SDK,
            "-output-dir", str(SG_CACHE),
        ], check=True, capture_output=True)

    with open(outpath) as f:
        return json.load(f)


def map_swift_type(frags, typedef_map=None, enum_type_map=None, class_type_map=None, proto_type_map=None):
    """Map declaration fragments to a Zig type string.

    For nested Swift types like NSControl.StateValue, the symbol graph emits
    two typeIdentifier fragments: the parent class (NSControl) and the leaf
    type (StateValue with c:@T@NSControlStateValue).  We always pick the
    *last* typeIdentifier because that's the actual resolved type.
    """
    if typedef_map is None:
        typedef_map = {}
    if enum_type_map is None:
        enum_type_map = {}
    if class_type_map is None:
        class_type_map = {}
    if proto_type_map is None:
        proto_type_map = {}
    is_nullable = False
    is_collection = False
    main_type = None
    main_precise = None

    for f in frags:
        kind = f.get("kind", "")
        spelling = f.get("spelling", "")

        if "?" in spelling:
            is_nullable = True
        if "[" in spelling:
            is_collection = True

        # Always overwrite — last typeIdentifier wins (handles nested types)
        if kind == "typeIdentifier":
            main_type = spelling
            main_precise = f.get("preciseIdentifier", "")

        # AnyObject / Any appear as keywords, not typeIdentifiers
        if kind == "keyword" and spelling in ("Any", "AnyObject"):
            main_type = spelling
            main_precise = ""

    # Also check text fragments for AnyObject? (e.g. property `: AnyObject? { get set }`)
    if main_type is None:
        full_text = " ".join(f.get("spelling", "") for f in frags)
        if "AnyObject" in full_text:
            main_type = "AnyObject"
            main_precise = ""
            if "?" in full_text:
                is_nullable = True

    if main_type is None:
        return "void"

    # Swift collections ([T], Set<T>, [K:V]) → NSArray/NSSet/NSDictionary → Object
    if is_collection:
        return "?*anyopaque" if is_nullable else "Object"

    # Direct map (Swift primitives, geometry, etc.)
    if main_type in SWIFT_TYPE_MAP:
        zig = SWIFT_TYPE_MAP[main_type]
        if is_nullable and zig in ("Any", "AnyObject", "AnyClass", "Object"):
            return f"?{zig}"
        if is_nullable and zig == "objc.NSString":
            return "?objc.NSString"
        if zig == "OpaquePointer":
            return zig  # already nullable
        return zig

    # Swift bridged types (Data↔NSData, URL↔NSURL, pointer types) — matched by precise ID
    if main_precise and main_precise in SWIFT_BRIDGED_TYPES:
        mapped = SWIFT_BRIDGED_TYPES[main_precise]
        if mapped.startswith("c:objc(cs)"):
            # ObjC class — resolve through class_type_map
            if mapped in class_type_map:
                cls_name = class_type_map[mapped]
                return f"?{cls_name}" if is_nullable else cls_name
            return "?*anyopaque" if is_nullable else "Object"
        else:
            # Direct alias name (e.g. UnsafeMutableRawPointer)
            return f"?{mapped}" if is_nullable else mapped

    # Opaque C types (CGColor, CGImage, etc.)
    if main_type in OPAQUE_TYPES:
        return "?*anyopaque"

    # ObjC class — use typed struct name if available
    if main_precise and main_precise.startswith("c:objc(cs)"):
        if main_precise in class_type_map:
            cls_name = class_type_map[main_precise]
            return f"?{cls_name}" if is_nullable else cls_name
        return "?*anyopaque" if is_nullable else "Object"

    # ObjC protocol — use typed alias if available
    if main_precise and main_precise.startswith("c:objc(pl)"):
        if main_precise in proto_type_map:
            proto_name = proto_type_map[main_precise]
            return f"?{proto_name}" if is_nullable else proto_name
        return "?*anyopaque" if is_nullable else "*anyopaque"

    # ObjC enum (NS_ENUM / NS_OPTIONS)
    if main_precise and main_precise.startswith("c:@E@"):
        c_name = main_precise[5:]
        if c_name in enum_type_map:
            return enum_type_map[c_name]
        return "objc.NSInteger"

    # C typedef (NS_TYPED_EXTENSIBLE_ENUM etc.)
    if main_precise and main_precise.startswith("c:@T@"):
        td_name = main_precise[len("c:@T@"):]
        if td_name in typedef_map:
            return typedef_map[td_name]
        # Most remaining typedefs are NSString* (pasteboard types, notification names, etc.)
        return "objc.NSString" if not is_nullable else "?*anyopaque"

    # NS/UI types without precise — likely objects
    if main_type.startswith("NS") or main_type.startswith("UI"):
        return "?*anyopaque" if is_nullable else "Object"

    # Array/Dict/Set → Object
    if main_type in ("Array", "Set", "Dictionary"):
        return "?*anyopaque" if is_nullable else "Object"

    # Unknown
    return "?*anyopaque"


def extract_type_from_property_frags(frags):
    """Extract type fragments from a property declaration."""
    type_frags = []
    found_colon = False
    for f in frags:
        spelling = f.get("spelling", "")
        if not found_colon:
            if ":" in spelling and f.get("kind") == "text":
                found_colon = True
                after = spelling.split(":", 1)[1]
                if after.strip():
                    type_frags.append({"kind": "text", "spelling": after})
            continue
        if spelling.strip() in ("{", "}") or (f.get("kind") == "keyword" and spelling in ("get", "set")):
            continue
        type_frags.append(f)
    return type_frags


def extract_arg_type_frags(param_frags):
    """Extract type fragments from a parameter declaration."""
    type_frags = []
    found_colon = False
    for f in param_frags:
        if f.get("spelling", "").strip() == ":":
            found_colon = True
            continue
        if found_colon:
            type_frags.append(f)
    return type_frags


def parse_all_modules(module_names):
    """Parse multiple modules, resolving cross-module references.
    Returns {module_name: {classes, enums}} for each module."""

    # Determine full set of modules to extract
    all_modules = set()
    for name in module_names:
        all_modules.add(name)
        # Auto-add Foundation for AppKit/UIKit
        if name in ("AppKit", "UIKit"):
            all_modules.add("Foundation")

    # Extract all symbol graphs
    graphs = {}
    for mod in sorted(all_modules):
        graphs[mod] = extract_symbolgraph(mod)
        print(f"  {mod}: {len(graphs[mod]['symbols'])} symbols", file=sys.stderr)

    # Build global class registry (precise → module)
    global_classes = {}  # precise_id → (module_name, class_name)
    for mod, sg in graphs.items():
        for sym in sg["symbols"]:
            if sym["kind"]["identifier"] == "swift.class":
                precise = sym["identifier"]["precise"]
                if precise.startswith("c:objc(cs)"):
                    m = re.match(r'c:objc\(cs\)(\w+)', precise)
                    objc_name = m.group(1) if m else sym["names"]["title"]
                    global_classes[precise] = (mod, objc_name)

    # Build global inheritance map
    global_inherits = {}  # child_precise → parent_precise
    for mod, sg in graphs.items():
        for r in sg["relationships"]:
            if r["kind"] == "inheritsFrom":
                global_inherits[r["source"]] = r["target"]

    # Build typedef map from rawValue init signatures
    typedef_map = _build_typedef_map(graphs)
    print(f"  Resolved {len(typedef_map)} C typedef underlying types", file=sys.stderr)

    # Build enum map (extract all NS_ENUM definitions and raw values)
    enum_map = _build_enum_map(graphs)

    # Build per-module enum type maps: c:@E@Name → Zig type path
    # Cross-module references get a module prefix (e.g. Foundation.NSRectEdge)
    enum_type_maps = {}  # module → {c_name → zig_type}
    for mod in sorted(all_modules):
        etm = {}
        for c_name, info in enum_map.items():
            if not info["cases"]:
                continue
            swift_name = info["swift_name"]
            zig_name = f'@"{swift_name}"' if swift_name in ZIG_KEYWORDS else swift_name
            enum_mod = info["owner_module"]
            if info["owner_class"]:
                local_path = f'{info["owner_class"]}.{zig_name}'
            else:
                local_path = zig_name
            if enum_mod != mod:
                etm[c_name] = f"{enum_mod}.{local_path}"
            else:
                etm[c_name] = local_path
        enum_type_maps[mod] = etm

    # Module dependency map — derived from cross-module Super references.
    # If class X in module A has Super in module B, then A depends on B.
    module_deps = {mod: {mod} for mod in all_modules}
    for mod, sg in graphs.items():
        for sym in sg["symbols"]:
            precise = sym["identifier"]["precise"]
            if precise.startswith("c:objc(cs)"):
                parent = global_inherits.get(precise)
                if parent and parent in global_classes:
                    parent_mod = global_classes[parent][0]
                    if parent_mod != mod and parent_mod in all_modules:
                        module_deps[mod].add(parent_mod)

    # Collect protocols: both defined as symbols and referenced in signatures.
    # Some protocols (e.g. NSObjectProtocol from ObjectiveC module) are only
    # referenced, not defined, in the extracted modules' symbol graphs.
    global_protos = {}  # precise → (module, swift_name)
    for mod, sg in graphs.items():
        # Protocols defined as symbols
        for sym in sg["symbols"]:
            p = sym["identifier"]["precise"]
            if p.startswith("c:objc(pl)") and sym["kind"]["identifier"] == "swift.protocol":
                swift_name = sym.get("names", {}).get("title", p[10:])
                global_protos.setdefault(p, (mod, swift_name))
        # Protocols only referenced in fragments (not defined in our modules)
        for sym in sg["symbols"]:
            fs = sym.get("functionSignature", {})
            all_frags = list(fs.get("returns", []))
            for param in fs.get("parameters", []):
                all_frags.extend(param.get("declarationFragments", []))
            all_frags.extend(sym.get("declarationFragments", []))
            for f in all_frags:
                p = f.get("preciseIdentifier", "")
                if p.startswith("c:objc(pl)") and p not in global_protos:
                    global_protos[p] = (mod, f["spelling"])

    proto_type_maps = {}
    for mod in sorted(all_modules):
        ptm = {}
        allowed = module_deps[mod]
        for precise, (proto_mod, proto_name) in global_protos.items():
            if proto_mod not in allowed:
                continue
            zig_name = f'@"{proto_name}"' if proto_name in ZIG_KEYWORDS else proto_name
            if proto_mod == mod:
                ptm[precise] = zig_name
            else:
                ptm[precise] = f"{proto_mod}.{zig_name}"
        proto_type_maps[mod] = ptm

    # First pass: process modules to discover which classes generate structs
    results = {}
    for mod in sorted(all_modules):
        results[mod] = process_module(mod, graphs[mod], global_classes, global_inherits,
                                       typedef_map, enum_type_maps[mod], class_type_map={},
                                       proto_type_map=proto_type_maps[mod])

    # Build set of classes that have generated structs (have methods or properties)
    generated_classes = {}  # objc_name → module
    for mod, classes in results.items():
        for cls_name, cls in classes.items():
            if cls["methods"] or cls["properties"] or cls["class_methods"]:
                generated_classes[cls_name] = mod

    # Build per-module class type maps: c:objc(cs)Name → Zig type
    # Only include classes from the current module or its dependencies.
    class_type_maps = {}
    for mod in sorted(all_modules):
        ctm = {}
        allowed = module_deps[mod]
        for precise, (cls_mod, objc_name) in global_classes.items():
            if objc_name not in generated_classes:
                continue  # no struct — fall back to Object
            if cls_mod not in allowed:
                continue  # can't reference this module
            if cls_mod == mod:
                ctm[precise] = objc_name
            else:
                ctm[precise] = f"{cls_mod}.{objc_name}"
        class_type_maps[mod] = ctm

    # Second pass: re-process with class type maps for proper typed references
    results = {}
    for mod in sorted(all_modules):
        results[mod] = process_module(mod, graphs[mod], global_classes, global_inherits,
                                       typedef_map, enum_type_maps[mod], class_type_maps[mod],
                                       proto_type_maps[mod])

    return results, enum_map, proto_type_maps


def process_module(module_name, sg, global_classes, global_inherits, typedef_map, enum_type_map, class_type_map, proto_type_map=None):
    """Process a single module's symbol graph into classes dict."""
    symbols = sg["symbols"]
    relationships = sg["relationships"]

    classes = {}

    # First pass: collect classes
    for sym in symbols:
        kind = sym["kind"]["identifier"]
        precise = sym["identifier"]["precise"]
        title = sym.get("names", {}).get("title", "")

        if kind == "swift.class" and precise.startswith("c:objc(cs)"):
            # Use ObjC name from precise, not Swift title (handles nested types like NSImage.SymbolConfiguration)
            objc_name = re.match(r'c:objc\(cs\)(\w+)', precise).group(1)
            super_precise = global_inherits.get(precise, "")
            super_info = global_classes.get(super_precise)
            super_name = super_info[1] if super_info else None
            super_module = super_info[0] if super_info else None

            classes[objc_name] = {
                "precise": precise,
                "methods": [],
                "class_methods": [],
                "properties": [],
                "super": super_name,
                "super_module": super_module,
            }

    # Second pass: collect members
    for sym in symbols:
        kind = sym["kind"]["identifier"]
        precise = sym["identifier"]["precise"]

        if kind in ("swift.method", "swift.type.method", "swift.init"):
            info = _parse_method(sym, typedef_map, enum_type_map, class_type_map, proto_type_map)
            if info and info["class"] in classes:
                cls = classes[info["class"]]
                entry = (info["selector"], info["ret"], info["args"])
                if info["is_class"]:
                    cls["class_methods"].append(entry)
                else:
                    cls["methods"].append(entry)

        elif kind == "swift.property":
            info = _parse_property(sym, is_class_prop=False, typedef_map=typedef_map, enum_type_map=enum_type_map, class_type_map=class_type_map, proto_type_map=proto_type_map)
            if info and info["class"] in classes:
                classes[info["class"]]["properties"].append(info)

        elif kind == "swift.type.property":
            info = _parse_property(sym, is_class_prop=True, typedef_map=typedef_map, enum_type_map=enum_type_map, class_type_map=class_type_map, proto_type_map=proto_type_map)
            if info and info["class"] in classes:
                cls = classes[info["class"]]
                cls["class_methods"].append((info["getter"], info["type"], []))
                if not info["readonly"] and info.get("setter"):
                    cls["class_methods"].append((info["setter"], "void", [info["type"]]))

    return classes


def _parse_method(sym, typedef_map, enum_type_map=None, class_type_map=None, proto_type_map=None):
    """Parse a method/init symbol into selector, ret, args."""
    precise = sym["identifier"]["precise"]
    m = re.match(r'c:objc\(cs\)(\w+)\((im|cm)\)(.+)', precise)
    if not m:
        return None

    class_name = m.group(1)
    is_class = m.group(2) == "cm"
    selector = m.group(3)

    func_sig = sym.get("functionSignature", {})
    ret_frags = func_sig.get("returns", [])
    ret_type = map_swift_type(ret_frags, typedef_map, enum_type_map, class_type_map, proto_type_map) if ret_frags else "void"

    # Swift inits are ObjC class factory methods
    if sym["kind"]["identifier"] == "swift.init":
        ret_type = "Object"
        is_class = True

    arg_types = []
    for param in func_sig.get("parameters", []):
        type_frags = extract_arg_type_frags(param.get("declarationFragments", []))
        arg_types.append(map_swift_type(type_frags, typedef_map, enum_type_map, class_type_map, proto_type_map))

    return {"class": class_name, "selector": selector, "is_class": is_class,
            "ret": ret_type, "args": arg_types}


def _parse_property(sym, is_class_prop, typedef_map=None, enum_type_map=None, class_type_map=None, proto_type_map=None):
    """Parse a property symbol."""
    precise = sym["identifier"]["precise"]
    pat = r'c:objc\(cs\)(\w+)\((py|cpy)\)(\w+)'
    m = re.match(pat, precise)
    if not m:
        return None

    class_name = m.group(1)
    prop_name = m.group(3)
    frags = sym.get("declarationFragments", [])
    decl = "".join(f.get("spelling", "") for f in frags)

    is_readonly = "{ get }" in decl and "set" not in decl
    type_frags = extract_type_from_property_frags(frags)
    prop_type = map_swift_type(type_frags, typedef_map, enum_type_map, class_type_map, proto_type_map)

    getter = prop_name
    setter = None if is_readonly else f"set{prop_name[0].upper()}{prop_name[1:]}:"

    return {"class": class_name, "name": prop_name, "type": prop_type,
            "readonly": is_readonly, "getter": getter, "setter": setter,
            "is_class": is_class_prop}


def generate_zig(module_name, classes, all_results, enum_map, proto_type_map):
    """Generate Zig source for a module."""
    out = []
    out.append(f"//! {module_name} bindings for Zig — AUTO-GENERATED from Swift symbol graph")
    out.append(f"//! Run: python3 scripts/gen_framework.py {module_name}")
    out.append("")
    out.append('const std = @import("std");')
    out.append('const objc = @import("objc.zig");')
    out.append("")
    out.append("const Object = objc.Object;")
    out.append("pub const Selector = objc.Sel;")
    out.append("pub const Any = *anyopaque;")
    out.append("pub const AnyObject = Object;")
    out.append("pub const AnyClass = Object;")
    out.append("pub const OpaquePointer = ?*anyopaque;")
    out.append("pub const UnsafeMutableRawPointer = *anyopaque;")
    out.append("pub const UnsafeRawPointer = *const anyopaque;")
    out.append("pub const UnsafeMutablePointer = *anyopaque;")
    out.append("pub const UnsafePointer = *const anyopaque;")
    out.append("pub const TimeInterval = f64;")
    out.append("pub const pid_t = std.c_int;")
    out.append("")

    # Import other generated modules if referenced
    deps_needed = set()
    for cls in classes.values():
        sm = cls.get("super_module")
        if sm and sm != module_name and sm in all_results:
            deps_needed.add(sm)
    for dep in sorted(deps_needed):
        out.append(f'pub const {dep} = @import("{dep}.zig");')
    if deps_needed:
        out.append("")

    # Geometry types — defined in Foundation, re-exported from AppKit
    if module_name == "Foundation":
        out.append("pub const NSPoint = extern struct { x: f64 = 0, y: f64 = 0 };")
        out.append("pub const NSSize = extern struct { width: f64 = 0, height: f64 = 0 };")
        out.append("pub const NSRect = extern struct {")
        out.append("    origin: NSPoint = .{},")
        out.append("    size: NSSize = .{},")
        out.append("    pub fn make(x: f64, y: f64, w: f64, h: f64) NSRect {")
        out.append('        return .{ .origin = .{ .x = x, .y = y }, .size = .{ .width = w, .height = h } };')
        out.append("    }")
        out.append("};")
        out.append("pub const NSRange = extern struct { location: c_ulong, length: c_ulong };")
        out.append("pub const NSEdgeInsets = extern struct { top: f64, left: f64, bottom: f64, right: f64 };")
        out.append("")
    elif "Foundation" in deps_needed:
        out.append("pub const NSPoint = Foundation.NSPoint;")
        out.append("pub const NSSize = Foundation.NSSize;")
        out.append("pub const NSRect = Foundation.NSRect;")
        out.append("pub const NSRange = Foundation.NSRange;")
        out.append("pub const NSEdgeInsets = Foundation.NSEdgeInsets;")
        out.append("")

    # Standalone enums (not owned by any class)
    for c_name, info in sorted(enum_map.items()):
        if info["owner_module"] != module_name:
            continue
        if info["owner_class"] is not None:
            continue  # will be emitted inside the class
        if not info["cases"]:
            continue
        out.append(_gen_enum_decl(info["swift_name"], info["cases"]))
        out.append("")

    # Protocol type aliases (protocols are opaque pointers at the ABI level)
    # Skip protocols that share a name with a generated class struct.
    class_names = {cn for cn, cls in classes.items()
                   if cls["methods"] or cls["properties"] or cls["class_methods"]}
    emitted_protos = set()
    for precise, zig_name in sorted(proto_type_map.items()):
        # Only emit local protocols (not cross-module qualified ones)
        if "." not in zig_name and zig_name not in emitted_protos and zig_name not in class_names:
            out.append(f"pub const {zig_name} = *anyopaque;")
            emitted_protos.add(zig_name)
    if emitted_protos:
        out.append("")

    # Build index of class-owned enums for this module
    class_enums = defaultdict(list)  # class_name → list of enum info
    for c_name, info in enum_map.items():
        if info["owner_module"] == module_name and info["owner_class"] and info["cases"]:
            class_enums[info["owner_class"]].append(info)

    # All classes that have methods
    generated_classes = set()
    for class_name in sorted(classes):
        cls = classes[class_name]
        code = _gen_class(class_name, cls, classes, all_results, module_name,
                          class_enums.get(class_name, []))
        if code:
            out.append(code)
            out.append("")
            generated_classes.add(class_name)

    # Helpers
    out.append("pub fn viewObj(val: anytype) Object {")
    out.append("    const T = @TypeOf(val);")
    out.append("    if (T == Object) return val;")
    out.append('    if (@hasField(T, "obj")) return val.obj;')
    out.append('    @compileError("cannot extract obj from " ++ @typeName(T));')
    out.append("}")
    out.append("")
    out.append('pub fn init(comptime class_name: [*:0]const u8) Object {')
    out.append('    return objc.msgSend(Object, objc.msgSendClass(Object, class_name, "alloc", .{}), "init", .{});')
    out.append("}")
    out.append("")
    out.append("pub fn nsArray(items: []const Object) Object {")
    out.append('    const arr = objc.msgSendClass(Object, "NSMutableArray", "arrayWithCapacity:", .{@as(c_ulong, items.len)});')
    out.append('    for (items) |item| objc.msgSend(void, arr, "addObject:", .{item});')
    out.append("    return arr;")
    out.append("}")
    out.append("")
    out.append('pub fn fmtZ(comptime fmt_str: []const u8, args: anytype, buf: []u8) [*:0]const u8 {')
    out.append('    const msg = std.fmt.bufPrint(buf[0 .. buf.len - 1], fmt_str, args) catch "?";')
    out.append("    buf[msg.len] = 0;")
    out.append("    return @ptrCast(buf[0..msg.len :0]);")
    out.append("}")
    out.append("")

    return "\n".join(out)


def _gen_enum_decl(swift_name, cases, indent=""):
    """Generate a Zig enum(i64) declaration from (name, value) pairs."""
    zig_name = f'@"{swift_name}"' if swift_name in ZIG_KEYWORDS else swift_name
    lines = [f"{indent}pub const {zig_name} = enum(i64) {{"]
    for case_name, value in sorted(cases, key=lambda c: c[1]):
        cn = f'@"{case_name}"' if case_name in ZIG_KEYWORDS else case_name
        lines.append(f"{indent}    {cn} = {value},")
    lines.append(f"{indent}}};")
    return "\n".join(lines)


def _gen_class(name, cls, module_classes, all_results, module_name, class_enums=None):
    """Generate one class struct."""
    method_entries = []
    class_entries = []
    seen = set()
    seen_class = set()

    # Properties → method entries
    for prop in cls["properties"]:
        g = prop["getter"]
        if g not in seen and re.match(r'^[a-zA-Z_]\w*$', g):
            seen.add(g)
            method_entries.append((g, prop["type"], []))
        s = prop.get("setter")
        if s and not prop["readonly"] and s not in seen:
            seen.add(s)
            method_entries.append((s, "void", [prop["type"]]))

    # Instance methods
    for sel, ret, args in cls["methods"]:
        if sel in seen or not re.match(r'^[a-zA-Z_]\w*:?(?:\w+:)*$', sel):
            continue
        seen.add(sel)
        method_entries.append((sel, ret, args))

    # Class methods
    for sel, ret, args in cls["class_methods"]:
        if sel in seen_class or not re.match(r'^[a-zA-Z_]\w*:?(?:\w+:)*$', sel):
            continue
        seen_class.add(sel)
        class_entries.append((sel, ret, args))

    if not method_entries and not class_entries:
        return None

    # Resolve Super — could be in this module or a dep
    super_name = cls.get("super")
    super_module = cls.get("super_module")
    has_super = False
    super_ref = None

    if super_name:
        if super_name in module_classes and _class_has_methods(module_classes[super_name]):
            has_super = True
            super_ref = super_name
        elif super_module and super_module != module_name and super_module in all_results:
            dep_classes = all_results[super_module]
            if super_name in dep_classes and _class_has_methods(dep_classes[super_name]):
                has_super = True
                super_ref = f"{super_module}.{super_name}"

    lines = [f"pub const {name} = struct {{"]

    if method_entries:
        lines.append("    obj: Object,")
        lines.append("")
        if has_super:
            lines.append(f"    pub const Super = {super_ref};")
        lines.append("    pub const methods = .{")
        for sel, ret, args in sorted(method_entries):
            a = " " + ", ".join(args) + " " if args else ""
            lines.append(f'        .{{ "{sel}", {ret}, .{{{a}}} }},')
        lines.append("    };")
        lines.append("")
        if has_super:
            lines.append(f"    pub fn send(self: {name}, comptime selector: [*:0]const u8, args: anytype) objc.SendReturnChain(@This(), selector) {{")
            lines.append("        return objc.typedSendChain(@This(), self.obj, selector, args);")
        else:
            lines.append(f"    pub fn send(self: {name}, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {{")
            lines.append("        return objc.typedSend(methods, self.obj, selector, args);")
        lines.append("    }")

    if class_entries:
        lines.append("")
        lines.append("    pub const class_methods = .{")
        for sel, ret, args in sorted(class_entries):
            a = " " + ", ".join(args) + " " if args else ""
            lines.append(f'        .{{ "{sel}", {ret}, .{{{a}}} }},')
        lines.append("    };")
        lines.append("")
        lines.append(f'    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {{')
        lines.append(f'        return objc.typedClassSend("{name}", class_methods, selector, args);')
        lines.append("    }")

    # Class-owned enums
    if class_enums:
        lines.append("")
        for info in sorted(class_enums, key=lambda e: e["swift_name"]):
            lines.append(_gen_enum_decl(info["swift_name"], info["cases"], indent="    "))

    lines.append("};")
    return "\n".join(lines)


def _class_has_methods(cls):
    return bool(cls["methods"] or cls["properties"])


# ── Factory injections ─────────────────────────────────────────────────
# Hand-written convenience functions injected into generated structs.
# Keyed by (module, class_name) → Zig code to inject before the closing };

FACTORIES = {
    ("AppKit", "NSApplication"): '    pub fn shared() NSApplication { return .{ .obj = objc.msgSendClass(Object, "NSApplication", "sharedApplication", .{}) }; }',
    ("AppKit", "NSWindow"): '    pub const Style = struct { titled: bool = true, closable: bool = true, miniaturizable: bool = true, resizable: bool = true };\n    pub const Config = struct { title: [*:0]const u8 = "Untitled", x: f64 = 200, y: f64 = 200, width: f64 = 600, height: f64 = 400, style: Style = .{} };\n    pub fn create(cfg: Config) NSWindow { var mask: c_ulong = 0; if (cfg.style.titled) mask |= (1 << 0); if (cfg.style.closable) mask |= (1 << 1); if (cfg.style.miniaturizable) mask |= (1 << 2); if (cfg.style.resizable) mask |= (1 << 3); const alloc = objc.msgSendClass(Object, "NSWindow", "alloc", .{}); const win = objc.msgSend(Object, alloc, "initWithContentRect:styleMask:backing:defer:", .{ NSRect.make(cfg.x, cfg.y, cfg.width, cfg.height), mask, @as(c_ulong, 2), @as(u8, 0) }); objc.msgSend(void, win, "setTitle:", .{objc.nsString(cfg.title)}); objc.msgSend(void, win, "center", .{}); return .{ .obj = win }; }',
    ("AppKit", "NSMenu"): '    pub fn create(title: [*:0]const u8) NSMenu { return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSMenu", "alloc", .{}), "initWithTitle:", .{objc.nsString(title)}) }; }\n    pub fn addItem(self: NSMenu, item: Object) void { objc.msgSend(void, self.obj, "addItem:", .{item}); }\n    pub fn addItemWithTitle(self: NSMenu, title: [*:0]const u8, action: ?Selector, key: [*:0]const u8) Object { return objc.msgSend(Object, self.obj, "addItemWithTitle:action:keyEquivalent:", .{ objc.nsString(title), action, objc.nsString(key) }); }',
    ("AppKit", "NSMenuItem"): '    pub fn separator() Object { return objc.msgSendClass(Object, "NSMenuItem", "separatorItem", .{}); }\n    pub fn create() NSMenuItem { return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSMenuItem", "alloc", .{}), "init", .{}) }; }',
    ("AppKit", "NSToolbarItem"): '    pub fn create(identifier: Object) NSToolbarItem { return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSToolbarItem", "alloc", .{}), "initWithItemIdentifier:", .{identifier}) }; }',
    ("AppKit", "NSToolbar"): '    pub fn create(identifier: [*:0]const u8) NSToolbar { return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSToolbar", "alloc", .{}), "initWithIdentifier:", .{objc.nsString(identifier)}) }; }',
    ("AppKit", "NSButton"): '    pub fn create(title: [*:0]const u8, target: Object, action: Selector) NSButton { const btn = objc.msgSendClass(Object, "NSButton", "buttonWithTitle:target:action:", .{ objc.nsString(title), target, action }); objc.msgSend(void, btn, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = btn }; }\n    pub fn createCheckbox(title: [*:0]const u8, target: Object, action: Selector) NSButton { const btn = objc.msgSendClass(Object, "NSButton", "checkboxWithTitle:target:action:", .{ objc.nsString(title), target, action }); objc.msgSend(void, btn, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = btn }; }\n    pub fn createImage(symbol: [*:0]const u8, desc: [*:0]const u8, target: Object, action: Selector) NSButton { const img = objc.msgSendClass(Object, "NSImage", "imageWithSystemSymbolName:accessibilityDescription:", .{ objc.nsString(symbol), objc.nsString(desc) }); const btn = objc.msgSendClass(Object, "NSButton", "buttonWithImage:target:action:", .{ img, target, action }); objc.msgSend(void, btn, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = btn }; }',
    ("AppKit", "NSTextField"): '    pub fn createLabel(text: [*:0]const u8) NSTextField { const label = objc.msgSendClass(Object, "NSTextField", "labelWithString:", .{objc.nsString(text)}); objc.msgSend(void, label, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = label }; }\n    pub fn createInput(placeholder: [*:0]const u8) NSTextField { const field = objc.msgSend(Object, objc.msgSendClass(Object, "NSTextField", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 200, 24)}); objc.msgSend(void, field, "setPlaceholderString:", .{objc.nsString(placeholder)}); objc.msgSend(void, field, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = field }; }\n    pub fn stringValueZ(self: NSTextField) ?[*:0]const u8 { const ns_str = objc.msgSend(Object, self.obj, "stringValue", .{}); return objc.toZigString(ns_str); }\n    pub fn setLineBreakMode(self: NSTextField, mode: i64) void { const cell = objc.msgSend(Object, self.obj, "cell", .{}); objc.msgSend(void, cell, "setLineBreakMode:", .{mode}); }',
    ("AppKit", "NSImageView"): '    pub fn createWithSymbol(name: [*:0]const u8, desc: [*:0]const u8) NSImageView { const img = objc.msgSendClass(Object, "NSImage", "imageWithSystemSymbolName:accessibilityDescription:", .{ objc.nsString(name), objc.nsString(desc) }); const iv = objc.msgSendClass(Object, "NSImageView", "imageViewWithImage:", .{img}); objc.msgSend(void, iv, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = iv }; }',
    ("AppKit", "NSScrollView"): '    pub fn create() NSScrollView { const v = objc.msgSend(Object, objc.msgSendClass(Object, "NSScrollView", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 0, 0)}); objc.msgSend(void, v, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); objc.msgSend(void, v, "setHasVerticalScroller:", .{@as(u8, 1)}); objc.msgSend(void, v, "setAutohidesScrollers:", .{@as(u8, 1)}); return .{ .obj = v }; }',
    ("AppKit", "NSStackView"): '    pub fn create(orientation: NSUserInterfaceLayoutOrientation) NSStackView { const v = objc.msgSend(Object, objc.msgSendClass(Object, "NSStackView", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 0, 0)}); objc.msgSend(void, v, "setOrientation:", .{@intFromEnum(orientation)}); objc.msgSend(void, v, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = v }; }',
    ("AppKit", "NSSegmentedControl"): '    pub fn create(frame: NSRect) NSSegmentedControl { const seg = objc.msgSend(Object, objc.msgSendClass(Object, "NSSegmentedControl", "alloc", .{}), "initWithFrame:", .{frame}); objc.msgSend(void, seg, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = seg }; }',
    ("AppKit", "NSBox"): '    pub fn createSeparator() NSBox { const b = objc.msgSend(Object, objc.msgSendClass(Object, "NSBox", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 0, 1)}); objc.msgSend(void, b, "setBoxType:", .{@as(i64, 2)}); objc.msgSend(void, b, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = b }; }',
    ("AppKit", "NSAlert"): '    pub fn create() NSAlert { return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSAlert", "alloc", .{}), "init", .{}) }; }',
    ("Foundation", "NSMutableAttributedString"): '    pub fn create(string: Object) NSMutableAttributedString { return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSMutableAttributedString", "alloc", .{}), "initWithString:", .{string}) }; }',
}

# Standalone types to inject before helpers section
STANDALONE_TYPES = {
    "AppKit": """pub const NSToolbarItemIdentifier = struct {
    pub const flexibleSpace = "NSToolbarFlexibleSpaceItem";
    pub const space = "NSToolbarSpaceItem";
    pub const showColors = "NSToolbarShowColorsItem";
    pub const showFonts = "NSToolbarShowFontsItem";
    pub const print = "NSToolbarPrintItem";
};
pub const NSArrayObj = struct {
    obj: Object,

    pub const methods = .{ .{ "count", c_ulong, .{} }, .{ "objectAtIndex:", Object, .{ c_ulong } }, .{ "firstObject", Object, .{} }, .{ "lastObject", Object, .{} }, .{ "containsObject:", objc.BOOL, .{ Object } } };
    pub fn send(self: NSArrayObj, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) { return objc.typedSend(methods, self.obj, selector, args); }
};
pub const CALayer = struct {
    obj: Object,

    pub const methods = .{ .{ "setBackgroundColor:", void, .{ ?*anyopaque } }, .{ "setBorderColor:", void, .{ ?*anyopaque } }, .{ "setBorderWidth:", void, .{ objc.CGFloat } }, .{ "setCornerRadius:", void, .{ objc.CGFloat } }, .{ "setMasksToBounds:", void, .{ objc.BOOL } }, .{ "setShadowColor:", void, .{ ?*anyopaque } }, .{ "setShadowOpacity:", void, .{ f32 } }, .{ "setShadowRadius:", void, .{ objc.CGFloat } }, .{ "setShadowOffset:", void, .{ NSSize } }, .{ "setOpacity:", void, .{ f32 } }, .{ "setHidden:", void, .{ objc.BOOL } } };
    pub fn send(self: CALayer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) { return objc.typedSend(methods, self.obj, selector, args); }
};

""",
}

# NSLayoutConstraint helpers — injected into the struct
LAYOUT_HELPERS = (
    '    pub fn make(item: Object, attr: Attribute, rel: Relation, to_item: ?Object, to_attr: Attribute, mult: f64, constant: f64) Object { return objc.msgSendClass(Object, "NSLayoutConstraint", "constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:", .{ item, @intFromEnum(attr), @intFromEnum(rel), @as(?*anyopaque, if (to_item) |t| @ptrCast(t) else null), @intFromEnum(to_attr), mult, constant }); }\n'
    '    pub fn activate(constraints: []const Object) void { const arr = objc.msgSendClass(Object, "NSMutableArray", "arrayWithCapacity:", .{@as(c_ulong, constraints.len)}); for (constraints) |c| objc.msgSend(void, arr, "addObject:", .{c}); objc.msgSend(void, objc.getClass("NSLayoutConstraint").?, "activateConstraints:", .{arr}); }\n'
    '    pub fn pinWidthEqual(child: Object, parent: Object) void { activate(&.{make(child, .width, .equal, parent, .width, 1.0, 0.0)}); }\n'
    '    pub fn fill(parent: Object, child: Object, inset: f64) void { activate(&.{ make(child, .leading, .equal, parent, .leading, 1.0, inset), make(child, .trailing, .equal, parent, .trailing, 1.0, -inset), make(child, .top, .equal, parent, .top, 1.0, inset), make(child, .bottom, .equal, parent, .bottom, 1.0, -inset) }); }'
)

# Top-level enums that conflict with nested ones in factories
# (Most are now auto-generated inside their owning class, but some
# standalone ones from the symbol graph may duplicate factory-injected ones.)
CONFLICTING_TOPLEVEL = []


def _inject_before_close(content, struct_name, code):
    """Inject code before the closing }; of a struct."""
    idx = content.find(f"pub const {struct_name} = struct {{")
    if idx == -1:
        return content
    start = content.index("{", idx)
    depth, pos = 0, start
    while pos < len(content):
        if content[pos] == "{":
            depth += 1
        elif content[pos] == "}":
            depth -= 1
            if depth == 0:
                return content[:pos] + "\n" + code + "\n" + content[pos:]
        pos += 1
    return content


def _remove_toplevel_enum(content, name):
    """Remove a top-level (non-indented) enum/struct declaration."""
    lines = content.split("\n")
    out, skip = [], False
    for line in lines:
        if line.startswith(f"pub const {name} = ") and not line.startswith("    "):
            skip = True
            continue
        if skip:
            if line.strip() == "};":
                skip = False
                continue
            continue
        out.append(line)
    return "\n".join(out)


def post_process(module_name, content):
    """Inject factories, standalone types, and layout helpers."""
    # Inject factories for this module
    for (mod, cls_name), code in FACTORIES.items():
        if mod == module_name:
            content = _inject_before_close(content, cls_name, code)

    # Inject standalone types
    if module_name in STANDALONE_TYPES:
        hi = content.find("pub fn viewObj")
        if hi != -1:
            content = content[:hi] + STANDALONE_TYPES[module_name] + content[hi:]

    # Inject NSLayoutConstraint helpers
    if module_name == "AppKit":
        content = _inject_before_close(content, "NSLayoutConstraint", LAYOUT_HELPERS)

    # Remove conflicting top-level enums
    for name in CONFLICTING_TOPLEVEL:
        content = _remove_toplevel_enum(content, name)

    return content


def main():
    targets = sys.argv[1:] if len(sys.argv) > 1 else ["AppKit"]
    print("Generating Zig bindings from Swift symbol graphs...", file=sys.stderr)

    all_results, enum_map, proto_type_maps = parse_all_modules(targets)

    out_paths = []
    for mod, classes in sorted(all_results.items()):
        output = generate_zig(mod, classes, all_results, enum_map, proto_type_maps.get(mod, {}))
        output = post_process(mod, output)
        out_path = PROJECT_DIR / "src" / f"{mod}.zig"
        out_path.write_text(output)
        out_paths.append(out_path)
        methods = output.count('.{ "')
        print(f"  → {out_path.name}: {methods} method entries", file=sys.stderr)

    # Format generated files
    print("  Formatting with zig fmt...", file=sys.stderr)
    subprocess.run(["zig", "fmt"] + [str(p) for p in out_paths], check=True)


if __name__ == "__main__":
    main()
