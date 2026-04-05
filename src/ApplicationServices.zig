//! ApplicationServices framework bindings for Zig.
//!
//! AXUIElement, AXObserver, AXValue and related C APIs from HIServices.
//! These are C functions, not ObjC classes — they use extern "c" linkage.

const std = @import("std");
const Foundation = @import("Foundation.zig");

// ── Core Foundation types ──────────────────────────────────────────────

pub const CFTypeRef = *anyopaque;
pub const CFStringRef = *anyopaque;
pub const CFArrayRef = *anyopaque;
pub const CFDictionaryRef = *anyopaque;
pub const CFAllocatorRef = *anyopaque;
pub const CFRunLoopSourceRef = *anyopaque;
pub const CFTypeID = c_ulong;
pub const CFIndex = i64;
pub const CFRange = extern struct { location: CFIndex, length: CFIndex };
pub const Boolean = u8;
pub const pid_t = c_int;

// ── Geometry (CF-level, layout-compatible with NSPoint/NSSize/NSRect) ──

pub const CGPoint = Foundation.NSPoint;
pub const CGSize = Foundation.NSSize;
pub const CGRect = Foundation.NSRect;

// ── AXError ────────────────────────────────────────────────────────────

pub const AXError = enum(i32) {
    success = 0,
    failure = -25200,
    illegal_argument = -25201,
    invalid_ui_element = -25202,
    invalid_ui_element_observer = -25203,
    cannot_complete = -25204,
    attribute_unsupported = -25205,
    action_unsupported = -25206,
    notification_unsupported = -25207,
    not_implemented = -25208,
    notification_already_registered = -25209,
    notification_not_registered = -25210,
    api_disabled = -25211,
    no_value = -25212,
    parameterized_attribute_unsupported = -25213,
    not_enough_precision = -25214,

    pub fn ok(self: AXError) bool {
        return self == .success;
    }

    pub fn err(self: AXError) ?AXError {
        return if (self == .success) null else self;
    }
};

// ── AXValueType ────────────────────────────────────────────────────────

pub const AXValueType = enum(u32) {
    illegal = 0,
    cg_point = 1,
    cg_size = 2,
    cg_rect = 3,
    cf_range = 4,
    ax_error = 5,
};

// ── Opaque handle types ───────────────────────────────────────────────

pub const AXUIElementRef = *opaque {};
pub const AXValueRef = *opaque {};
pub const AXObserverRef = *opaque {};
pub const AXTextMarkerRef = *opaque {};
pub const AXTextMarkerRangeRef = *opaque {};

pub const AXCopyMultipleAttributeOptions = u32;
pub const kAXCopyMultipleAttributeOptionStopOnError: AXCopyMultipleAttributeOptions = 0x1;

// ── Observer callbacks ────────────────────────────────────────────────

pub const AXObserverCallback = *const fn (
    observer: AXObserverRef,
    element: AXUIElementRef,
    notification: CFStringRef,
    refcon: ?*anyopaque,
) callconv(.c) void;

pub const AXObserverCallbackWithInfo = *const fn (
    observer: AXObserverRef,
    element: AXUIElementRef,
    notification: CFStringRef,
    info: CFDictionaryRef,
    refcon: ?*anyopaque,
) callconv(.c) void;

// ── Process trust ─────────────────────────────────────────────────────

pub extern "c" fn AXIsProcessTrusted() Boolean;
pub extern "c" fn AXIsProcessTrustedWithOptions(options: ?CFDictionaryRef) Boolean;

pub extern "c" var kAXTrustedCheckOptionPrompt: CFStringRef;

// ── AXUIElement ───────────────────────────────────────────────────────

pub extern "c" fn AXUIElementGetTypeID() CFTypeID;

pub extern "c" fn AXUIElementCreateApplication(pid: pid_t) AXUIElementRef;
pub extern "c" fn AXUIElementCreateSystemWide() AXUIElementRef;

pub extern "c" fn AXUIElementCopyAttributeNames(
    element: AXUIElementRef,
    names: *?CFArrayRef,
) AXError;

pub extern "c" fn AXUIElementCopyAttributeValue(
    element: AXUIElementRef,
    attribute: CFStringRef,
    value: *?CFTypeRef,
) AXError;

pub extern "c" fn AXUIElementGetAttributeValueCount(
    element: AXUIElementRef,
    attribute: CFStringRef,
    count: *CFIndex,
) AXError;

pub extern "c" fn AXUIElementCopyAttributeValues(
    element: AXUIElementRef,
    attribute: CFStringRef,
    index: CFIndex,
    max_values: CFIndex,
    values: *?CFArrayRef,
) AXError;

pub extern "c" fn AXUIElementIsAttributeSettable(
    element: AXUIElementRef,
    attribute: CFStringRef,
    settable: *Boolean,
) AXError;

pub extern "c" fn AXUIElementSetAttributeValue(
    element: AXUIElementRef,
    attribute: CFStringRef,
    value: CFTypeRef,
) AXError;

pub extern "c" fn AXUIElementCopyMultipleAttributeValues(
    element: AXUIElementRef,
    attributes: CFArrayRef,
    options: AXCopyMultipleAttributeOptions,
    values: *?CFArrayRef,
) AXError;

pub extern "c" fn AXUIElementCopyParameterizedAttributeNames(
    element: AXUIElementRef,
    names: *?CFArrayRef,
) AXError;

pub extern "c" fn AXUIElementCopyParameterizedAttributeValue(
    element: AXUIElementRef,
    parameterized_attribute: CFStringRef,
    parameter: CFTypeRef,
    result: *?CFTypeRef,
) AXError;

pub extern "c" fn AXUIElementCopyActionNames(
    element: AXUIElementRef,
    names: *?CFArrayRef,
) AXError;

pub extern "c" fn AXUIElementCopyActionDescription(
    element: AXUIElementRef,
    action: CFStringRef,
    description: *?CFStringRef,
) AXError;

pub extern "c" fn AXUIElementPerformAction(
    element: AXUIElementRef,
    action: CFStringRef,
) AXError;

pub extern "c" fn AXUIElementCopyElementAtPosition(
    application: AXUIElementRef,
    x: f32,
    y: f32,
    element: *?AXUIElementRef,
) AXError;

pub extern "c" fn AXUIElementGetPid(
    element: AXUIElementRef,
    pid: *pid_t,
) AXError;

pub extern "c" fn AXUIElementSetMessagingTimeout(
    element: AXUIElementRef,
    timeout_in_seconds: f32,
) AXError;

// ── AXObserver ────────────────────────────────────────────────────────

pub extern "c" fn AXObserverGetTypeID() CFTypeID;

pub extern "c" fn AXObserverCreate(
    application: pid_t,
    callback: AXObserverCallback,
    out_observer: *?AXObserverRef,
) AXError;

pub extern "c" fn AXObserverCreateWithInfoCallback(
    application: pid_t,
    callback: AXObserverCallbackWithInfo,
    out_observer: *?AXObserverRef,
) AXError;

pub extern "c" fn AXObserverAddNotification(
    observer: AXObserverRef,
    element: AXUIElementRef,
    notification: CFStringRef,
    refcon: ?*anyopaque,
) AXError;

pub extern "c" fn AXObserverRemoveNotification(
    observer: AXObserverRef,
    element: AXUIElementRef,
    notification: CFStringRef,
) AXError;

pub extern "c" fn AXObserverGetRunLoopSource(
    observer: AXObserverRef,
) CFRunLoopSourceRef;

// ── AXValue ───────────────────────────────────────────────────────────

pub extern "c" fn AXValueGetTypeID() CFTypeID;

pub extern "c" fn AXValueCreate(
    value_type: AXValueType,
    value_ptr: *const anyopaque,
) ?AXValueRef;

pub extern "c" fn AXValueGetType(value: AXValueRef) AXValueType;

pub extern "c" fn AXValueGetValue(
    value: AXValueRef,
    value_type: AXValueType,
    value_ptr: *anyopaque,
) Boolean;

// ── AXTextMarker ──────────────────────────────────────────────────────

pub extern "c" fn AXTextMarkerGetTypeID() CFTypeID;
pub extern "c" fn AXTextMarkerCreate(
    allocator: ?CFAllocatorRef,
    bytes: [*]const u8,
    length: CFIndex,
) AXTextMarkerRef;
pub extern "c" fn AXTextMarkerGetLength(marker: AXTextMarkerRef) CFIndex;
pub extern "c" fn AXTextMarkerGetBytePtr(marker: AXTextMarkerRef) [*]const u8;

pub extern "c" fn AXTextMarkerRangeGetTypeID() CFTypeID;
pub extern "c" fn AXTextMarkerRangeCreate(
    allocator: ?CFAllocatorRef,
    start_marker: AXTextMarkerRef,
    end_marker: AXTextMarkerRef,
) AXTextMarkerRangeRef;
pub extern "c" fn AXTextMarkerRangeCopyStartMarker(range: AXTextMarkerRangeRef) AXTextMarkerRef;
pub extern "c" fn AXTextMarkerRangeCopyEndMarker(range: AXTextMarkerRangeRef) AXTextMarkerRef;

// ── CoreFoundation helpers (minimal set needed for AX work) ───────────

pub extern "c" fn CFRelease(cf: CFTypeRef) void;
pub extern "c" fn CFRetain(cf: CFTypeRef) CFTypeRef;

pub extern "c" fn CFArrayGetCount(array: CFArrayRef) CFIndex;
pub extern "c" fn CFArrayGetValueAtIndex(array: CFArrayRef, idx: CFIndex) CFTypeRef;

pub extern "c" fn CFStringCreateWithCString(
    alloc: ?CFAllocatorRef,
    c_str: [*:0]const u8,
    encoding: u32,
) CFStringRef;
pub extern "c" fn CFStringGetCStringPtr(
    string: CFStringRef,
    encoding: u32,
) ?[*:0]const u8;
pub extern "c" fn CFStringGetCString(
    string: CFStringRef,
    buffer: [*]u8,
    buffer_size: CFIndex,
    encoding: u32,
) Boolean;
pub extern "c" fn CFStringGetLength(string: CFStringRef) CFIndex;

pub extern "c" fn CFGetTypeID(cf: CFTypeRef) CFTypeID;
pub extern "c" fn CFBooleanGetValue(boolean: CFTypeRef) Boolean;

pub extern "c" fn CFNumberGetValue(
    number: CFTypeRef,
    number_type: CFIndex,
    value_ptr: *anyopaque,
) Boolean;

pub extern "c" fn CFDictionaryCreate(
    allocator: ?CFAllocatorRef,
    keys: [*]const ?*const anyopaque,
    values: [*]const ?*const anyopaque,
    num_values: CFIndex,
    key_callbacks: ?*const anyopaque,
    value_callbacks: ?*const anyopaque,
) CFDictionaryRef;

/// kCFStringEncodingUTF8
pub const kCFStringEncodingUTF8: u32 = 0x08000100;

// ── Zig-ergonomic wrappers ────────────────────────────────────────────

/// Create a CFStringRef from a Zig string literal / slice.
pub fn cfStr(comptime s: [*:0]const u8) CFStringRef {
    return CFStringCreateWithCString(null, s, kCFStringEncodingUTF8);
}

/// Read a CFStringRef into a stack buffer, returning a Zig slice.
pub fn cfStringToSlice(cf_string: CFStringRef, buf: []u8) ?[]const u8 {
    // Fast path: direct pointer (ASCII/UTF-8 backing)
    if (CFStringGetCStringPtr(cf_string, kCFStringEncodingUTF8)) |ptr| {
        const len = std.mem.len(ptr);
        if (len > buf.len) return null;
        @memcpy(buf[0..len], ptr[0..len]);
        return buf[0..len];
    }
    // Slow path: copy into buffer
    const ok = CFStringGetCString(cf_string, buf.ptr, @intCast(buf.len), kCFStringEncodingUTF8);
    if (ok == 0) return null;
    const len = std.mem.indexOfScalar(u8, buf, 0) orelse buf.len;
    return buf[0..len];
}

/// Iterate a CFArray, calling `func` for each element.
pub fn cfArrayIterate(array: CFArrayRef, func: *const fn (CFTypeRef) void) void {
    const count = CFArrayGetCount(array);
    var i: CFIndex = 0;
    while (i < count) : (i += 1) {
        func(CFArrayGetValueAtIndex(array, i));
    }
}

/// Get the position (CGPoint) of an AXUIElement.
pub fn getPosition(element: AXUIElementRef) ?CGPoint {
    var value: ?CFTypeRef = null;
    if (AXUIElementCopyAttributeValue(element, cfStr("AXPosition"), &value).err()) |_| return null;
    const v = value orelse return null;
    defer CFRelease(v);
    var point: CGPoint = .{};
    if (AXValueGetValue(@ptrCast(v), .cg_point, @ptrCast(&point)) == 0) return null;
    return point;
}

/// Get the size (CGSize) of an AXUIElement.
pub fn getSize(element: AXUIElementRef) ?CGSize {
    var value: ?CFTypeRef = null;
    if (AXUIElementCopyAttributeValue(element, cfStr("AXSize"), &value).err()) |_| return null;
    const v = value orelse return null;
    defer CFRelease(v);
    var size: CGSize = .{};
    if (AXValueGetValue(@ptrCast(v), .cg_size, @ptrCast(&size)) == 0) return null;
    return size;
}

/// Get a string attribute (e.g. "AXRole", "AXTitle") from an AXUIElement.
pub fn getStringAttr(element: AXUIElementRef, comptime attr: [*:0]const u8, buf: []u8) ?[]const u8 {
    var value: ?CFTypeRef = null;
    if (AXUIElementCopyAttributeValue(element, cfStr(attr), &value).err()) |_| return null;
    const v = value orelse return null;
    defer CFRelease(v);
    return cfStringToSlice(@ptrCast(v), buf);
}

/// Get all children of an AXUIElement as a CFArray.
/// Caller must CFRelease the returned array.
pub fn getChildren(element: AXUIElementRef) ?CFArrayRef {
    var value: ?CFTypeRef = null;
    if (AXUIElementCopyAttributeValue(element, cfStr("AXChildren"), &value).err()) |_| return null;
    return @ptrCast(value);
}

/// Check whether accessibility is enabled, optionally prompting.
pub fn isTrusted(prompt: bool) bool {
    if (!prompt) return AXIsProcessTrusted() != 0;

    const keys = [_]?*const anyopaque{@ptrCast(kAXTrustedCheckOptionPrompt)};
    const kCFBooleanTrue = struct {
        extern "c" var kCFBooleanTrue: *anyopaque;
    }.kCFBooleanTrue;
    const values = [_]?*const anyopaque{@ptrCast(kCFBooleanTrue)};
    const opts = CFDictionaryCreate(null, &keys, &values, 1, null, null);
    defer CFRelease(@ptrCast(opts));
    return AXIsProcessTrustedWithOptions(opts) != 0;
}
