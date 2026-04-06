//! Todoz — SwiftUI todo list, 100% Zig calling Swift ABI directly.
//!
//! Demonstrates calling SwiftUI from pure Zig with no Swift source code:
//!   - Text.init(verbatim:)       — create text views
//!   - Text.bold() / .italic()    — style modifiers
//!   - Text + Text                — concatenate styled segments
//!   - Button.init(_:action:)     — interactive button with Zig callback
//!   - Toggle.init(_:isOn:)       — interactive toggle with Zig-backed state
//!   - Binding(get:set:)          — mutable binding backed by Zig global
//!   - swift_getWitnessTable      — generic protocol conformance resolution
//!
//! No Swift source code needed.
//!
//! ## Inline asm rules for calling Swift functions (bl) from Zig:
//!
//! 1. bl clobbers ALL caller-saved registers (x0-x18, x30). To keep a pointer
//!    alive across bl, stash it in a callee-saved register (x19-x28).
//!
//! 2. Do NOT push/pop the stack (stp/ldp on sp). Zig manages sp — touching it
//!    corrupts the frame and causes subtle crashes in later C ABI calls.
//!    Instead, save callee-saved regs to a `var save: [3]u64` Zig local.
//!
//! 3. Use callconv(.c) on all asm wrapper functions for clean stack frames.
//!
//! 4. For 17-32 byte returns (e.g. Text, LocalizedStringKey): Swift decomposes
//!    into x0,x1,w2,x3. C ABI would use sret. Must use inline asm.
//!    For >32 byte returns (e.g. Button): both use sret via x8. C-compatible.
//!
//! 5. Do NOT call ButtonVMa in the same process as Button.init — they conflict
//!    over internal metadata caches. Use swift_getTypeByMangledNameInEnvironment
//!    with the mangled name minus the "$s" prefix instead.
//!
//! See SwiftABI.md for the full reference.

const std = @import("std");

// ── Swift runtime ────────────────────────────────────────────────────

const SwiftString = extern struct { _0: u64, _1: u64 };

extern "c" fn @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(
    [*]const u8, usize, u8,
) SwiftString;

const swiftStringInit = @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC";

extern "c" fn swift_getTypeByMangledNameInEnvironment(
    [*]const u8, usize, ?*const anyopaque, ?*const ?*anyopaque,
) ?*anyopaque;

extern "c" fn swift_getWitnessTable(
    *const anyopaque, *anyopaque, ?*const ?*anyopaque,
) *anyopaque;

// ── SwiftUI Text (32 bytes — swiftcc decomposed, needs inline asm) ──

const Text = extern struct { _0: u64, _1: u64, _2: u8, _pad: [7]u8 = .{0} ** 7, _3: u64 };

// All asm wrappers for swiftcc 17-32 byte returns use this pattern:
//   1. Save x19, x20, x30 to a Zig `var save: [3]u64` via x11 (valid pre-bl)
//   2. mov x19, <output ptr>  — callee-saved, survives bl
//   3. mov x20, x11           — save buf addr, callee-saved, survives bl
//   4. bl <swift function>
//   5. Store x0,x1,w2,x3 to [x19]  — result via surviving register
//   6. Restore x30 from [x20+16], then x19,x20 from [x20]

fn textInitVerbatim(ptr: [*]const u8, len: usize, is_ascii: u8) callconv(.c) Text {
    const str = swiftStringInit(ptr, len, is_ascii);
    var out: Text = undefined;
    var save: [3]u64 = undefined;
    asm volatile (
        \\stp x19, x20, [x11]
        \\str x30, [x11, #16]
        \\mov x19, x9
        \\mov x20, x11
        \\bl _$s7SwiftUI4TextV8verbatimACSS_tcfC
        \\str x0, [x19, #0]
        \\str x1, [x19, #8]
        \\strb w2, [x19, #16]
        \\str x3, [x19, #24]
        \\ldr x30, [x20, #16]
        \\ldp x19, x20, [x20]
        :
        : [s0] "{x0}" (str._0), [s1] "{x1}" (str._1),
          [buf] "{x9}" (&out), [sv] "{x11}" (&save),
        : .{ .memory = true });
    return out;
}

fn textBold(t: *const Text) callconv(.c) Text {
    var out: Text = undefined;
    var save: [3]u64 = undefined;
    asm volatile (
        \\stp x19, x20, [x11]
        \\str x30, [x11, #16]
        \\mov x19, x8
        \\mov x20, x11
        \\ldp x0, x1, [x9]
        \\ldrb w2, [x9, #16]
        \\ldr x3, [x9, #24]
        \\bl _$s7SwiftUI4TextV4boldACyF
        \\str x0, [x19, #0]
        \\str x1, [x19, #8]
        \\strb w2, [x19, #16]
        \\str x3, [x19, #24]
        \\ldr x30, [x20, #16]
        \\ldp x19, x20, [x20]
        :
        : [self] "{x9}" (t), [buf] "{x8}" (&out), [sv] "{x11}" (&save),
        : .{ .memory = true });
    return out;
}

fn textItalic(t: *const Text) callconv(.c) Text {
    var out: Text = undefined;
    var save: [3]u64 = undefined;
    asm volatile (
        \\stp x19, x20, [x11]
        \\str x30, [x11, #16]
        \\mov x19, x8
        \\mov x20, x11
        \\ldp x0, x1, [x9]
        \\ldrb w2, [x9, #16]
        \\ldr x3, [x9, #24]
        \\bl _$s7SwiftUI4TextV6italicACyF
        \\str x0, [x19, #0]
        \\str x1, [x19, #8]
        \\strb w2, [x19, #16]
        \\str x3, [x19, #24]
        \\ldr x30, [x20, #16]
        \\ldp x19, x20, [x20]
        :
        : [self] "{x9}" (t), [buf] "{x8}" (&out), [sv] "{x11}" (&save),
        : .{ .memory = true });
    return out;
}

fn textConcat(lhs: *const Text, rhs: *const Text) callconv(.c) Text {
    var out: Text = undefined;
    var save: [3]u64 = undefined;
    asm volatile (
        \\stp x19, x20, [x11]
        \\str x30, [x11, #16]
        \\mov x19, x8
        \\mov x20, x11
        \\ldp x0, x1, [x9]
        \\ldrb w2, [x9, #16]
        \\ldr x3, [x9, #24]
        \\ldp x4, x5, [x10]
        \\ldrb w6, [x10, #16]
        \\ldr x7, [x10, #24]
        \\bl _$s7SwiftUI4TextV1poiyA2C_ACtFZ
        \\str x0, [x19, #0]
        \\str x1, [x19, #8]
        \\strb w2, [x19, #16]
        \\str x3, [x19, #24]
        \\ldr x30, [x20, #16]
        \\ldp x19, x20, [x20]
        :
        : [lhs] "{x9}" (lhs), [rhs] "{x10}" (rhs),
          [buf] "{x8}" (&out), [sv] "{x11}" (&save),
        : .{ .memory = true });
    return out;
}

extern "c" fn @"$s7SwiftUI4TextVMa"(usize) extern struct { m: *anyopaque, s: usize };
extern const @"$s7SwiftUI4TextVAA4ViewAAWP": anyopaque;

// ── LocalizedStringKey (32 bytes — swiftcc decomposed) ──────────────

const LocalizedStringKey = extern struct { _0: u64, _1: u64, _2: u8, _pad: [7]u8 = .{0} ** 7, _3: u64 };

fn localizedStringKey(ptr: [*]const u8, len: usize) callconv(.c) LocalizedStringKey {
    const str = swiftStringInit(ptr, len, 1);
    var out: LocalizedStringKey = undefined;
    var save: [3]u64 = undefined;
    asm volatile (
        \\stp x19, x20, [x11]
        \\str x30, [x11, #16]
        \\mov x19, x9
        \\mov x20, x11
        \\bl _$s7SwiftUI18LocalizedStringKeyV13stringLiteralACSS_tcfC
        \\str x0, [x19, #0]
        \\str x1, [x19, #8]
        \\strb w2, [x19, #16]
        \\str x3, [x19, #24]
        \\ldr x30, [x20, #16]
        \\ldp x19, x20, [x20]
        :
        : [s0] "{x0}" (str._0), [s1] "{x1}" (str._1),
          [buf] "{x9}" (&out), [sv] "{x11}" (&save),
        : .{ .memory = true });
    return out;
}

// ── Button<Text> (144 bytes — sret via x8, C-compatible return) ─────
//
// GOTCHA: Do NOT call _$s7SwiftUI6ButtonVMa (ButtonVMa) in the same
// process as Button.init — they conflict over internal Swift runtime
// metadata caches and segfault. Use swift_getTypeByMangledNameInEnvironment
// with "7SwiftUI6ButtonVyAA4TextVG" instead.

const ButtonText = [18]u64; // 144 bytes, 8-byte aligned

// Button<Text>: View conformance descriptor (for swift_getWitnessTable)
extern const @"$s7SwiftUI6ButtonVyxGAA4ViewAAMc": anyopaque;

fn buttonInit(label: *const LocalizedStringKey, action: *const anyopaque, out: *ButtonText) callconv(.c) void {
    var save: [3]u64 = undefined;
    asm volatile (
        \\stp x19, x20, [x11]
        \\str x30, [x11, #16]
        \\mov x19, x11
        \\ldp x0, x1, [x9]
        \\ldrb w2, [x9, #16]
        \\ldr x3, [x9, #24]
        \\mov x4, x10
        \\mov x5, #0
        \\bl _$s7SwiftUI6ButtonVA2A4TextVRszrlE_6actionACyAEGAA18LocalizedStringKeyV_yyctcfC
        \\ldr x30, [x19, #16]
        \\ldp x19, x20, [x19]
        :
        : [key] "{x9}" (label), [act] "{x10}" (action),
          [buf] "{x8}" (out), [sv] "{x11}" (&save),
        : .{ .memory = true });
}

// ── Binding<Bool> (17 bytes — swiftcc decomposed as x0,x1,w2) ───────
//
// Binding.init(get:set:) creates a mutable binding from closure pairs.
// Each closure is a thick Swift function: (fn_ptr, context_ptr).
// For non-capturing closures, context = 0 (null).
//
// The closures use generic/indirect convention:
//   GET:  x8 = output ptr, x20 = context → store Bool to [x8]
//   SET:  x0 = ptr to Bool, x20 = context → read from [x0]

const BindingBool = extern struct { _0: u64, _1: u64, _2: u8, _pad: [7]u8 = .{0} ** 7 };

// Bool type metadata
extern const @"$sSbN": anyopaque;

fn bindingInit(
    get_fn: *const anyopaque,
    set_fn: *const anyopaque,
    out: *BindingBool,
) callconv(.c) void {
    var save: [3]u64 = undefined;
    asm volatile (
        \\stp x19, x20, [x11]
        \\str x30, [x11, #16]
        \\mov x19, x11
        // x0 = get fn, x1 = get context (0), x2 = set fn, x3 = set context (0), x4 = Bool metadata
        \\mov x1, #0
        \\mov x2, x10
        \\mov x3, #0
        \\mov x4, x9
        \\bl _$s7SwiftUI7BindingV3get3setACyxGxyc_yxctcfC
        \\ldr x30, [x19, #16]
        \\ldp x19, x20, [x19]
        :
        : [get] "{x0}" (get_fn),
          [set] "{x10}" (set_fn),
          [meta] "{x9}" (&@"$sSbN"),
          [buf] "{x8}" (out),
          [sv] "{x11}" (&save),
        : .{ .memory = true }
    );
}

// ── Toggle<Text> (104 bytes — sret via x8) ──────────────────────────
//
// Toggle<Text>.init(_:isOn:)
// Args: x0,x1,w2,x3 = LocalizedStringKey (32 bytes decomposed)
//       x4,x5,w6    = Binding<Bool> (17 bytes decomposed)
//       x8           = sret output (104 bytes)

const ToggleText = [13]u64; // 104 bytes, 8-byte aligned

// Toggle<Text>: View conformance descriptor
extern const @"$s7SwiftUI6ToggleVyxGAA4ViewAAMc": anyopaque;

fn toggleInit(label: *const LocalizedStringKey, binding: *const BindingBool, out: *ToggleText) callconv(.c) void {
    var save: [3]u64 = undefined;
    asm volatile (
        \\stp x19, x20, [x11]
        \\str x30, [x11, #16]
        \\mov x19, x11
        // Load LocalizedStringKey into x0,x1,w2,x3
        \\ldp x0, x1, [x9]
        \\ldrb w2, [x9, #16]
        \\ldr x3, [x9, #24]
        // Load Binding<Bool> into x4,x5,w6
        \\ldp x4, x5, [x10]
        \\ldrb w6, [x10, #16]
        \\bl _$s7SwiftUI6ToggleVA2A4TextVRszrlE_4isOnACyAEGAA18LocalizedStringKeyV_AA7BindingVySbGtcfC
        \\ldr x30, [x19, #16]
        \\ldp x19, x20, [x19]
        :
        : [key] "{x9}" (label),
          [bind] "{x10}" (binding),
          [buf] "{x8}" (out),
          [sv] "{x11}" (&save),
        : .{ .memory = true }
    );
}

// ── __App.run ────────────────────────────────────────────────────────

fn appRun(value_ptr: *const anyopaque, type_meta: *anyopaque, view_wt: *anyopaque) noreturn {
    asm volatile (
        \\bl _$s7SwiftUI5__AppO3runys5NeverOxAA4ViewRzlFZ
        \\brk #1
        :
        : [v] "{x0}" (value_ptr), [m] "{x1}" (type_meta), [w] "{x2}" (view_wt),
        : .{ .memory = true });
    unreachable;
}

// ── Todo data ────────────────────────────────────────────────────────

const todos = [_]struct { title: []const u8, done: bool }{
    .{ .title = "Build SwiftUI from Zig", .done = true },
    .{ .title = "No Swift source code", .done = true },
    .{ .title = "Call Swift ABI directly", .done = true },
    .{ .title = "Style with Text.bold()", .done = true },
    .{ .title = "Compose with Text + Text", .done = true },
    .{ .title = "Wire up button actions", .done = true },
    .{ .title = "Dynamic state updates", .done = true },
};

// ── Helpers ──────────────────────────────────────────────────────────

fn mktext(comptime s: []const u8) Text {
    return textInitVerbatim(s.ptr, s.len, comptime if (isAscii(s)) 1 else 0);
}

fn textFromSlice(ptr: [*]const u8, len: usize) Text {
    return textInitVerbatim(ptr, len, 0);
}

fn isAscii(s: []const u8) bool {
    for (s) |c| {
        if (c > 127) return false;
    }
    return true;
}

// ── Zig-backed state ────────────────────────────────────────────────
//
// These globals are read/written by SwiftUI through Binding(get:set:).
// The closures use swiftcc generic convention:
//   GET:  x8 = indirect output pointer, x20 = context (ignored)
//   SET:  x0 = indirect input pointer,  x20 = context (ignored)

var toggle_state: bool = false;

/// Binding GET closure: write toggle_state to [x8] (indirect return).
/// In swiftcc generic closures, the result is always written indirectly.
export fn bindingGetBool() void {
    // x8 = indirect result pointer (set by SwiftUI before calling us)
    const out: *u8 = asm ("" : [out] "={x8}" (-> *u8) : : .{});
    out.* = if (toggle_state) 1 else 0;
}

/// Binding SET closure: read new value from [x0] (in_guaranteed).
export fn bindingSetBool(ptr: *const u8) callconv(.c) void {
    toggle_state = ptr.* != 0;
    const stdout = std.fs.File.stdout();
    if (toggle_state) {
        stdout.writeAll("Toggle ON  (from Zig)\n") catch {};
    } else {
        stdout.writeAll("Toggle OFF (from Zig)\n") catch {};
    }
}

// ── Button action callback ──────────────────────────────────────────

export fn onButtonTap() void {
    const stdout = std.fs.File.stdout();
    stdout.writeAll("Button tapped from Zig!\n") catch {};
}

// ── Entry point ──────────────────────────────────────────────────────

pub fn main() void {
    // 1. Create Binding<Bool> backed by Zig global state
    var binding: BindingBool = undefined;
    bindingInit(@ptrCast(&bindingGetBool), @ptrCast(&bindingSetBool), &binding);

    // 2. Create Toggle<Text> with the Zig-backed binding
    const label = localizedStringKey("Enable feature (Zig state)", 26);
    var toggle: ToggleText = undefined;
    toggleInit(&label, &binding, &toggle);

    // 3. Resolve Toggle<Text> metadata via mangled name
    const toggle_name = "7SwiftUI6ToggleVyAA4TextVG";
    const toggle_meta = swift_getTypeByMangledNameInEnvironment(
        toggle_name.ptr, toggle_name.len, null, null,
    ) orelse unreachable;

    // 4. Get Toggle<Text>: View witness table
    const text_meta = @"$s7SwiftUI4TextVMa"(0).m;
    var wt_args = [_]?*anyopaque{@ptrCast(text_meta)};
    const toggle_view_wt = swift_getWitnessTable(
        @ptrCast(&@"$s7SwiftUI6ToggleVyxGAA4ViewAAMc"),
        toggle_meta,
        @ptrCast(&wt_args),
    );

    // 5. Launch SwiftUI app — Toggle reads/writes Zig state via Binding
    appRun(@ptrCast(&toggle), toggle_meta, toggle_view_wt);
}
