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

SDK = "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"
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
    "Selector": "Sel",
    "NSRect": "NSRect", "CGRect": "NSRect",
    "NSSize": "NSSize", "CGSize": "NSSize",
    "NSPoint": "NSPoint", "CGPoint": "NSPoint",
    "NSRange": "NSRange",
    "NSEdgeInsets": "NSEdgeInsets",
    "TimeInterval": "f64",
    "AnyObject": "Object",
    "Any": "Object",
    "AnyClass": "Object",
    "OpaquePointer": "?*anyopaque",
    "pid_t": "c_int",
}

# Types that are always opaque pointers (C refs, CF types, etc.)
OPAQUE_TYPES = {
    "CGColor", "CGImage", "CGContext", "CGEvent", "CGPath",
    "CGColorSpace", "CGGradient", "CGPattern",
    "SecIdentity", "SecCertificate", "SecTrust",
    "IOSurfaceRef", "CVPixelBuffer",
}


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


def map_swift_type(frags):
    """Map declaration fragments to a Zig type string."""
    # Collect type info
    is_nullable = False
    main_type = None
    main_precise = None

    for f in frags:
        kind = f.get("kind", "")
        spelling = f.get("spelling", "")
        precise = f.get("preciseIdentifier", "")

        if "?" in spelling:
            is_nullable = True

        if kind == "typeIdentifier" and main_type is None:
            main_type = spelling
            main_precise = precise

        if kind == "keyword" and spelling in ("Any", "AnyObject") and main_type is None:
            main_type = spelling
            main_precise = ""

    if main_type is None:
        return "void"

    # Direct map
    if main_type in SWIFT_TYPE_MAP:
        zig = SWIFT_TYPE_MAP[main_type]
        if is_nullable and zig == "Object":
            return "?*anyopaque"
        if is_nullable and zig == "objc.NSString":
            return "?*anyopaque"
        return zig

    # Opaque C types
    if main_type in OPAQUE_TYPES:
        return "?*anyopaque"

    # ObjC class or protocol
    if main_precise and (main_precise.startswith("c:objc(cs)") or
                          main_precise.startswith("c:objc(pl)")):
        return "?*anyopaque" if is_nullable else "Object"

    # ObjC enum
    if main_precise and main_precise.startswith("c:@E@"):
        return "objc.NSInteger"

    # C typedef
    if main_precise and main_precise.startswith("c:@T@"):
        return "?*anyopaque"

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

    # Process each module
    results = {}
    for mod in sorted(all_modules):
        results[mod] = process_module(mod, graphs[mod], global_classes, global_inherits)

    return results


def process_module(module_name, sg, global_classes, global_inherits):
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
            info = _parse_method(sym)
            if info and info["class"] in classes:
                cls = classes[info["class"]]
                entry = (info["selector"], info["ret"], info["args"])
                if info["is_class"]:
                    cls["class_methods"].append(entry)
                else:
                    cls["methods"].append(entry)

        elif kind == "swift.property":
            info = _parse_property(sym, is_class_prop=False)
            if info and info["class"] in classes:
                classes[info["class"]]["properties"].append(info)

        elif kind == "swift.type.property":
            info = _parse_property(sym, is_class_prop=True)
            if info and info["class"] in classes:
                cls = classes[info["class"]]
                cls["class_methods"].append((info["getter"], info["type"], []))
                if not info["readonly"] and info.get("setter"):
                    cls["class_methods"].append((info["setter"], "void", [info["type"]]))

    return classes


def _parse_method(sym):
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
    ret_type = map_swift_type(ret_frags) if ret_frags else "void"

    # Swift inits are ObjC class factory methods
    if sym["kind"]["identifier"] == "swift.init":
        ret_type = "Object"
        is_class = True

    arg_types = []
    for param in func_sig.get("parameters", []):
        type_frags = extract_arg_type_frags(param.get("declarationFragments", []))
        arg_types.append(map_swift_type(type_frags))

    return {"class": class_name, "selector": selector, "is_class": is_class,
            "ret": ret_type, "args": arg_types}


def _parse_property(sym, is_class_prop):
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
    prop_type = map_swift_type(type_frags)

    getter = prop_name
    setter = None if is_readonly else f"set{prop_name[0].upper()}{prop_name[1:]}:"

    return {"class": class_name, "name": prop_name, "type": prop_type,
            "readonly": is_readonly, "getter": getter, "setter": setter,
            "is_class": is_class_prop}


def generate_zig(module_name, classes, all_results):
    """Generate Zig source for a module."""
    out = []
    out.append(f"//! {module_name} bindings for Zig — AUTO-GENERATED from Swift symbol graph")
    out.append(f"//! Run: python3 scripts/gen_framework.py {module_name}")
    out.append("")
    out.append('const std = @import("std");')
    out.append('const objc = @import("objc.zig");')
    out.append("")
    out.append("const Object = objc.Object;")
    out.append("pub const Sel = objc.Sel;")
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

    # All classes that have methods
    generated_classes = set()
    for class_name in sorted(classes):
        cls = classes[class_name]
        code = _gen_class(class_name, cls, classes, all_results, module_name)
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


def _gen_class(name, cls, module_classes, all_results, module_name):
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

    lines.append("};")
    return "\n".join(lines)


def _class_has_methods(cls):
    return bool(cls["methods"] or cls["properties"])


# ── Factory injections ─────────────────────────────────────────────────
# Hand-written convenience functions injected into generated structs.
# Keyed by (module, class_name) → Zig code to inject before the closing };

FACTORIES = {
    ("AppKit", "NSApplication"): '    pub fn shared() NSApplication { return .{ .obj = objc.msgSendClass(Object, "NSApplication", "sharedApplication", .{}) }; }\n    pub const NSApplicationActivationPolicy = enum(i64) { regular = 0, accessory = 1, prohibited = 2 };',
    ("AppKit", "NSWindow"): '    pub const Style = struct { titled: bool = true, closable: bool = true, miniaturizable: bool = true, resizable: bool = true };\n    pub const Config = struct { title: [*:0]const u8 = "Untitled", x: f64 = 200, y: f64 = 200, width: f64 = 600, height: f64 = 400, style: Style = .{} };\n    pub fn create(cfg: Config) NSWindow { var mask: c_ulong = 0; if (cfg.style.titled) mask |= (1 << 0); if (cfg.style.closable) mask |= (1 << 1); if (cfg.style.miniaturizable) mask |= (1 << 2); if (cfg.style.resizable) mask |= (1 << 3); const alloc = objc.msgSendClass(Object, "NSWindow", "alloc", .{}); const win = objc.msgSend(Object, alloc, "initWithContentRect:styleMask:backing:defer:", .{ NSRect.make(cfg.x, cfg.y, cfg.width, cfg.height), mask, @as(c_ulong, 2), @as(u8, 0) }); objc.msgSend(void, win, "setTitle:", .{objc.nsString(cfg.title)}); objc.msgSend(void, win, "center", .{}); return .{ .obj = win }; }\n    pub const NSWindowToolbarStyle = enum(i64) { automatic = 0, expanded = 1, preference = 2, unified = 3, unifiedCompact = 4 };\n    pub const NSWindowTitleVisibility = enum(i64) { visible = 0, hidden = 1 };',
    ("AppKit", "NSMenu"): '    pub fn create(title: [*:0]const u8) NSMenu { return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSMenu", "alloc", .{}), "initWithTitle:", .{objc.nsString(title)}) }; }\n    pub fn addItem(self: NSMenu, item: Object) void { objc.msgSend(void, self.obj, "addItem:", .{item}); }\n    pub fn addItemWithTitle(self: NSMenu, title: [*:0]const u8, action: ?Sel, key: [*:0]const u8) Object { return objc.msgSend(Object, self.obj, "addItemWithTitle:action:keyEquivalent:", .{ objc.nsString(title), action, objc.nsString(key) }); }',
    ("AppKit", "NSMenuItem"): '    pub fn separator() Object { return objc.msgSendClass(Object, "NSMenuItem", "separatorItem", .{}); }\n    pub fn create() NSMenuItem { return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSMenuItem", "alloc", .{}), "init", .{}) }; }',
    ("AppKit", "NSToolbarItem"): '    pub fn create(identifier: Object) NSToolbarItem { return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSToolbarItem", "alloc", .{}), "initWithItemIdentifier:", .{identifier}) }; }',
    ("AppKit", "NSToolbar"): '    pub const NSToolbarDisplayMode = enum(i64) { default = 0, iconAndLabel = 1, iconOnly = 2, labelOnly = 3 };\n    pub fn create(identifier: [*:0]const u8) NSToolbar { return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSToolbar", "alloc", .{}), "initWithIdentifier:", .{objc.nsString(identifier)}) }; }',
    ("AppKit", "NSButton"): '    pub fn create(title: [*:0]const u8, target: Object, action: Sel) NSButton { const btn = objc.msgSendClass(Object, "NSButton", "buttonWithTitle:target:action:", .{ objc.nsString(title), target, action }); objc.msgSend(void, btn, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = btn }; }\n    pub fn createCheckbox(title: [*:0]const u8, target: Object, action: Sel) NSButton { const btn = objc.msgSendClass(Object, "NSButton", "checkboxWithTitle:target:action:", .{ objc.nsString(title), target, action }); objc.msgSend(void, btn, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = btn }; }\n    pub fn createImage(symbol: [*:0]const u8, desc: [*:0]const u8, target: Object, action: Sel) NSButton { const img = objc.msgSendClass(Object, "NSImage", "imageWithSystemSymbolName:accessibilityDescription:", .{ objc.nsString(symbol), objc.nsString(desc) }); const btn = objc.msgSendClass(Object, "NSButton", "buttonWithImage:target:action:", .{ img, target, action }); objc.msgSend(void, btn, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = btn }; }',
    ("AppKit", "NSTextField"): '    pub fn createLabel(text: [*:0]const u8) NSTextField { const label = objc.msgSendClass(Object, "NSTextField", "labelWithString:", .{objc.nsString(text)}); objc.msgSend(void, label, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = label }; }\n    pub fn createInput(placeholder: [*:0]const u8) NSTextField { const field = objc.msgSend(Object, objc.msgSendClass(Object, "NSTextField", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 200, 24)}); objc.msgSend(void, field, "setPlaceholderString:", .{objc.nsString(placeholder)}); objc.msgSend(void, field, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = field }; }\n    pub fn stringValueZ(self: NSTextField) ?[*:0]const u8 { const ns_str = objc.msgSend(Object, self.obj, "stringValue", .{}); return objc.toZigString(ns_str); }\n    pub fn setLineBreakMode(self: NSTextField, mode: i64) void { const cell = objc.msgSend(Object, self.obj, "cell", .{}); objc.msgSend(void, cell, "setLineBreakMode:", .{mode}); }',
    ("AppKit", "NSImageView"): '    pub fn createWithSymbol(name: [*:0]const u8, desc: [*:0]const u8) NSImageView { const img = objc.msgSendClass(Object, "NSImage", "imageWithSystemSymbolName:accessibilityDescription:", .{ objc.nsString(name), objc.nsString(desc) }); const iv = objc.msgSendClass(Object, "NSImageView", "imageViewWithImage:", .{img}); objc.msgSend(void, iv, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = iv }; }',
    ("AppKit", "NSScrollView"): '    pub fn create() NSScrollView { const v = objc.msgSend(Object, objc.msgSendClass(Object, "NSScrollView", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 0, 0)}); objc.msgSend(void, v, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); objc.msgSend(void, v, "setHasVerticalScroller:", .{@as(u8, 1)}); objc.msgSend(void, v, "setAutohidesScrollers:", .{@as(u8, 1)}); return .{ .obj = v }; }',
    ("AppKit", "NSStackView"): '    pub const NSUserInterfaceLayoutOrientation = enum(i64) { horizontal = 0, vertical = 1 };\n    pub const NSStackViewGravity = enum(i64) { top = 1, leading = 1, center = 2, bottom = 3, trailing = 3 };\n    pub fn create(orientation: NSUserInterfaceLayoutOrientation) NSStackView { const v = objc.msgSend(Object, objc.msgSendClass(Object, "NSStackView", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 0, 0)}); objc.msgSend(void, v, "setOrientation:", .{@intFromEnum(orientation)}); objc.msgSend(void, v, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)}); return .{ .obj = v }; }',
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
    '    pub const NSLayoutAttribute = enum(i64) { notAnAttribute = 0, left = 1, right = 2, top = 3, bottom = 4, leading = 5, trailing = 6, width = 7, height = 8, centerX = 9, centerY = 10, lastBaseline = 11, firstBaseline = 12 };\n'
    '    pub const NSLayoutRelation = enum(i64) { lessThanOrEqual = -1, equal = 0, greaterThanOrEqual = 1 };\n'
    '    pub fn make(item: Object, attr: NSLayoutAttribute, rel: NSLayoutRelation, to_item: ?Object, to_attr: NSLayoutAttribute, mult: f64, constant: f64) Object { return objc.msgSendClass(Object, "NSLayoutConstraint", "constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:", .{ item, @intFromEnum(attr), @intFromEnum(rel), @as(?*anyopaque, if (to_item) |t| @ptrCast(t) else null), @intFromEnum(to_attr), mult, constant }); }\n'
    '    pub fn activate(constraints: []const Object) void { const arr = objc.msgSendClass(Object, "NSMutableArray", "arrayWithCapacity:", .{@as(c_ulong, constraints.len)}); for (constraints) |c| objc.msgSend(void, arr, "addObject:", .{c}); objc.msgSend(void, objc.getClass("NSLayoutConstraint").?, "activateConstraints:", .{arr}); }\n'
    '    pub fn pinWidthEqual(child: Object, parent: Object) void { activate(&.{make(child, .width, .equal, parent, .width, 1.0, 0.0)}); }\n'
    '    pub fn fill(parent: Object, child: Object, inset: f64) void { activate(&.{ make(child, .leading, .equal, parent, .leading, 1.0, inset), make(child, .trailing, .equal, parent, .trailing, 1.0, -inset), make(child, .top, .equal, parent, .top, 1.0, inset), make(child, .bottom, .equal, parent, .bottom, 1.0, -inset) }); }'
)

# Top-level enums that conflict with nested ones in factories
CONFLICTING_TOPLEVEL = [
    "NSLayoutAttribute", "NSLayoutRelation", "NSUserInterfaceLayoutOrientation",
    "NSStackViewGravity", "NSToolbarDisplayMode", "NSWindowToolbarStyle",
    "NSWindowTitleVisibility", "NSApplicationActivationPolicy",
]


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

    all_results = parse_all_modules(targets)

    for mod, classes in sorted(all_results.items()):
        output = generate_zig(mod, classes, all_results)
        output = post_process(mod, output)
        out_path = PROJECT_DIR / "src" / f"{mod}.zig"
        out_path.write_text(output)
        lines = output.count("\n")
        methods = output.count('.{ "')
        print(f"  → {out_path.name}: {lines} lines, {methods} method entries", file=sys.stderr)


if __name__ == "__main__":
    main()
