//! Objective-C runtime bindings for Zig.
//!
//! Provides typed, ergonomic wrappers around objc_msgSend and the ObjC runtime,
//! enabling Zig code to call AppKit/Cocoa APIs directly without Swift.

const std = @import("std");
const CallingConvention = std.builtin.CallingConvention;

// The platform C calling convention
const cc = CallingConvention.c;

// ── Opaque runtime types ───────────────────────────────────────────────

pub const Class = *opaque {};
pub const Object = *opaque {};
pub const Sel = *opaque {};
pub const Imp = *const fn () callconv(cc) void;
pub const Protocol = *opaque {};

/// Semantic type aliases for method tables.
/// At runtime all are `id` (Object), but in the table they document intent
/// and enable auto-coercion (e.g. NSString args accept [*:0]const u8).
pub const NSString = Object;
pub const NSView = Object;
pub const NSColor = Object;
pub const NSFont = Object;
pub const NSImage = Object;
pub const NSImageView = Object;
pub const NSMenu = Object;
pub const NSToolbar = Object;
pub const NSToolbarItem = Object;
pub const NSArray = Object;
pub const NSAttributedString = Object;
pub const BOOL = u8; // ObjC BOOL — coercion auto-converts Zig `bool`
pub const NSInteger = i64;
pub const NSUInteger = c_ulong;
pub const CGFloat = f64;

// ── Core runtime externs ───────────────────────────────────────────────

extern "c" fn objc_getClass(name: [*:0]const u8) ?Class;
extern "c" fn sel_registerName(name: [*:0]const u8) Sel;
extern "c" fn objc_allocateClassPair(superclass: ?Class, name: [*:0]const u8, extra_bytes: usize) ?Class;
extern "c" fn objc_registerClassPair(cls: Class) void;
extern "c" fn class_addMethod(cls: Class, name: Sel, imp: Imp, types: [*:0]const u8) bool;
extern "c" fn class_addIvar(cls: Class, name: [*:0]const u8, size: usize, alignment: u8, types: ?[*:0]const u8) bool;
extern "c" fn class_addProtocol(cls: Class, protocol: Protocol) bool;
extern "c" fn objc_getProtocol(name: [*:0]const u8) ?Protocol;
extern "c" fn object_getInstanceVariable(obj: Object, name: [*:0]const u8, out_value: *?*anyopaque) ?*anyopaque;
extern "c" fn object_setInstanceVariable(obj: Object, name: [*:0]const u8, value: ?*anyopaque) ?*anyopaque;

// ── Public helpers ─────────────────────────────────────────────────────

pub fn getClass(name: [*:0]const u8) ?Class {
    return objc_getClass(name);
}

pub fn sel(name: [*:0]const u8) Sel {
    return sel_registerName(name);
}

pub fn allocateClassPair(superclass: ?Class, name: [*:0]const u8) ?Class {
    return objc_allocateClassPair(superclass, name, 0);
}

pub fn registerClassPair(cls: Class) void {
    objc_registerClassPair(cls);
}

pub fn addMethod(cls: Class, name: Sel, imp: Imp, types: [*:0]const u8) bool {
    return class_addMethod(cls, name, imp, types);
}

pub fn addIvar(cls: Class, name: [*:0]const u8, size: usize, alignment: u8, types: ?[*:0]const u8) bool {
    return class_addIvar(cls, name, size, alignment, types);
}

pub fn addProtocol(cls: Class, name: [*:0]const u8) bool {
    const proto = objc_getProtocol(name) orelse return false;
    return class_addProtocol(cls, proto);
}

pub fn getIvar(obj: Object, comptime T: type, name: [*:0]const u8) ?T {
    var out: ?*anyopaque = null;
    _ = object_getInstanceVariable(obj, name, &out);
    if (out) |ptr| {
        return @as(T, @ptrCast(@alignCast(ptr)));
    }
    return null;
}

pub fn setIvar(obj: Object, name: [*:0]const u8, value: ?*anyopaque) void {
    _ = object_setInstanceVariable(obj, name, value);
}

// ── msgSend ────────────────────────────────────────────────────────────
//
// The key challenge: objc_msgSend has a variadic C signature, but Zig
// needs to cast the function pointer to the correct type for each call.
// We use @ptrCast to reinterpret the raw function pointer.

extern "c" fn objc_msgSend() void;
extern "c" fn objc_msgSend_stret() void;

/// Send a message to an ObjC object/class.
///   const result = msgSend(ReturnType, target, "selectorName:", .{ arg1, arg2 });
pub fn msgSend(comptime ReturnType: type, target: anytype, comptime selector: [*:0]const u8, args: anytype) ReturnType {
    return msgSendSel(ReturnType, target, sel(selector), args);
}

/// Send with a pre-resolved selector.
pub fn msgSendSel(comptime ReturnType: type, target: anytype, _sel: Sel, args: anytype) ReturnType {
    const target_ptr = objcPtr(target);
    const FnType = MsgSendFn(ReturnType, @TypeOf(args));
    const func: *const FnType = @ptrCast(&objc_msgSend);
    return @call(.auto, func, .{ target_ptr, _sel } ++ args);
}

/// Send a message to an ObjC class by name.
///   const result = msgSendClass(ReturnType, "NSObject", "alloc", .{});
pub fn msgSendClass(comptime ReturnType: type, comptime class_name: [*:0]const u8, comptime selector: [*:0]const u8, args: anytype) ReturnType {
    const cls = getClass(class_name) orelse @panic("class not found");
    return msgSend(ReturnType, cls, selector, args);
}

// ── NSString helpers ───────────────────────────────────────────────────

pub fn nsString(str: [*:0]const u8) Object {
    return msgSendClass(Object, "NSString", "stringWithUTF8String:", .{str});
}

pub fn nsStringFromSlice(bytes: []const u8) Object {
    return msgSend(Object, getClass("NSString").?, "stringWithUTF8String:", .{bytes.ptr});
}

pub fn toZigString(ns_str: Object) ?[*:0]const u8 {
    return msgSend(?[*:0]const u8, ns_str, "UTF8String", .{});
}

// ── NSNumber helpers ───────────────────────────────────────────────────

pub fn nsNumberWithInt(val: c_int) Object {
    return msgSendClass(Object, "NSNumber", "numberWithInt:", .{val});
}

pub fn nsNumberWithBool(val: bool) Object {
    const byte: u8 = if (val) 1 else 0;
    return msgSendClass(Object, "NSNumber", "numberWithBool:", .{byte});
}

// ── NSValue helpers (for wrapping pointers) ────────────────────────────

pub fn nsValueWithPointer(ptr: *anyopaque) Object {
    return msgSendClass(Object, "NSValue", "valueWithPointer:", .{ptr});
}

pub fn pointerFromNSValue(val: Object) ?*anyopaque {
    return msgSend(?*anyopaque, val, "pointerValue", .{});
}

// ── Autorelease pool ───────────────────────────────────────────────────

extern "c" fn objc_autoreleasePoolPush() ?*anyopaque;
extern "c" fn objc_autoreleasePoolPop(ctx: ?*anyopaque) void;

pub fn autoreleasePoolPush() ?*anyopaque {
    return objc_autoreleasePoolPush();
}

pub fn autoreleasePoolPop(ctx: ?*anyopaque) void {
    objc_autoreleasePoolPop(ctx);
}

// ── Typed send mixin ───────────────────────────────────────────────────
//
// Gives any struct with `obj: Object` a type-safe `.send()` method.
// A comptime selector table validates return types and argument types.
//
// Usage:
//   pub const Window = struct {
//       obj: Object,
//       pub usingnamespace Sendable(@This(), .{
//           .{ "setTitle:",      void,   .{Object} },
//           .{ "setToolbarStyle:", void, .{i64} },
//           .{ "contentView",    Object, .{} },
//           .{ "tag",            i64,    .{} },
//       });
//   };
//
//   window.send("setTitle:", .{ns_string});       // type-checked
//   window.send("setToolbarStyle:", .{@as(i64,3)});
//   const v = window.send("contentView", .{});    // returns Object
//   const t = window.send("tag", .{});             // returns i64
//
// If the selector isn't in the table → compile error.
// If arg types don't match → compile error.

/// Type-checked send. Call from a struct method like:
///   pub fn send(self: @This(), comptime selector: [*:0]const u8, args: anytype) ... {
///       return objc.typedSend(table, self.obj, selector, args);
///   }
pub fn typedSend(comptime table: anytype, target: Object, comptime selector: [*:0]const u8, args: anytype) SendReturn(table, selector) {
    return msgSend(SendReturn(table, selector), target, selector, coerceArgs(SendArgTypes(table, selector), args));
}

/// Type-checked class-level send. For class methods (like [NSColor systemRedColor]).
pub fn typedClassSend(comptime class_name: [*:0]const u8, comptime table: anytype, comptime selector: [*:0]const u8, args: anytype) SendReturn(table, selector) {
    return msgSendClass(SendReturn(table, selector), class_name, selector, coerceArgs(SendArgTypes(table, selector), args));
}

/// Look up the return type for a selector in the table. Compile error if not found.
fn selStr(comptime s: anytype) []const u8 {
    @setEvalBranchQuota(10000);
    const T = @TypeOf(s);
    if (T == [*:0]const u8) return std.mem.span(s);
    // String literal: *const [N:0]u8
    return s[0..s.len];
}

pub fn SendReturn(comptime table: anytype, comptime selector: [*:0]const u8) type {
    const sel_s = comptime selStr(selector);
    for (table) |entry| {
        if (comptime std.mem.eql(u8, selStr(entry[0]), sel_s)) {
            return entry[1];
        }
    }
    @compileError("Unknown selector: " ++ sel_s ++ " — add it to the method table");
}

/// Look up the expected arg types for a selector. Returns a tuple struct type.
fn SendArgTypes(comptime table: anytype, comptime selector: [*:0]const u8) type {
    const sel_s = comptime selStr(selector);
    for (table) |entry| {
        if (comptime std.mem.eql(u8, selStr(entry[0]), sel_s)) {
            return ArgTuple(entry[2]);
        }
    }
    unreachable;
}

/// Convert a comptime tuple of types like .{Object, i64} into an actual tuple struct type.
fn ArgTuple(comptime type_list: anytype) type {
    const info = @typeInfo(@TypeOf(type_list)).@"struct";
    var fields: [info.fields.len]std.builtin.Type.StructField = undefined;
    for (info.fields, 0..) |_, i| {
        const T = type_list[i]; // This is a `type` value
        fields[i] = .{
            .name = std.fmt.comptimePrint("{d}", .{i}),
            .type = T,
            .default_value_ptr = null,
            .is_comptime = false,
            .alignment = @alignOf(T),
        };
    }
    return @Type(.{ .@"struct" = .{
        .layout = .auto,
        .fields = &fields,
        .decls = &.{},
        .is_tuple = true,
    } });
}

/// Coerce args tuple to match expected types. Auto-converts:
/// - bool → u8 (ObjC BOOL)
/// - [*:0]const u8 → Object (NSString via nsString())
/// - enum → its integer tag (i64 or c_ulong)
fn coerceArgs(comptime Expected: type, args: anytype) Expected {
    const exp_fields = @typeInfo(Expected).@"struct".fields;
    const arg_fields = @typeInfo(@TypeOf(args)).@"struct".fields;

    if (exp_fields.len != arg_fields.len) {
        @compileError("Wrong number of arguments: expected " ++
            std.fmt.comptimePrint("{d}", .{exp_fields.len}) ++ ", got " ++
            std.fmt.comptimePrint("{d}", .{arg_fields.len}));
    }

    var result: Expected = undefined;
    inline for (exp_fields, 0..) |field, i| {
        const val = args[i];
        const ExpType = field.type;
        const ValType = @TypeOf(val);

        if (ExpType == ValType) {
            // Exact match
            @field(result, field.name) = val;
        } else if (ValType == bool and (ExpType == u8 or ExpType == BOOL)) {
            // bool → BOOL (u8)
            @field(result, field.name) = @intFromBool(val);
        } else if (ExpType == Object and ValType == [*:0]const u8) {
            // Null-terminated string → NSString
            @field(result, field.name) = nsString(val);
        } else if (ExpType == Object and comptime isStringLiteral(ValType)) {
            // String literal (*const [N:0]u8) → NSString
            @field(result, field.name) = nsString(@as([*:0]const u8, val));
        } else if (ExpType == Object and @typeInfo(ValType) == .pointer) {
            // Any other pointer → Object
            @field(result, field.name) = @ptrCast(@constCast(val));
        } else if (@typeInfo(ValType) == .@"enum" and (ExpType == i64 or ExpType == c_ulong)) {
            // Zig enum → integer
            @field(result, field.name) = @intFromEnum(val);
        } else if (@typeInfo(ValType) == .comptime_int) {
            // Comptime int → target integer type
            @field(result, field.name) = val;
        } else if (@typeInfo(ValType) == .comptime_float) {
            // Comptime float → target float type
            @field(result, field.name) = val;
        } else if (@typeInfo(ValType) == .@"struct") {
            // Struct → struct (e.g. Size, Rect)
            @field(result, field.name) = val;
        } else if (@typeInfo(ValType) == .optional and ExpType == ?*anyopaque) {
            // Optional pointer
            @field(result, field.name) = val;
        } else {
            @compileError("Cannot coerce " ++ @typeName(ValType) ++ " to " ++ @typeName(ExpType));
        }
    }
    return result;
}

fn isStringLiteral(comptime T: type) bool {
    // Matches *const [N:0]u8 — the type of string literals like "hello"
    return switch (@typeInfo(T)) {
        .pointer => |p| p.size == .one and p.is_const and blk: {
            break :blk switch (@typeInfo(p.child)) {
                .array => |a| a.child == u8 and a.sentinel() != null,
                else => false,
            };
        },
        else => false,
    };
}

// ── Internals ──────────────────────────────────────────────────────────

/// Convert any ObjC-compatible pointer to a raw pointer for msgSend.
fn objcPtr(val: anytype) *anyopaque {
    const T = @TypeOf(val);
    return switch (@typeInfo(T)) {
        .pointer => @ptrCast(@constCast(val)),
        .optional => if (val) |v| @ptrCast(@constCast(v)) else @as(*anyopaque, @ptrFromInt(0)),
        else => @compileError("expected pointer type for objc target, got " ++ @typeName(T)),
    };
}

/// Build a function pointer type for objc_msgSend with the right return and arg types.
fn MsgSendFn(comptime ReturnType: type, comptime ArgsTuple: type) type {
    const args_info = @typeInfo(ArgsTuple).@"struct";
    const base_count = 2; // self + sel

    var params: [base_count + args_info.fields.len]std.builtin.Type.Fn.Param = undefined;

    // self
    params[0] = .{ .is_generic = false, .is_noalias = false, .type = *anyopaque };
    // _cmd
    params[1] = .{ .is_generic = false, .is_noalias = false, .type = Sel };

    // extra args
    for (args_info.fields, 0..) |field, i| {
        params[base_count + i] = .{ .is_generic = false, .is_noalias = false, .type = field.type };
    }

    return @Type(.{ .@"fn" = .{
        .calling_convention = cc,
        .is_generic = false,
        .is_var_args = false,
        .return_type = ReturnType,
        .params = &params,
    } });
}
