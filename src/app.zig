//! A macOS todo app built entirely in Zig.
//!
//! Uses AppKit via Objective-C runtime calls. No Swift, no Xcode.
//! Matches the macOS 26 Tahoe design with NSToolbar glass effect.

const std = @import("std");
const objc = @import("objc.zig");
const AppKit = @import("AppKit.zig");
const Foundation = @import("Foundation.zig");

const cc = std.builtin.CallingConvention.c;
const Object = objc.Object;

// ── Todoz types & state ──────────────────────────────────────────────────

const max_todos = 256;
const max_title_len = 256;

const Todoz = struct {
    id: u64,
    title: [max_title_len]u8,
    title_len: u32,
    completed: bool,
};

var todos: [max_todos]Todoz = undefined;
var todo_count: u32 = 0;
var next_id: u64 = 1;

fn addTodozItem(title_ptr: [*]const u8, title_len: u32) u64 {
    if (todo_count >= max_todos) return 0;
    if (title_len == 0 or title_len > max_title_len) return 0;

    const id = next_id;
    next_id += 1;

    var t: Todoz = .{
        .id = id,
        .title = std.mem.zeroes([max_title_len]u8),
        .title_len = title_len,
        .completed = false,
    };
    @memcpy(t.title[0..title_len], title_ptr[0..title_len]);

    todos[todo_count] = t;
    todo_count += 1;
    return id;
}

fn removeTodozItem(id: u64) bool {
    for (0..todo_count) |i| {
        if (todos[i].id == id) {
            if (i + 1 < todo_count) {
                const dest = todos[i .. todo_count - 1];
                const src = todos[i + 1 .. todo_count];
                @memcpy(dest, src);
            }
            todo_count -= 1;
            return true;
        }
    }
    return false;
}

fn toggleTodozItem(id: u64) bool {
    for (0..todo_count) |i| {
        if (todos[i].id == id) {
            todos[i].completed = !todos[i].completed;
            return true;
        }
    }
    return false;
}

fn getTodozItem(index: u32) ?*const Todoz {
    if (index >= todo_count) return null;
    return &todos[index];
}

fn clearCompletedItems() u32 {
    var removed: u32 = 0;
    var i: u32 = 0;
    while (i < todo_count) {
        if (todos[i].completed) {
            if (i + 1 < todo_count) {
                const dest = todos[i .. todo_count - 1];
                const src = todos[i + 1 .. todo_count];
                @memcpy(dest, src);
            }
            todo_count -= 1;
            removed += 1;
        } else {
            i += 1;
        }
    }
    return removed;
}

fn countCompleted() u32 {
    var count: u32 = 0;
    for (0..todo_count) |i| {
        if (todos[i].completed) count += 1;
    }
    return count;
}

fn countPending() u32 {
    return todo_count - countCompleted();
}

// ── App state ──────────────────────────────────────────────────────────

var main_window: AppKit.NSWindow = undefined;
var todo_list_stack: AppKit.NSStackView = undefined;
var input_field: AppKit.NSTextField = undefined;
var filter_seg: AppKit.NSSegmentedControl = undefined;
var scroll_view: AppKit.NSScrollView = undefined;
var empty_container: AppKit.NSStackView = undefined;
var toolbar_delegate_inst: Object = undefined;

// ── Entry point ────────────────────────────────────────────────────────

pub fn main() void {
    const pool = objc.autoreleasePoolPush();
    defer objc.autoreleasePoolPop(pool);

    const app = AppKit.NSApplication.shared();
    _ = app.send("setActivationPolicy:", .{AppKit.NSApplication.ActivationPolicy.regular});

    setupMenu(app);
    registerAllClasses();

    const delegate_inst = AppKit.init("TodozAppDelegate");
    app.send("setDelegate:", .{delegate_inst});
    app.send("run", .{});
}

// ── Menu bar ───────────────────────────────────────────────────────────

fn setupMenu(app: AppKit.NSApplication) void {
    const bar = AppKit.NSMenu.create("");

    { // App menu
        const item = AppKit.NSMenuItem.create();
        const menu = AppKit.NSMenu.create("Todoz");
        _ = menu.addItemWithTitle("About Todoz", null, "");
        menu.addItem(AppKit.NSMenuItem.separator());
        _ = menu.addItemWithTitle("Hide Todoz", objc.sel("hide:"), "h");
        _ = menu.addItemWithTitle("Hide Others", objc.sel("hideOtherApplications:"), "");
        menu.addItem(AppKit.NSMenuItem.separator());
        _ = menu.addItemWithTitle("Quit Todoz", objc.sel("terminate:"), "q");
        item.send("setSubmenu:", .{menu.obj});
        bar.addItem(item.obj);
    }

    { // Edit menu
        const item = AppKit.NSMenuItem.create();
        const menu = AppKit.NSMenu.create("Edit");
        _ = menu.addItemWithTitle("Undo", objc.sel("undo:"), "z");
        _ = menu.addItemWithTitle("Redo", objc.sel("redo:"), "Z");
        menu.addItem(AppKit.NSMenuItem.separator());
        _ = menu.addItemWithTitle("Cut", objc.sel("cut:"), "x");
        _ = menu.addItemWithTitle("Copy", objc.sel("copy:"), "c");
        _ = menu.addItemWithTitle("Paste", objc.sel("paste:"), "v");
        _ = menu.addItemWithTitle("Select All", objc.sel("selectAll:"), "a");
        item.send("setSubmenu:", .{menu.obj});
        bar.addItem(item.obj);
    }

    { // Window menu
        const item = AppKit.NSMenuItem.create();
        const menu = AppKit.NSMenu.create("Window");
        _ = menu.addItemWithTitle("Close", objc.sel("performClose:"), "w");
        _ = menu.addItemWithTitle("Minimize", objc.sel("performMiniaturize:"), "m");
        _ = menu.addItemWithTitle("Zoom", objc.sel("performZoom:"), "");
        item.send("setSubmenu:", .{menu.obj});
        bar.addItem(item.obj);
        app.send("setWindowsMenu:", .{menu.obj});
    }

    app.send("setMainMenu:", .{bar.obj});
}

// ── ObjC class registration ────────────────────────────────────────────

fn registerAllClasses() void {
    { // App delegate
        const cls = objc.allocateClassPair(objc.getClass("NSObject").?, "TodozAppDelegate") orelse @panic("failed");
        _ = objc.addMethod(cls, objc.sel("applicationDidFinishLaunching:"), @ptrCast(&appDidFinishLaunching), "v@:@");
        _ = objc.addMethod(cls, objc.sel("applicationShouldTerminateAfterLastWindowClosed:"), @ptrCast(&appShouldTerminate), "B@:@");
        objc.registerClassPair(cls);
    }
    {
        const cls = objc.allocateClassPair(objc.getClass("NSObject").?, "TodozInputDelegate") orelse return;
        _ = objc.addMethod(cls, objc.sel("control:textView:doCommandBySelector:"), @ptrCast(&inputDoCommand), "B@:@@:");
        _ = objc.addMethod(cls, objc.sel("addTodoz:"), @ptrCast(&addTodozAction), "v@:@");
        objc.registerClassPair(cls);
    }
    {
        const cls = objc.allocateClassPair(objc.getClass("NSObject").?, "TodozActionHandler") orelse return;
        _ = objc.addMethod(cls, objc.sel("clearCompleted:"), @ptrCast(&clearCompletedAction), "v@:@");
        _ = objc.addMethod(cls, objc.sel("toggleTodoz:"), @ptrCast(&toggleTodozAction), "v@:@");
        _ = objc.addMethod(cls, objc.sel("removeTodoz:"), @ptrCast(&removeTodozAction), "v@:@");
        _ = objc.addMethod(cls, objc.sel("filterChanged:"), @ptrCast(&filterChangedAction), "v@:@");
        objc.registerClassPair(cls);
    }
    {
        const cls = objc.allocateClassPair(objc.getClass("NSObject").?, "TodozToolbarDelegate") orelse return;
        _ = objc.addMethod(cls, objc.sel("toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:"), @ptrCast(&toolbarItemForIdentifier), "@36@0:8@16@24B32");
        _ = objc.addMethod(cls, objc.sel("toolbarAllowedItemIdentifiers:"), @ptrCast(&toolbarAllowedIdentifiers), "@24@0:8@16");
        _ = objc.addMethod(cls, objc.sel("toolbarDefaultItemIdentifiers:"), @ptrCast(&toolbarDefaultIdentifiers), "@24@0:8@16");
        objc.registerClassPair(cls);
    }
    {
        const cls = objc.allocateClassPair(objc.getClass("NSClipView").?, "TodozFlippedClipView") orelse return;
        _ = objc.addMethod(cls, objc.sel("isFlipped"), @ptrCast(&flippedClipIsFlipped), "B@:");
        objc.registerClassPair(cls);
    }
}

// ── Delegate callbacks ─────────────────────────────────────────────────

fn appDidFinishLaunching(_: Object, _: objc.Sel, _: Object) callconv(cc) void {
    buildUI();
}
fn appShouldTerminate(_: Object, _: objc.Sel, _: Object) callconv(cc) u8 {
    return 1;
}
fn flippedClipIsFlipped(_: Object, _: objc.Sel) callconv(cc) u8 {
    return 1;
}

// ── Toolbar ────────────────────────────────────────────────────────────

const tb_filter = "org.nounder.todoz.filter";

fn toolbarItemForIdentifier(_: Object, _: objc.Sel, _: Object, ident: Object, _: u8) callconv(cc) ?Object {
    const ident_str = objc.toZigString(ident) orelse return null;
    const ident_slice = std.mem.span(ident_str);

    if (std.mem.eql(u8, ident_slice, tb_filter)) {
        const item = AppKit.NSToolbarItem.create(ident);
        const handler = AppKit.init("TodozActionHandler");

        filter_seg = AppKit.NSSegmentedControl.create(AppKit.NSRect.make(0, 0, 200, 24));
        filter_seg.send("setSegmentCount:", .{@as(i64, 3)});
        filter_seg.send("setLabel:forSegment:", .{ "All", @as(i64, 0) });
        filter_seg.send("setLabel:forSegment:", .{ "Pending", @as(i64, 1) });
        filter_seg.send("setLabel:forSegment:", .{ "Completed", @as(i64, 2) });
        filter_seg.send("setSelectedSegment:", .{@as(i64, 0)});
        filter_seg.send("setSegmentStyle:", .{@as(i64, 0)});
        filter_seg.send("setTarget:", .{handler});
        filter_seg.send("setAction:", .{objc.sel("filterChanged:")});

        item.send("setView:", .{filter_seg.obj});
        return item.obj;
    }

    return null;
}

fn toolbarAllowedIdentifiers(_: Object, _: objc.Sel, _: Object) callconv(cc) Object {
    return AppKit.nsArray(&.{objc.nsString(tb_filter)});
}

fn toolbarDefaultIdentifiers(_: Object, _: objc.Sel, _: Object) callconv(cc) Object {
    return AppKit.nsArray(&.{
        objc.nsString(AppKit.NSToolbarItemIdentifier.flexibleSpace),
        objc.nsString(tb_filter),
        objc.nsString(AppKit.NSToolbarItemIdentifier.flexibleSpace),
    });
}

// ── UI construction ────────────────────────────────────────────────────

fn buildUI() void {
    main_window = AppKit.NSWindow.create(.{ .title = "Todoz", .width = 560, .height = 680 });
    main_window.send("setMinSize:", .{AppKit.NSSize{ .width = 440, .height = 400 }});
    main_window.send("setSubtitle:", .{"0 pending \xc2\xb7 0 done"});

    { // Toolbar
        const toolbar = AppKit.NSToolbar.create("org.nounder.todoz.toolbar");
        toolbar_delegate_inst = AppKit.init("TodozToolbarDelegate");
        toolbar.send("setDelegate:", .{toolbar_delegate_inst});
        toolbar.send("setDisplayMode:", .{AppKit.NSToolbar.DisplayMode.iconOnly});
        main_window.send("setToolbar:", .{toolbar.obj});
        main_window.send("setToolbarStyle:", .{AppKit.NSWindow.ToolbarStyle.unified});
    }

    const root = AppKit.NSStackView.create(.vertical);
    root.send("setSpacing:", .{@as(f64, 0)});

    { // Input bar
        input_field = AppKit.NSTextField.createInput("What needs to be done?");
        objc.msgSend(void, input_field.obj, "setAccessibilityLabel:", .{objc.nsString("New todo title")});
        input_field.send("setFont:", .{AppKit.NSFont.class("systemFontOfSize:", .{@as(f64, 13)})});
        input_field.send("setContentHuggingPriority:forOrientation:", .{ @as(f32, 249), @as(i64, 0) });

        const del = AppKit.init("TodozInputDelegate");
        input_field.send("setDelegate:", .{del});

        const bar = AppKit.NSStackView.create(.horizontal);
        bar.send("setSpacing:", .{@as(f64, 10)});
        bar.send("setEdgeInsets:", .{AppKit.NSEdgeInsets{ .top = 10, .left = 16, .bottom = 10, .right = 16 }});
        bar.send("addArrangedSubview:", .{input_field.obj});
        root.send("addArrangedSubview:", .{bar.obj});
    }

    root.send("addArrangedSubview:", .{AppKit.NSBox.createSeparator().obj});

    { // Scroll view + todo list
        scroll_view = AppKit.NSScrollView.create();
        scroll_view.send("setDrawsBackground:", .{false});

        todo_list_stack = AppKit.NSStackView.create(.vertical);
        todo_list_stack.send("setSpacing:", .{@as(f64, 0)});

        const fclip = objc.msgSend(Object, objc.msgSendClass(Object, "TodozFlippedClipView", "alloc", .{}), "initWithFrame:", .{AppKit.NSRect.make(0, 0, 0, 0)});
        scroll_view.send("setContentView:", .{fclip});
        scroll_view.send("setDocumentView:", .{todo_list_stack.obj});

        todo_list_stack.send("setTranslatesAutoresizingMaskIntoConstraints:", .{false});
        const clip_view = scroll_view.send("contentView", .{});
        AppKit.NSLayoutConstraint.pinWidthEqual(todo_list_stack.obj, clip_view.obj);

        root.send("addArrangedSubview:", .{scroll_view.obj});
        scroll_view.send("setContentHuggingPriority:forOrientation:", .{ @as(f32, 249), @as(i64, 1) });
    }

    { // Empty state
        empty_container = AppKit.NSStackView.create(.vertical);
        empty_container.send("setSpacing:", .{@as(f64, 6)});
        empty_container.send("setEdgeInsets:", .{AppKit.NSEdgeInsets{ .top = 60, .left = 60, .bottom = 60, .right = 60 }});
        empty_container.send("setAlignment:", .{@as(i64, 9)}); // centerX

        const icon = AppKit.NSImageView.createWithSymbol("checkmark.circle", "No todos");
        icon.send("setContentTintColor:", .{AppKit.NSColor.class("secondaryLabelColor", .{})});
        icon.send("setSymbolConfiguration:", .{AppKit.NSImageSymbolConfiguration.class("configurationWithPointSize:weight:", .{ @as(f64, 36.0), @as(f64, 0.0) })});

        const title = AppKit.NSTextField.createLabel("No Todos Yet");
        title.send("setFont:", .{AppKit.NSFont.class("boldSystemFontOfSize:", .{@as(f64, 17)})});
        title.send("setTextColor:", .{AppKit.NSColor.class("secondaryLabelColor", .{})});
        title.send("setAlignment:", .{@as(i64, 2)});
        title.send("setContentCompressionResistancePriority:forOrientation:", .{ @as(f32, 999), @as(i64, 0) });

        const hint = AppKit.NSTextField.createLabel("Add one above to get started.");
        hint.send("setFont:", .{AppKit.NSFont.class("systemFontOfSize:", .{@as(f64, 13)})});
        hint.send("setTextColor:", .{AppKit.NSColor.class("tertiaryLabelColor", .{})});
        hint.send("setAlignment:", .{@as(i64, 2)});
        hint.send("setContentCompressionResistancePriority:forOrientation:", .{ @as(f32, 999), @as(i64, 0) });

        empty_container.send("addArrangedSubview:", .{icon.obj});
        empty_container.send("addArrangedSubview:", .{title.obj});
        empty_container.send("addArrangedSubview:", .{hint.obj});
    }

    // Set as content view
    root.send("setTranslatesAutoresizingMaskIntoConstraints:", .{true});
    main_window.send("setContentView:", .{root.obj});

    // Pin scroll view width to root
    scroll_view.send("setTranslatesAutoresizingMaskIntoConstraints:", .{false});
    AppKit.NSLayoutConstraint.pinWidthEqual(scroll_view.obj, root.obj);

    refreshTodozList();
    objc.msgSend(void, main_window.obj, "makeKeyAndOrderFront:", .{@as(?*anyopaque, null)});
    AppKit.NSApplication.shared().send("activateIgnoringOtherApps:", .{true});
}

// ── Actions ────────────────────────────────────────────────────────────

fn inputDoCommand(_: Object, _: objc.Sel, _: Object, _: Object, sel_cmd: objc.Sel) callconv(cc) u8 {
    if (@intFromPtr(sel_cmd) == @intFromPtr(objc.sel("insertNewline:"))) {
        addTodoz();
        return 1;
    }
    return 0;
}
fn addTodozAction(_: Object, _: objc.Sel, _: Object) callconv(cc) void {
    addTodoz();
}

fn addTodoz() void {
    const raw = input_field.stringValueZ() orelse return;
    const slice = std.mem.span(raw);
    if (slice.len == 0) return;
    _ = addTodozItem(slice.ptr, @intCast(slice.len));
    input_field.send("setStringValue:", .{""});
    refreshTodozList();
}

fn clearCompletedAction(_: Object, _: objc.Sel, _: Object) callconv(cc) void {
    _ = clearCompletedItems();
    refreshTodozList();
}
fn toggleTodozAction(_: Object, _: objc.Sel, sender: Object) callconv(cc) void {
    const btn: AppKit.NSButton = .{ .obj = sender };
    _ = toggleTodozItem(@intCast(btn.send("tag", .{})));
    refreshTodozList();
}
fn removeTodozAction(_: Object, _: objc.Sel, sender: Object) callconv(cc) void {
    const btn: AppKit.NSButton = .{ .obj = sender };
    _ = removeTodozItem(@intCast(btn.send("tag", .{})));
    refreshTodozList();
}
fn filterChangedAction(_: Object, _: objc.Sel, _: Object) callconv(cc) void {
    refreshTodozList();
}

// ── List refresh ───────────────────────────────────────────────────────

fn currentFilter() i64 {
    return filter_seg.send("selectedSegment", .{});
}

fn todoPassesFilter(t: *const Todoz) bool {
    return switch (currentFilter()) {
        1 => !t.completed,
        2 => t.completed,
        else => true,
    };
}

fn refreshTodozList() void {
    // Remove all arranged subviews
    const subviews: AppKit.NSArrayObj = .{ .obj = todo_list_stack.send("arrangedSubviews", .{}) };
    var i: c_ulong = subviews.send("count", .{});
    while (i > 0) {
        i -= 1;
        const view = subviews.send("objectAtIndex:", .{i});
        todo_list_stack.send("removeArrangedSubview:", .{view});
        const v: AppKit.NSView = .{ .obj = view };
        v.send("removeFromSuperview", .{});
    }

    var visible: u32 = 0;
    var row_idx: usize = 0;

    for (0..todo_count) |idx| {
        const t = getTodozItem(@intCast(idx)) orelse continue;
        if (!todoPassesFilter(t)) continue;
        todo_list_stack.send("addArrangedSubview:", .{buildTodozRow(t, row_idx).obj});
        row_idx += 1;
        visible += 1;
    }

    if (visible == 0) {
        todo_list_stack.send("addArrangedSubview:", .{empty_container.obj});
    }

    // Update subtitle
    var buf: [64]u8 = undefined;
    main_window.send("setSubtitle:", .{AppKit.fmtZ("{d} pending \xc2\xb7 {d} done", .{ countPending(), countCompleted() }, &buf)});
}

fn buildTodozRow(t: *const Todoz, idx: usize) AppKit.NSStackView {
    const row = AppKit.NSStackView.create(.horizontal);
    row.send("setSpacing:", .{@as(f64, 10)});
    row.send("setEdgeInsets:", .{AppKit.NSEdgeInsets{ .top = 10, .left = 16, .bottom = 10, .right = 16 }});

    { // Alternating background
        const rv: AppKit.NSView = .{ .obj = row.obj };
        rv.send("setWantsLayer:", .{true});
        const layer: AppKit.CALayer = .{ .obj = @ptrCast(rv.send("layer", .{}).?) };
        const alpha: f64 = if (idx % 2 == 0) 0.08 else 0.16;
        const color: AppKit.NSColor = .{ .obj = AppKit.NSColor.class("colorWithRed:green:blue:alpha:", .{ 0.5, 0.5, 0.5, alpha }) };
        layer.send("setBackgroundColor:", .{color.send("CGColor", .{})});
    }

    const handler = AppKit.init("TodozActionHandler");

    { // Checkbox
        const checkbox = AppKit.NSButton.createImage(
            if (t.completed) "checkmark.circle.fill" else "circle",
            if (t.completed) "Mark incomplete" else "Mark complete",
            handler,
            objc.sel("toggleTodoz:"),
        );
        checkbox.send("setBordered:", .{false});
        checkbox.send("setTag:", .{@as(i64, @intCast(t.id))});
        checkbox.send("setContentTintColor:", .{if (t.completed)
            AppKit.NSColor.class("systemGreenColor", .{})
        else
            AppKit.NSColor.class("secondaryLabelColor", .{})});
        checkbox.send("setSymbolConfiguration:", .{AppKit.NSImageSymbolConfiguration.class("configurationWithPointSize:weight:", .{ @as(f64, 18.0), @as(f64, 0.0) })});
        row.send("addArrangedSubview:", .{checkbox.obj});
    }

    { // Title
        var title_buf: [max_title_len + 1]u8 = undefined;
        @memcpy(title_buf[0..t.title_len], t.title[0..t.title_len]);
        title_buf[t.title_len] = 0;

        const label = AppKit.NSTextField.createLabel(@ptrCast(&title_buf));
        label.send("setFont:", .{AppKit.NSFont.class("systemFontOfSize:", .{@as(f64, 13)})});
        if (t.completed) {
            label.send("setTextColor:", .{AppKit.NSColor.class("secondaryLabelColor", .{})});
            const str_val = label.send("stringValue", .{});
            const str_len = objc.msgSend(c_ulong, str_val, "length", .{});
            const attr: Foundation.NSMutableAttributedString = .{ .obj = objc.msgSend(Object, objc.msgSendClass(Object, "NSMutableAttributedString", "alloc", .{}), "initWithString:", .{str_val}) };
            attr.send("addAttribute:value:range:", .{
                objc.nsString("NSStrikethrough"),                   objc.nsNumberWithInt(1),
                AppKit.NSRange{ .location = 0, .length = str_len },
            });
            label.send("setAttributedStringValue:", .{attr.obj});
        }
        label.send("setContentHuggingPriority:forOrientation:", .{ @as(f32, 249), @as(i64, 0) });
        label.send("setContentCompressionResistancePriority:forOrientation:", .{ @as(f32, 749), @as(i64, 0) });
        label.setLineBreakMode(4);
        row.send("addArrangedSubview:", .{label.obj});
    }

    { // Delete button
        const btn = AppKit.NSButton.createImage("trash", "Delete", handler, objc.sel("removeTodoz:"));
        btn.send("setBordered:", .{false});
        const red = AppKit.NSColor.class("systemRedColor", .{});
        btn.send("setContentTintColor:", .{red.send("colorWithAlphaComponent:", .{@as(f64, 0.7)})});
        btn.send("setTag:", .{@as(i64, @intCast(t.id))});
        row.send("addArrangedSubview:", .{btn.obj});
    }

    return row;
}
