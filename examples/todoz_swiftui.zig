//! Todoz — SwiftUI todo list, 100% Zig calling Swift ABI directly.
//!
//! Demonstrates calling SwiftUI from pure Zig with no Swift source code:
//!   - Text.init(verbatim:)       — create text views
//!   - Text.bold() / .italic()    — style modifiers
//!   - Text + Text                — concatenate styled segments
//!   - Button.init(_:action:)     — interactive button with Zig callback
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
    .{ .title = "Dynamic state updates", .done = false },
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

// ── Button action callback ──────────────────────────────────────────

export fn onButtonTap() void {
    const stdout = std.fs.File.stdout();
    stdout.writeAll("Button tapped from Zig!\n") catch {};
}

// ── Entry point ──────────────────────────────────────────────────────

pub fn main() void {
    // 1. Create Button<Text> with Zig callback
    //    (must happen BEFORE ButtonVMa metadata resolution)
    const label = localizedStringKey("Tap me from Zig!", 16);
    var btn: ButtonText = undefined;
    buttonInit(&label, @ptrCast(&onButtonTap), &btn);

    // 2. Resolve Button<Text> metadata via mangled name (NOT ButtonVMa!)
    const btn_name = "7SwiftUI6ButtonVyAA4TextVG";
    const btn_meta = swift_getTypeByMangledNameInEnvironment(
        btn_name.ptr, btn_name.len, null, null,
    ) orelse unreachable;

    // 3. Get Button<Text>: View witness table
    const text_meta = @"$s7SwiftUI4TextVMa"(0).m;
    var wt_args = [_]?*anyopaque{@ptrCast(text_meta)};
    const btn_view_wt = swift_getWitnessTable(
        @ptrCast(&@"$s7SwiftUI6ButtonVyxGAA4ViewAAMc"),
        btn_meta,
        @ptrCast(&wt_args),
    );

    // 4. Launch SwiftUI app
    appRun(@ptrCast(&btn), btn_meta, btn_view_wt);
}
