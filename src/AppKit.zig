//! AppKit bindings for Zig

const std = @import("std");
const objc = @import("objc.zig");

const Object = objc.Object;

// Re-export for convenience in main.zig
pub const Sel = objc.Sel;

pub const NSPoint = extern struct { x: f64 = 0, y: f64 = 0 };
pub const NSSize = extern struct { width: f64 = 0, height: f64 = 0 };
pub const NSRect = extern struct {
    origin: NSPoint = .{},
    size: NSSize = .{},
    pub fn make(x: f64, y: f64, w: f64, h: f64) NSRect {
        return .{ .origin = .{ .x = x, .y = y }, .size = .{ .width = w, .height = h } };
    }
};
pub const NSRange = extern struct { location: c_ulong, length: c_ulong };
pub const NSEdgeInsets = extern struct { top: f64, left: f64, bottom: f64, right: f64 };

pub const NSApplication = struct {
    obj: Object,

    const methods = .{
        .{ "setDelegate:", void, .{Object} },
        .{ "run", void, .{} },
        .{ "setActivationPolicy:", void, .{objc.NSInteger} },
        .{ "activateIgnoringOtherApps:", void, .{objc.BOOL} },
        .{ "terminate:", void, .{?*anyopaque} },
        .{ "setMainMenu:", void, .{Object} },
        .{ "setWindowsMenu:", void, .{Object} },
    };

    pub fn send(self: NSApplication, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub fn shared() NSApplication {
        return .{ .obj = objc.msgSendClass(Object, "NSApplication", "sharedApplication", .{}) };
    }

    pub const NSApplicationActivationPolicy = enum(i64) { regular = 0, accessory = 1, prohibited = 2 };
};

pub const NSWindow = struct {
    obj: Object,

    const methods = .{
        .{ "setTitle:", void, .{objc.NSString} },
        .{ "setSubtitle:", void, .{objc.NSString} },
        .{ "setToolbar:", void, .{Object} },
        .{ "setToolbarStyle:", void, .{objc.NSInteger} },
        .{ "setTitleVisibility:", void, .{objc.NSInteger} },
        .{ "setDelegate:", void, .{Object} },
        .{ "setContentView:", void, .{Object} },
        .{ "setMinSize:", void, .{NSSize} },
        .{ "contentView", Object, .{} },
        .{ "makeKeyAndOrderFront:", void, .{?*anyopaque} },
        .{ "center", void, .{} },
    };

    pub fn send(self: NSWindow, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const Style = struct {
        titled: bool = true,
        closable: bool = true,
        miniaturizable: bool = true,
        resizable: bool = true,
    };

    pub const Config = struct {
        title: [*:0]const u8 = "Untitled",
        x: f64 = 200,
        y: f64 = 200,
        width: f64 = 600,
        height: f64 = 400,
        style: Style = .{},
    };

    pub fn create(cfg: Config) NSWindow {
        var mask: c_ulong = 0;
        if (cfg.style.titled) mask |= (1 << 0);
        if (cfg.style.closable) mask |= (1 << 1);
        if (cfg.style.miniaturizable) mask |= (1 << 2);
        if (cfg.style.resizable) mask |= (1 << 3);
        const alloc = objc.msgSendClass(Object, "NSWindow", "alloc", .{});
        const win = objc.msgSend(Object, alloc, "initWithContentRect:styleMask:backing:defer:", .{
            NSRect.make(cfg.x, cfg.y, cfg.width, cfg.height), mask, @as(c_ulong, 2), @as(u8, 0),
        });
        objc.msgSend(void, win, "setTitle:", .{objc.nsString(cfg.title)});
        objc.msgSend(void, win, "center", .{});
        return .{ .obj = win };
    }

    pub const NSWindowToolbarStyle = enum(i64) { automatic = 0, expanded = 1, preference = 2, unified = 3, unifiedCompact = 4 };
    pub const NSWindowTitleVisibility = enum(i64) { visible = 0, hidden = 1 };
};

pub const NSToolbarItemIdentifier = struct {
    pub const flexibleSpace = "NSToolbarFlexibleSpaceItem";
    pub const space = "NSToolbarSpaceItem";
    pub const showColors = "NSToolbarShowColorsItem";
    pub const showFonts = "NSToolbarShowFontsItem";
    pub const print = "NSToolbarPrintItem";
};

pub const NSView = struct {
    obj: Object,

    const methods = .{
        .{ "addSubview:", void, .{Object} },
        .{ "setWantsLayer:", void, .{objc.BOOL} },
        .{ "setTranslatesAutoresizingMaskIntoConstraints:", void, .{objc.BOOL} },
        .{ "layer", Object, .{} },
        .{ "setContentHuggingPriority:forOrientation:", void, .{ f32, objc.NSInteger } },
        .{ "setContentCompressionResistancePriority:forOrientation:", void, .{ f32, objc.NSInteger } },
        .{ "removeFromSuperview", void, .{} },
    };

    pub fn send(self: NSView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub fn create() NSView {
        const v = objc.msgSend(Object, objc.msgSendClass(Object, "NSView", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 0, 0)});
        return .{ .obj = v };
    }
};

pub const NSStackView = struct {
    obj: Object,

    const methods = .{
        .{ "addArrangedSubview:", void, .{Object} },
        .{ "removeArrangedSubview:", void, .{Object} },
        .{ "setSpacing:", void, .{objc.CGFloat} },
        .{ "setEdgeInsets:", void, .{ f64, f64, f64, f64 } }, // NSEdgeInsets passed as 4 doubles on ARM64
        .{ "setAlignment:", void, .{objc.NSInteger} },
        .{ "setDistribution:", void, .{objc.NSInteger} },
        .{ "setOrientation:", void, .{objc.NSInteger} },
        .{ "arrangedSubviews", Object, .{} },
        .{ "setTranslatesAutoresizingMaskIntoConstraints:", void, .{objc.BOOL} },
        .{ "setContentHuggingPriority:forOrientation:", void, .{ f32, objc.NSInteger } },
    };

    pub fn send(self: NSStackView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const NSUserInterfaceLayoutOrientation = enum(i64) { horizontal = 0, vertical = 1 };
    pub const NSStackViewGravity = enum(i64) { top = 1, leading = 1, center = 2, bottom = 3, trailing = 3 };

    pub fn create(orientation: NSUserInterfaceLayoutOrientation) NSStackView {
        const v = objc.msgSend(Object, objc.msgSendClass(Object, "NSStackView", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 0, 0)});
        objc.msgSend(void, v, "setOrientation:", .{@intFromEnum(orientation)});
        objc.msgSend(void, v, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = v };
    }
};

pub const NSTextField = struct {
    obj: Object,

    const methods = .{
        .{ "setFont:", void, .{Object} },
        .{ "setTextColor:", void, .{Object} },
        .{ "setStringValue:", void, .{objc.NSString} },
        .{ "stringValue", Object, .{} },
        .{ "setEditable:", void, .{objc.BOOL} },
        .{ "setBezeled:", void, .{objc.BOOL} },
        .{ "setDrawsBackground:", void, .{objc.BOOL} },
        .{ "setAlignment:", void, .{objc.NSInteger} },
        .{ "setDelegate:", void, .{Object} },
        .{ "setAccessibilityLabel:", void, .{objc.NSString} },
        .{ "setAttributedStringValue:", void, .{Object} },
        .{ "setPlaceholderString:", void, .{objc.NSString} },
        .{ "cell", Object, .{} },
        .{ "setTranslatesAutoresizingMaskIntoConstraints:", void, .{objc.BOOL} },
        .{ "setContentHuggingPriority:forOrientation:", void, .{ f32, objc.NSInteger } },
        .{ "setContentCompressionResistancePriority:forOrientation:", void, .{ f32, objc.NSInteger } },
    };

    pub fn send(self: NSTextField, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub fn createLabel(text: [*:0]const u8) NSTextField {
        const label = objc.msgSendClass(Object, "NSTextField", "labelWithString:", .{objc.nsString(text)});
        objc.msgSend(void, label, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = label };
    }

    pub fn createInput(placeholder: [*:0]const u8) NSTextField {
        const field = objc.msgSend(Object, objc.msgSendClass(Object, "NSTextField", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 200, 24)});
        objc.msgSend(void, field, "setPlaceholderString:", .{objc.nsString(placeholder)});
        objc.msgSend(void, field, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = field };
    }

    pub fn stringValueZ(self: NSTextField) ?[*:0]const u8 {
        const ns_str = objc.msgSend(Object, self.obj, "stringValue", .{});
        return objc.toZigString(ns_str);
    }

    pub fn setLineBreakMode(self: NSTextField, mode: i64) void {
        const cell = objc.msgSend(Object, self.obj, "cell", .{});
        objc.msgSend(void, cell, "setLineBreakMode:", .{mode});
    }
};

pub const NSButton = struct {
    obj: Object,

    const methods = .{
        .{ "setBezelStyle:", void, .{objc.NSInteger} },
        .{ "setKeyEquivalent:", void, .{objc.NSString} },
        .{ "setTag:", void, .{objc.NSInteger} },
        .{ "tag", objc.NSInteger, .{} },
        .{ "state", objc.NSInteger, .{} },
        .{ "setState:", void, .{objc.NSInteger} },
        .{ "setAccessibilityLabel:", void, .{objc.NSString} },
        .{ "setEnabled:", void, .{objc.BOOL} },
        .{ "setBordered:", void, .{objc.BOOL} },
        .{ "setContentTintColor:", void, .{Object} },
        .{ "setTranslatesAutoresizingMaskIntoConstraints:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSButton, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub fn create(title: [*:0]const u8, target: Object, action: Sel) NSButton {
        const btn = objc.msgSendClass(Object, "NSButton", "buttonWithTitle:target:action:", .{ objc.nsString(title), target, action });
        objc.msgSend(void, btn, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = btn };
    }

    pub fn createCheckbox(title: [*:0]const u8, target: Object, action: Sel) NSButton {
        const btn = objc.msgSendClass(Object, "NSButton", "checkboxWithTitle:target:action:", .{ objc.nsString(title), target, action });
        objc.msgSend(void, btn, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = btn };
    }

    pub fn createImage(symbol: [*:0]const u8, desc: [*:0]const u8, target: Object, action: Sel) NSButton {
        const img = objc.msgSendClass(Object, "NSImage", "imageWithSystemSymbolName:accessibilityDescription:", .{ objc.nsString(symbol), objc.nsString(desc) });
        const btn = objc.msgSendClass(Object, "NSButton", "buttonWithImage:target:action:", .{ img, target, action });
        objc.msgSend(void, btn, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = btn };
    }
};

pub const NSScrollView = struct {
    obj: Object,

    const methods = .{
        .{ "setDocumentView:", void, .{Object} },
        .{ "setDrawsBackground:", void, .{objc.BOOL} },
        .{ "setContentView:", void, .{Object} },
        .{ "contentView", Object, .{} },
        .{ "setTranslatesAutoresizingMaskIntoConstraints:", void, .{objc.BOOL} },
        .{ "setContentHuggingPriority:forOrientation:", void, .{ f32, objc.NSInteger } },
    };

    pub fn send(self: NSScrollView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub fn create() NSScrollView {
        const v = objc.msgSend(Object, objc.msgSendClass(Object, "NSScrollView", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 0, 0)});
        objc.msgSend(void, v, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        objc.msgSend(void, v, "setHasVerticalScroller:", .{@as(u8, 1)});
        objc.msgSend(void, v, "setAutohidesScrollers:", .{@as(u8, 1)});
        return .{ .obj = v };
    }
};

pub const NSImageView = struct {
    obj: Object,

    const methods = .{
        .{ "setContentTintColor:", void, .{Object} },
        .{ "setSymbolConfiguration:", void, .{Object} },
        .{ "setTranslatesAutoresizingMaskIntoConstraints:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSImageView, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub fn createWithSymbol(name: [*:0]const u8, desc: [*:0]const u8) NSImageView {
        const img = objc.msgSendClass(Object, "NSImage", "imageWithSystemSymbolName:accessibilityDescription:", .{ objc.nsString(name), objc.nsString(desc) });
        const iv = objc.msgSendClass(Object, "NSImageView", "imageViewWithImage:", .{img});
        objc.msgSend(void, iv, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = iv };
    }
};

pub const NSSegmentedControl = struct {
    obj: Object,

    const methods = .{
        .{ "setSegmentCount:", void, .{objc.NSInteger} },
        .{ "setLabel:forSegment:", void, .{ objc.NSString, objc.NSInteger } },
        .{ "setSelectedSegment:", void, .{objc.NSInteger} },
        .{ "selectedSegment", objc.NSInteger, .{} },
        .{ "setSegmentStyle:", void, .{objc.NSInteger} },
        .{ "setTarget:", void, .{Object} },
        .{ "setAction:", void, .{Sel} },
        .{ "setTranslatesAutoresizingMaskIntoConstraints:", void, .{objc.BOOL} },
    };

    pub fn send(self: NSSegmentedControl, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub fn create(frame: NSRect) NSSegmentedControl {
        const seg = objc.msgSend(Object, objc.msgSendClass(Object, "NSSegmentedControl", "alloc", .{}), "initWithFrame:", .{frame});
        objc.msgSend(void, seg, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = seg };
    }
};

pub const NSColor = struct {
    const class_methods = .{
        .{ "systemRedColor", Object, .{} },
        .{ "systemOrangeColor", Object, .{} },
        .{ "systemBlueColor", Object, .{} },
        .{ "systemGreenColor", Object, .{} },
        .{ "systemGrayColor", Object, .{} },
        .{ "whiteColor", Object, .{} },
        .{ "blackColor", Object, .{} },
        .{ "clearColor", Object, .{} },
        .{ "labelColor", Object, .{} },
        .{ "secondaryLabelColor", Object, .{} },
        .{ "tertiaryLabelColor", Object, .{} },
        .{ "separatorColor", Object, .{} },
        .{ "controlBackgroundColor", Object, .{} },
        .{ "windowBackgroundColor", Object, .{} },
        .{ "colorWithRed:green:blue:alpha:", Object, .{ f64, f64, f64, f64 } },
    };

    const instance_methods = .{
        .{ "CGColor", ?*anyopaque, .{} },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSColor", class_methods, selector, args);
    }

    pub fn send(ns_color: Object, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(instance_methods, selector) {
        return objc.typedSend(instance_methods, ns_color, selector, args);
    }
};

pub const NSFont = struct {
    const class_methods = .{
        .{ "systemFontOfSize:", Object, .{f64} },
        .{ "boldSystemFontOfSize:", Object, .{f64} },
        .{ "monospacedSystemFontOfSize:weight:", Object, .{ f64, f64 } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSFont", class_methods, selector, args);
    }
};

pub const NSBox = struct {
    obj: Object,

    pub const NSBoxType = enum(i64) { primary = 0, separator = 2, custom = 4 };

    pub fn createSeparator() NSBox {
        const b = objc.msgSend(Object, objc.msgSendClass(Object, "NSBox", "alloc", .{}), "initWithFrame:", .{NSRect.make(0, 0, 0, 1)});
        objc.msgSend(void, b, "setBoxType:", .{@as(i64, @intFromEnum(NSBoxType.separator))});
        objc.msgSend(void, b, "setTranslatesAutoresizingMaskIntoConstraints:", .{@as(u8, 0)});
        return .{ .obj = b };
    }
};

pub const NSMenu = struct {
    obj: Object,

    pub fn create(title: [*:0]const u8) NSMenu {
        const m = objc.msgSend(Object, objc.msgSendClass(Object, "NSMenu", "alloc", .{}), "initWithTitle:", .{objc.nsString(title)});
        return .{ .obj = m };
    }

    pub fn addItem(self: NSMenu, item: Object) void {
        objc.msgSend(void, self.obj, "addItem:", .{item});
    }

    pub fn addItemWithTitle(self: NSMenu, title: [*:0]const u8, action: ?Sel, key: [*:0]const u8) Object {
        return objc.msgSend(Object, self.obj, "addItemWithTitle:action:keyEquivalent:", .{
            objc.nsString(title), action, objc.nsString(key),
        });
    }
};

pub const NSMenuItem = struct {
    obj: Object,

    const methods = .{
        .{ "setSubmenu:", void, .{Object} },
    };

    pub fn send(self: NSMenuItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub fn separator() Object {
        return objc.msgSendClass(Object, "NSMenuItem", "separatorItem", .{});
    }
    pub fn create() NSMenuItem {
        return .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSMenuItem", "alloc", .{}), "init", .{}) };
    }
};

pub const NSToolbarItem = struct {
    obj: Object,

    const methods = .{
        .{ "setView:", void, .{Object} },
        .{ "setLabel:", void, .{objc.NSString} },
    };

    pub fn send(self: NSToolbarItem, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub fn create(identifier: Object) NSToolbarItem {
        const item = objc.msgSend(Object, objc.msgSendClass(Object, "NSToolbarItem", "alloc", .{}), "initWithItemIdentifier:", .{identifier});
        return .{ .obj = item };
    }
};

pub const NSToolbar = struct {
    obj: Object,

    const methods = .{
        .{ "setDelegate:", void, .{Object} },
        .{ "setDisplayMode:", void, .{objc.NSInteger} },
    };

    pub fn send(self: NSToolbar, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub const NSToolbarDisplayMode = enum(i64) { default = 0, iconAndLabel = 1, iconOnly = 2, labelOnly = 3 };

    pub fn create(identifier: [*:0]const u8) NSToolbar {
        const tb = objc.msgSend(Object, objc.msgSendClass(Object, "NSToolbar", "alloc", .{}), "initWithIdentifier:", .{objc.nsString(identifier)});
        return .{ .obj = tb };
    }
};

pub const NSImageSymbolConfiguration = struct {
    const class_methods = .{
        .{ "configurationWithPointSize:weight:", Object, .{ f64, f64 } },
    };

    pub fn class(comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(class_methods, selector) {
        return objc.typedClassSend("NSImageSymbolConfiguration", class_methods, selector, args);
    }
};

pub const NSMutableAttributedString = struct {
    obj: Object,

    const methods = .{
        .{ "addAttribute:value:range:", void, .{ objc.NSString, Object, NSRange } },
    };

    pub fn send(self: NSMutableAttributedString, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }

    pub fn create(string: Object) NSMutableAttributedString {
        const attr = objc.msgSend(Object, objc.msgSendClass(Object, "NSMutableAttributedString", "alloc", .{}), "initWithString:", .{string});
        return .{ .obj = attr };
    }
};

pub const CALayer = struct {
    obj: Object,

    const methods = .{
        .{ "setBackgroundColor:", void, .{?*anyopaque} },
    };

    pub fn send(self: CALayer, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSArrayObj = struct {
    obj: Object,

    const methods = .{
        .{ "count", c_ulong, .{} },
        .{ "objectAtIndex:", Object, .{c_ulong} },
    };

    pub fn send(self: NSArrayObj, comptime selector: [*:0]const u8, args: anytype) objc.SendReturn(methods, selector) {
        return objc.typedSend(methods, self.obj, selector, args);
    }
};

pub const NSLayoutConstraint = struct {
    pub const NSLayoutAttribute = enum(i64) {
        notAnAttribute = 0,
        left = 1,
        right = 2,
        top = 3,
        bottom = 4,
        leading = 5,
        trailing = 6,
        width = 7,
        height = 8,
        centerX = 9,
        centerY = 10,
    };

    pub const NSLayoutRelation = enum(i64) { lessThanOrEqual = -1, equal = 0, greaterThanOrEqual = 1 };

    pub fn make(item: Object, attr: NSLayoutAttribute, rel: NSLayoutRelation, to_item: ?Object, to_attr: NSLayoutAttribute, mult: f64, constant: f64) Object {
        return objc.msgSendClass(Object, "NSLayoutConstraint", "constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:", .{
            item,                                                     @intFromEnum(attr),    @intFromEnum(rel),
            @as(?*anyopaque, if (to_item) |t| @ptrCast(t) else null), @intFromEnum(to_attr), mult,
            constant,
        });
    }

    pub fn activate(constraints: []const Object) void {
        const arr = objc.msgSendClass(Object, "NSMutableArray", "arrayWithCapacity:", .{@as(c_ulong, constraints.len)});
        for (constraints) |c| objc.msgSend(void, arr, "addObject:", .{c});
        objc.msgSend(void, objc.getClass("NSLayoutConstraint").?, "activateConstraints:", .{arr});
    }

    pub fn pinWidthEqual(child: Object, parent: Object) void {
        activate(&.{make(child, .width, .equal, parent, .width, 1.0, 0.0)});
    }

    pub fn fill(parent: Object, child: Object, inset: f64) void {
        activate(&.{
            make(child, .leading, .equal, parent, .leading, 1.0, inset),
            make(child, .trailing, .equal, parent, .trailing, 1.0, -inset),
            make(child, .top, .equal, parent, .top, 1.0, inset),
            make(child, .bottom, .equal, parent, .bottom, 1.0, -inset),
        });
    }
};

/// Extract the Object from any appkit struct or pass through a raw Object.
pub fn viewObj(val: anytype) Object {
    const T = @TypeOf(val);
    if (T == Object) return val;
    if (@hasField(T, "obj")) return val.obj;
    @compileError("cannot extract obj from " ++ @typeName(T));
}

/// Create an alloc+init'd NSObject subclass by name.
pub fn init(comptime class: [*:0]const u8) Object {
    return objc.msgSend(Object, objc.msgSendClass(Object, class, "alloc", .{}), "init", .{});
}

/// Build an NSArray from a slice of Objects.
pub fn nsArray(items: []const Object) Object {
    const arr = objc.msgSendClass(Object, "NSMutableArray", "arrayWithCapacity:", .{@as(c_ulong, items.len)});
    for (items) |item| objc.msgSend(void, arr, "addObject:", .{item});
    return arr;
}

/// Format into a null-terminated buffer and return as [*:0]const u8.
pub fn fmtZ(comptime fmt_str: []const u8, args: anytype, buf: []u8) [*:0]const u8 {
    const msg = std.fmt.bufPrint(buf[0 .. buf.len - 1], fmt_str, args) catch "?";
    buf[msg.len] = 0;
    return @ptrCast(buf[0..msg.len :0]);
}
