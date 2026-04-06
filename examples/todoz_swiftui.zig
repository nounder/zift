//! Todoz — SwiftUI todo list, 100% Zig calling Swift ABI directly.
//!
//! Demonstrates calling SwiftUI from pure Zig with no Swift source code:
//!   - ForEach(0..<N, content:)        — dynamic collections from Zig state
//!   - NSHostingView.init(rootView:)   — bridge SwiftUI views into AppKit
//!   - NSHostingView.rootView setter   — dynamic view updates
//!   - Text.init(verbatim:)            — create text views
//!   - Text.bold() / Text + Text       — style modifiers and concatenation
//!   - swift_getTypeByMangledNameInEnvironment — generic metadata resolution
//!
//! Architecture: AppKit window + NSTextField (via ObjC runtime) with a single
//! NSHostingView<ForEach<[Int], Int, Text>>.
//! Zig owns all state. On mutation, a new Array<Int> of IDs is constructed,
//! ForEach is rebuilt with the collection, and set via hostingView.rootView.
//! SwiftUI diffs by element identity and animates changes.
//!
//! No Swift source code needed. See SwiftABI.md and ViewBuilder.md.

const std = @import("std");

// ── ObjC runtime ────────────────────────────────────────────────────

const id = *anyopaque;
const SEL = *anyopaque;
const Class = *anyopaque;
const cc = std.builtin.CallingConvention.c;

extern "c" fn objc_getClass([*:0]const u8) ?Class;
extern "c" fn sel_registerName([*:0]const u8) SEL;
extern "c" fn objc_msgSend() void;
extern "c" fn objc_allocateClassPair(?Class, [*:0]const u8, usize) ?Class;
extern "c" fn objc_registerClassPair(Class) void;
extern "c" fn class_addMethod(Class, SEL, *const anyopaque, [*:0]const u8) bool;

fn MsgSendFn(comptime ReturnType: type, comptime ArgsTuple: type) type {
    const fields = @typeInfo(ArgsTuple).@"struct".fields;
    var params: [2 + fields.len]std.builtin.Type.Fn.Param = undefined;
    params[0] = .{ .type = id, .is_generic = false, .is_noalias = false };
    params[1] = .{ .type = SEL, .is_generic = false, .is_noalias = false };
    for (fields, 0..) |f, i| {
        params[2 + i] = .{ .type = f.type, .is_generic = false, .is_noalias = false };
    }
    return @Type(.{ .@"fn" = .{
        .calling_convention = .c,
        .return_type = ReturnType,
        .params = &params,
        .is_var_args = false,
        .is_generic = false,
    } });
}

fn msg(target: anytype, comptime sel_name: [*:0]const u8, args: anytype) id {
    return msgT(id, target, sel_name, args);
}

fn msgT(comptime R: type, target: anytype, comptime sel_name: [*:0]const u8, args: anytype) R {
    const T = @TypeOf(target);
    const target_id: id = switch (@typeInfo(T)) {
        .optional => target orelse unreachable,
        .pointer => @ptrCast(@constCast(target)),
        else => @compileError("msg: bad target type"),
    };
    const f: *const MsgSendFn(R, @TypeOf(args)) = @ptrCast(&objc_msgSend);
    return @call(.auto, f, .{ target_id, sel_registerName(sel_name) } ++ args);
}

fn cls(comptime name: [*:0]const u8) id {
    return @ptrCast(objc_getClass(name) orelse unreachable);
}

fn sel(comptime name: [*:0]const u8) SEL {
    return sel_registerName(name);
}

fn nsString(comptime s: [*:0]const u8) id {
    return msg(cls("NSString"), "stringWithUTF8String:", .{s});
}

fn nsStringFromSlice(ptr: [*]const u8, len: usize) id {
    return msg(msg(cls("NSString"), "alloc", .{}), "initWithBytes:length:encoding:", .{ ptr, len, @as(u64, 4) }); // NSUTF8StringEncoding = 4
}

const NSRect = extern struct { x: f64, y: f64, w: f64, h: f64 };
const NSSize = extern struct { width: f64, height: f64 };
const NSEdgeInsets = extern struct { top: f64, left: f64, bottom: f64, right: f64 };

// ── Swift runtime ────────────────────────────────────────────────────

const SwiftString = extern struct { _0: u64, _1: u64 };

extern "c" fn @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC"(
    [*]const u8, usize, u8,
) SwiftString;

const swiftStringInit = @"$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC";

extern "c" fn swift_getTypeByMangledNameInEnvironment(
    [*]const u8, usize, ?*const anyopaque, ?*const ?*anyopaque,
) ?*anyopaque;

// Text: View witness table (data symbol)
extern const @"$s7SwiftUI4TextVAA4ViewAAWP": anyopaque;

// Int: Hashable witness table (data symbol)
extern const @"$sSiSHsWP": anyopaque;

// [A]: RandomAccessCollection conformance descriptor
extern const @"$sSayxGSksMc": anyopaque;

extern "c" fn swift_getWitnessTable(
    conformance_desc: *const anyopaque,
    type_metadata: *anyopaque,
    instantiation_args: ?*const ?*anyopaque,
) *anyopaque;

// swift_allocObject — allocate a Swift heap object
extern "c" fn swift_allocObject(metadata: *const anyopaque, required_size: usize, required_alignment: usize) *anyopaque;

// ForEach<[Int], Int, Text> — 56 bytes, returned via sret
const ForEachArrayIntText = extern struct { _data: [56]u8 };

// ForEach.init(_:id:content:) where C: View
// x0=&collection, x1=keypath, x2=content_fn, x3=content_ctx(0),
// x4=collection_meta, x5=content_view_meta, x6=collection:RAC_wt,
// x7=ID:Hashable_wt, [sp]=content:View_wt, x8=sret(56 bytes)
fn forEachArrayInit(
    array_ptr: *const anyopaque,
    keypath: *anyopaque,
    content_fn: *const anyopaque,
    array_meta: *anyopaque,
    collection_wt: *const anyopaque,
) callconv(.c) ForEachArrayIntText {
    var out: ForEachArrayIntText = undefined;
    var save: [3]u64 = undefined;
    const text_n = @"$s7SwiftUI4TextVMa"(0).m;
    const view_wt: *const anyopaque = &@"$s7SwiftUI4TextVAA4ViewAAWP";
    const hash_wt: *const anyopaque = &@"$sSiSHsWP";
    asm volatile (
        \\stp x19, x20, [x11]
        \\str x30, [x11, #16]
        \\mov x19, x8
        \\mov x20, x11
        // Push View witness table onto stack (stack-passed arg)
        \\str x12, [sp, #-16]!
        \\bl _$s7SwiftUI7ForEachVA2A4ViewR0_rlE_2id7contentACyxq_q0_Gx_s7KeyPathCy7ElementQzq_Gq0_AKctcfC
        \\add sp, sp, #16
        \\mov x8, x19
        \\ldr x30, [x20, #16]
        \\ldp x19, x20, [x20]
        :
        : [arr] "{x0}" (array_ptr),
          [kp] "{x1}" (keypath),
          [cfn] "{x2}" (content_fn),
          [ctx] "{x3}" (@as(u64, 0)),
          [ameta] "{x4}" (array_meta),
          [vmeta] "{x5}" (text_n),
          [cwt] "{x6}" (collection_wt),
          [hwt] "{x7}" (hash_wt),
          [buf] "{x8}" (&out),
          [sv] "{x11}" (&save),
          [vwt] "{x12}" (view_wt),
        : .{ .memory = true }
    );
    return out;
}

// ── Swift Array<Int> construction ───────────────────────────────────
//
// Swift Array<T> is a single pointer to a heap-allocated buffer.
// Buffer layout: [isa(8), refcount(8), count(8), capacity(8), elements...]
// We use __StaticArrayStorage class metadata + immortal refcount for static arrays,
// or swift_allocObject for dynamic arrays.

const SwiftArray = extern struct { buffer: *anyopaque };

extern const @"$ss20__StaticArrayStorageCN": anyopaque; // __StaticArrayStorage metadata

// Build a Swift Array<Int> from a slice of integer IDs.
// Uses a heap-allocated buffer with the standard Array layout.
fn makeSwiftArrayInt(ids: []const usize) SwiftArray {
    // Array buffer: [isa, refcount, count, capacity, ...elements]
    const header_size = 4 * @sizeOf(usize); // isa + refcount + count + capacity
    const total_size = header_size + ids.len * @sizeOf(usize);
    const buf = swift_allocObject(&@"$ss20__StaticArrayStorageCN", total_size, @alignOf(usize));
    const ptr: [*]usize = @ptrCast(@alignCast(buf));
    // ptr[0] = isa (already set by swift_allocObject)
    // ptr[1] = refcount (already set by swift_allocObject)
    ptr[2] = ids.len; // count
    ptr[3] = ids.len; // capacity
    const elements: [*]usize = ptr + 4;
    for (ids, 0..) |id_val, i| {
        elements[i] = id_val;
    }
    return .{ .buffer = buf };
}

// ── SwiftUI Text (32 bytes — swiftcc decomposed, needs inline asm) ──

const Text = extern struct { _0: u64, _1: u64, _2: u8, _pad: [7]u8 = .{0} ** 7, _3: u64 };

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

// ── NSHostingView ───────────────────────────────────────────────────

fn hostingViewCreate(view_ptr: *const anyopaque, class_meta: *anyopaque) callconv(.c) id {
    var save: [4]u64 = undefined;
    asm volatile (
        \\stp x19, x20, [x11]
        \\str x30, [x11, #16]
        \\mov x19, x11
        \\mov x20, x1
        \\bl _$s7SwiftUI13NSHostingViewC04rootD0ACyxGx_tcfC
        \\str x0, [x19, #24]
        \\ldr x30, [x19, #16]
        \\ldp x19, x20, [x19]
        :
        : [view] "{x0}" (view_ptr),
          [meta] "{x1}" (class_meta),
          [sv] "{x11}" (&save),
        : .{ .memory = true }
    );
    return @ptrFromInt(save[3]);
}

fn hostingViewSetRootView(hosting: id, view_ptr: *const anyopaque) callconv(.c) void {
    var save: [3]u64 = undefined;
    asm volatile (
        \\stp x19, x20, [x11]
        \\str x30, [x11, #16]
        \\mov x19, x11
        \\mov x20, x9
        \\bl _$s7SwiftUI13NSHostingViewC04rootD0xvsTj
        \\ldr x30, [x19, #16]
        \\ldp x19, x20, [x19]
        :
        : [view] "{x0}" (view_ptr),
          [self] "{x9}" (hosting),
          [sv] "{x11}" (&save),
        : .{ .memory = true }
    );
}

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

// ── Todo state (Zig-owned) ──────────────────────────────────────────

const max_todos = 64;
const max_title = 128;

const TodoItem = struct {
    title: [max_title]u8,
    title_len: u32,
    done: bool,
};

var todos: [max_todos]TodoItem = undefined;
var todo_count: u32 = 0;

// ── App state ───────────────────────────────────────────────────────

var input_field: id = undefined;
var hosting_view: id = undefined;
var main_window: id = undefined;

// Resolved once at startup
var text_meta: *anyopaque = undefined;
var text_view_wt: *const anyopaque = undefined;
var array_int_meta: *anyopaque = undefined;
var array_int_rac_wt: *const anyopaque = undefined;
var self_keypath: *anyopaque = undefined;
var hosting_foreach_meta: *anyopaque = undefined;

// ── Build SwiftUI text for a todo row ───────────────────────────────

fn buildRowText(item: *const TodoItem) Text {
    const check = if (item.done) mktext("✓ ") else mktext("○ ");
    const title = textFromSlice(&item.title, item.title_len);
    return textConcat(&check, &title);
}

// ── ForEach content closure ─────────────────────────────────────────
//
// Called by SwiftUI for each element in the collection.
// Collection-based ForEach convention (generic indirect):
//   x0 = pointer to Element (Int*), x8 = sret output pointer (Text, 32 bytes),
//   x20 = context (0 for non-capturing)
//
// The element is the todo ID (Int). We look up the todo by scanning for the ID.

export fn foreachContentImpl(id_ptr: *const usize) callconv(.c) Text {
    const todo_id = id_ptr.*;
    // ID is the array index — look up directly
    if (todo_id < todo_count) {
        return buildRowText(&todos[todo_id]);
    } else {
        return mktext("");
    }
}

/// Naked trampoline: forwards x0 (element ptr) and x8 (sret) to impl.
/// SwiftUI passes x0=element_ptr, x8=sret. C ABI for fn(*const usize) returning
/// 32-byte Text: x0=first arg, x8=sret. Perfect match — just tail-call.
export fn foreachContent() callconv(.naked) void {
    asm volatile (
        \\b _foreachContentImpl
    );
}

// ── Build SwiftUI view tree ─────────────────────────────────────────

fn buildForEach() ForEachArrayIntText {
    // Build Array<Int> of todo IDs [0, 1, 2, ..., todo_count-1]
    var ids: [max_todos]usize = undefined;
    const count: u32 = todo_count;
    for (0..count) |i| {
        ids[i] = i;
    }
    const arr = makeSwiftArrayInt(ids[0..count]);
    return forEachArrayInit(
        @ptrCast(&arr),
        self_keypath,
        @ptrCast(&foreachContent),
        array_int_meta,
        array_int_rac_wt,
    );
}

// ── Refresh list ────────────────────────────────────────────────────

fn refreshList() void {
    var fe = buildForEach();
    hostingViewSetRootView(hosting_view, @ptrCast(&fe));

    // Update subtitle
    var buf: [64]u8 = undefined;
    const sub = std.fmt.bufPrint(&buf, "{d} items", .{todo_count}) catch "items";
    _ = msg(main_window, "setSubtitle:", .{nsStringFromSlice(sub.ptr, sub.len)});
}

// ── ObjC callbacks ──────────────────────────────────────────────────

fn inputDoCommand(_: id, _: SEL, _: id, _: id, sel_cmd: SEL) callconv(cc) u8 {
    if (@intFromPtr(sel_cmd) == @intFromPtr(sel("insertNewline:"))) {
        addTodoFromInput();
        return 1;
    }
    return 0;
}

fn addTodoFromInput() void {
    const str_val = msg(input_field, "stringValue", .{});
    const cstr: ?[*:0]const u8 = @ptrCast(msgT(?*anyopaque, str_val, "UTF8String", .{}));
    const slice = if (cstr) |c| std.mem.span(c) else return;
    if (slice.len == 0) return;

    if (todo_count >= max_todos) return;
    const len: u32 = @intCast(@min(slice.len, max_title));
    var item: TodoItem = .{
        .title = std.mem.zeroes([max_title]u8),
        .title_len = len,
        .done = false,
    };
    @memcpy(item.title[0..len], slice[0..len]);
    todos[todo_count] = item;
    todo_count += 1;

    _ = msg(input_field, "setStringValue:", .{nsString("")});
    refreshList();
}

fn appDidFinishLaunching(_: id, _: SEL, _: id) callconv(cc) void {
    buildUI();
}

fn appShouldTerminate(_: id, _: SEL, _: id) callconv(cc) u8 {
    return 1;
}

// ── Register ObjC classes ───────────────────────────────────────────

fn registerClasses() void {
    {
        const c = objc_allocateClassPair(objc_getClass("NSObject"), "SwiftTodozAppDelegate", 0) orelse return;
        _ = class_addMethod(c, sel("applicationDidFinishLaunching:"), @ptrCast(&appDidFinishLaunching), "v@:@");
        _ = class_addMethod(c, sel("applicationShouldTerminateAfterLastWindowClosed:"), @ptrCast(&appShouldTerminate), "B@:@");
        objc_registerClassPair(c);
    }
    {
        const c = objc_allocateClassPair(objc_getClass("NSObject"), "SwiftTodozInputDelegate", 0) orelse return;
        _ = class_addMethod(c, sel("control:textView:doCommandBySelector:"), @ptrCast(&inputDoCommand), "B@:@@:");
        objc_registerClassPair(c);
    }
}

// ── Resolve SwiftUI metadata ────────────────────────────────────────

fn resolveMetadata() void {
    // Text metadata via accessor
    text_meta = @"$s7SwiftUI4TextVMa"(0).m;
    text_view_wt = &@"$s7SwiftUI4TextVAA4ViewAAWP";

    // Array<Int> metadata
    {
        const name = "SaySiG"; // mangled [Int]
        array_int_meta = swift_getTypeByMangledNameInEnvironment(
            name.ptr, name.len, null, null,
        ) orelse unreachable;
    }

    // Array<Int>: RandomAccessCollection witness table
    {
        const int_meta = swift_getTypeByMangledNameInEnvironment("Si", 2, null, null) orelse unreachable;
        var args = [_]?*anyopaque{@ptrCast(int_meta)};
        array_int_rac_wt = swift_getWitnessTable(
            &@"$sSayxGSksMc",
            array_int_meta,
            @ptrCast(&args),
        );
    }

    // KeyPath<Int, Int> for \.self — from precompiled Swift object
    self_keypath = zig_get_int_self_keypath();

    // NSHostingView<ForEach<[Int], Int, Text>> metadata
    {
        const name = "7SwiftUI13NSHostingViewCyAA7ForEachVySaySiGSiAA4TextVGG";
        hosting_foreach_meta = swift_getTypeByMangledNameInEnvironment(
            name.ptr, name.len, null, null,
        ) orelse unreachable;
    }
}

// Identity keypath \.self for Int — compiled from Swift to .o (no Swift source at runtime).
// Returns a retained KeyPath<Int, Int> object pointer.
extern "c" fn zig_get_int_self_keypath() *anyopaque;

// ── UI construction ─────────────────────────────────────────────────

fn buildUI() void {
    resolveMetadata();

    // Window
    const alloc_win = msg(cls("NSWindow"), "alloc", .{});
    const style: u64 = 0x1 | 0x2 | 0x4 | 0x8;
    main_window = msg(alloc_win, "initWithContentRect:styleMask:backing:defer:", .{
        NSRect{ .x = 200, .y = 200, .w = 560, .h = 680 },
        style,
        @as(u64, 2),
        @as(i8, 0),
    });
    _ = msg(main_window, "setTitle:", .{nsString("Todoz")});
    _ = msg(main_window, "center", .{});
    _ = msg(main_window, "setMinSize:", .{NSSize{ .width = 440, .height = 400 }});

    // Root stack (AppKit): input bar on top, SwiftUI hosting view below
    const root = msg(msg(cls("NSStackView"), "alloc", .{}), "initWithFrame:", .{NSRect{ .x = 0, .y = 0, .w = 0, .h = 0 }});
    _ = msg(root, "setOrientation:", .{@as(i64, 1)}); // vertical
    _ = msg(root, "setSpacing:", .{@as(f64, 0)});

    // Input bar
    {
        input_field = msg(msg(cls("NSTextField"), "alloc", .{}), "initWithFrame:", .{NSRect{ .x = 0, .y = 0, .w = 200, .h = 24 }});
        _ = msg(input_field, "setPlaceholderString:", .{nsString("What needs to be done?")});
        _ = msg(input_field, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(i8, 0)});
        _ = msg(input_field, "setFont:", .{msg(cls("NSFont"), "systemFontOfSize:", .{@as(f64, 13)})});

        const del = msg(msg(cls("SwiftTodozInputDelegate"), "alloc", .{}), "init", .{});
        _ = msg(input_field, "setDelegate:", .{del});

        const bar = msg(msg(cls("NSStackView"), "alloc", .{}), "initWithFrame:", .{NSRect{ .x = 0, .y = 0, .w = 0, .h = 0 }});
        _ = msg(bar, "setOrientation:", .{@as(i64, 0)}); // horizontal
        _ = msg(bar, "setSpacing:", .{@as(f64, 10)});
        _ = msg(bar, "setEdgeInsets:", .{NSEdgeInsets{ .top = 10, .left = 16, .bottom = 10, .right = 16 }});
        _ = msg(bar, "addArrangedSubview:", .{input_field});
        _ = msg(root, "addArrangedSubview:", .{bar});
    }

    // Separator
    {
        const sep = msg(msg(cls("NSBox"), "alloc", .{}), "initWithFrame:", .{NSRect{ .x = 0, .y = 0, .w = 0, .h = 1 }});
        _ = msg(sep, "setBoxType:", .{@as(i64, 2)});
        _ = msg(sep, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(i8, 0)});
        _ = msg(root, "addArrangedSubview:", .{sep});
    }

    // SwiftUI hosting view — single NSHostingView<ForEach<Range<Int>, Int, Text>>
    {
        var view = buildForEach();
        hosting_view = hostingViewCreate(@ptrCast(&view), hosting_foreach_meta);
        _ = msg(hosting_view, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(i8, 0)});
        _ = msg(root, "addArrangedSubview:", .{hosting_view});
    }

    _ = msg(root, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(i8, 1)});
    _ = msg(main_window, "setContentView:", .{root});

    // Update subtitle for initial state
    _ = msg(main_window, "setSubtitle:", .{nsString("0 items")});
    _ = msg(main_window, "makeKeyAndOrderFront:", .{@as(?id, null)});
    const app = msg(cls("NSApplication"), "sharedApplication", .{});
    _ = msg(app, "activateIgnoringOtherApps:", .{@as(i8, 1)});
}

// ── Entry point ──────────────────────────────────────────────────────

pub fn main() void {
    registerClasses();

    const app = msg(cls("NSApplication"), "sharedApplication", .{});
    _ = msg(app, "setActivationPolicy:", .{@as(i64, 0)});

    // Menu
    setupMenu(app);

    // Delegate (for shouldTerminateAfterLastWindowClosed)
    const del = msg(msg(cls("SwiftTodozAppDelegate"), "alloc", .{}), "init", .{});
    _ = msg(app, "setDelegate:", .{del});

    // Build UI before run (delegate callback may not fire for unbundled apps)
    buildUI();

    _ = msg(app, "run", .{});
}

fn setupMenu(app: id) void {
    const bar = msg(msg(cls("NSMenu"), "alloc", .{}), "initWithTitle:", .{nsString("")});

    { // App menu
        const item = msg(msg(cls("NSMenuItem"), "alloc", .{}), "init", .{});
        const menu = msg(msg(cls("NSMenu"), "alloc", .{}), "initWithTitle:", .{nsString("Todoz")});
        _ = msg(menu, "addItemWithTitle:action:keyEquivalent:", .{ nsString("Quit Todoz"), sel("terminate:"), nsString("q") });
        _ = msg(item, "setSubmenu:", .{menu});
        _ = msg(bar, "addItem:", .{item});
    }

    { // Edit menu
        const item = msg(msg(cls("NSMenuItem"), "alloc", .{}), "init", .{});
        const menu = msg(msg(cls("NSMenu"), "alloc", .{}), "initWithTitle:", .{nsString("Edit")});
        _ = msg(menu, "addItemWithTitle:action:keyEquivalent:", .{ nsString("Cut"), sel("cut:"), nsString("x") });
        _ = msg(menu, "addItemWithTitle:action:keyEquivalent:", .{ nsString("Copy"), sel("copy:"), nsString("c") });
        _ = msg(menu, "addItemWithTitle:action:keyEquivalent:", .{ nsString("Paste"), sel("paste:"), nsString("v") });
        _ = msg(menu, "addItemWithTitle:action:keyEquivalent:", .{ nsString("Select All"), sel("selectAll:"), nsString("a") });
        _ = msg(item, "setSubmenu:", .{menu});
        _ = msg(bar, "addItem:", .{item});
    }

    _ = msg(app, "setMainMenu:", .{bar});
}
