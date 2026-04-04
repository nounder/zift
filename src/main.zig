//! Zift — a macOS todo app built entirely in Zig.
//!
//! Uses AppKit via Objective-C runtime calls. No Swift, no Xcode.
//! Matches the macOS 26 Tahoe design with NSToolbar glass effect.

const std = @import("std");
const objc = @import("objc.zig");
const ak = @import("AppKit.zig");
const todo = @import("todo.zig");

const cc = std.builtin.CallingConvention.c;
const Object = objc.Object;

// ── App state ──────────────────────────────────────────────────────────

var main_window: ak.NSWindow = undefined;
var todo_list_stack: ak.NSStackView = undefined;
var input_field: ak.NSTextField = undefined;
var priority_seg: ak.NSSegmentedControl = undefined;
var filter_seg: ak.NSSegmentedControl = undefined;
var scroll_view: ak.NSScrollView = undefined;
var empty_container: ak.NSStackView = undefined;
var toolbar_delegate_inst: Object = undefined;

// ── Entry point ────────────────────────────────────────────────────────

pub fn main() void {
    const pool = objc.autoreleasePoolPush();
    defer objc.autoreleasePoolPop(pool);

    const app = ak.NSApplication.shared();
    app.send("setActivationPolicy:", .{@as(i64, @intFromEnum(ak.NSApplication.NSApplicationActivationPolicy.regular))});

    setupMenu(app);
    registerAllClasses();

    const delegate_inst = ak.init("ZiftAppDelegate");
    app.send("setDelegate:", .{delegate_inst});
    app.send("run", .{});
}

// ── Menu bar ───────────────────────────────────────────────────────────

fn setupMenu(app: ak.NSApplication) void {
    const bar = ak.NSMenu.create("");

    { // App menu
        const item = ak.NSMenuItem.create();
        const menu = ak.NSMenu.create("Zift");
        _ = menu.addItemWithTitle("About Zift", null, "");
        menu.addItem(ak.NSMenuItem.separator());
        _ = menu.addItemWithTitle("Hide Zift", objc.sel("hide:"), "h");
        _ = menu.addItemWithTitle("Hide Others", objc.sel("hideOtherApplications:"), "");
        menu.addItem(ak.NSMenuItem.separator());
        _ = menu.addItemWithTitle("Quit Zift", objc.sel("terminate:"), "q");
        item.send("setSubmenu:", .{menu.obj});
        bar.addItem(item.obj);
    }

    { // Edit menu
        const item = ak.NSMenuItem.create();
        const menu = ak.NSMenu.create("Edit");
        _ = menu.addItemWithTitle("Undo", objc.sel("undo:"), "z");
        _ = menu.addItemWithTitle("Redo", objc.sel("redo:"), "Z");
        menu.addItem(ak.NSMenuItem.separator());
        _ = menu.addItemWithTitle("Cut", objc.sel("cut:"), "x");
        _ = menu.addItemWithTitle("Copy", objc.sel("copy:"), "c");
        _ = menu.addItemWithTitle("Paste", objc.sel("paste:"), "v");
        _ = menu.addItemWithTitle("Select All", objc.sel("selectAll:"), "a");
        item.send("setSubmenu:", .{menu.obj});
        bar.addItem(item.obj);
    }

    { // Window menu
        const item = ak.NSMenuItem.create();
        const menu = ak.NSMenu.create("Window");
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
        const cls = objc.allocateClassPair(objc.getClass("NSObject").?, "ZiftAppDelegate") orelse @panic("failed");
        _ = objc.addMethod(cls, objc.sel("applicationDidFinishLaunching:"), @ptrCast(&appDidFinishLaunching), "v@:@");
        _ = objc.addMethod(cls, objc.sel("applicationShouldTerminateAfterLastWindowClosed:"), @ptrCast(&appShouldTerminate), "B@:@");
        objc.registerClassPair(cls);
    }
    {
        const cls = objc.allocateClassPair(objc.getClass("NSObject").?, "ZiftInputDelegate") orelse return;
        _ = objc.addMethod(cls, objc.sel("control:textView:doCommandBySelector:"), @ptrCast(&inputDoCommand), "B@:@@:");
        _ = objc.addMethod(cls, objc.sel("addTodo:"), @ptrCast(&addTodoAction), "v@:@");
        objc.registerClassPair(cls);
    }
    {
        const cls = objc.allocateClassPair(objc.getClass("NSObject").?, "ZiftActionHandler") orelse return;
        _ = objc.addMethod(cls, objc.sel("clearCompleted:"), @ptrCast(&clearCompletedAction), "v@:@");
        _ = objc.addMethod(cls, objc.sel("toggleTodo:"), @ptrCast(&toggleTodoAction), "v@:@");
        _ = objc.addMethod(cls, objc.sel("removeTodo:"), @ptrCast(&removeTodoAction), "v@:@");
        _ = objc.addMethod(cls, objc.sel("filterChanged:"), @ptrCast(&filterChangedAction), "v@:@");
        objc.registerClassPair(cls);
    }
    {
        const cls = objc.allocateClassPair(objc.getClass("NSObject").?, "ZiftToolbarDelegate") orelse return;
        _ = objc.addMethod(cls, objc.sel("toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:"), @ptrCast(&toolbarItemForIdentifier), "@36@0:8@16@24B32");
        _ = objc.addMethod(cls, objc.sel("toolbarAllowedItemIdentifiers:"), @ptrCast(&toolbarAllowedIdentifiers), "@24@0:8@16");
        _ = objc.addMethod(cls, objc.sel("toolbarDefaultItemIdentifiers:"), @ptrCast(&toolbarDefaultIdentifiers), "@24@0:8@16");
        objc.registerClassPair(cls);
    }
    {
        const cls = objc.allocateClassPair(objc.getClass("NSClipView").?, "ZiftFlippedClipView") orelse return;
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

const tb_filter = "com.zift.filter";
const tb_add = "com.zift.add";

fn toolbarItemForIdentifier(_: Object, _: objc.Sel, _: Object, ident: Object, _: u8) callconv(cc) ?Object {
    const ident_str = objc.toZigString(ident) orelse return null;
    const ident_slice = std.mem.span(ident_str);

    if (std.mem.eql(u8, ident_slice, tb_filter)) {
        const item = ak.NSToolbarItem.create(ident);
        const handler = ak.init("ZiftActionHandler");

        filter_seg = ak.NSSegmentedControl.create(ak.NSRect.make(0, 0, 240, 24));
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

    if (std.mem.eql(u8, ident_slice, tb_add)) {
        const item = ak.NSToolbarItem.create(ident);
        item.send("setLabel:", .{"Add"});
        const del = ak.init("ZiftInputDelegate");
        const btn = ak.NSButton.createImage("plus.circle.fill", "Add todo", del, objc.sel("addTodo:"));
        btn.send("setBordered:", .{false});
        btn.send("setContentTintColor:", .{ak.NSColor.class("labelColor", .{})});
        item.send("setView:", .{btn.obj});
        return item.obj;
    }

    return null;
}

fn toolbarAllowedIdentifiers(_: Object, _: objc.Sel, _: Object) callconv(cc) Object {
    return ak.nsArray(&.{ objc.nsString(tb_filter), objc.nsString(tb_add) });
}

fn toolbarDefaultIdentifiers(_: Object, _: objc.Sel, _: Object) callconv(cc) Object {
    return ak.nsArray(&.{
        objc.nsString(ak.NSToolbarItemIdentifier.flexibleSpace),
        objc.nsString(tb_filter),
        objc.nsString(tb_add),
    });
}

// ── UI construction ────────────────────────────────────────────────────

fn buildUI() void {
    main_window = ak.NSWindow.create(.{ .title = "Zift", .width = 560, .height = 680 });
    main_window.send("setMinSize:", .{ak.NSSize{ .width = 440, .height = 400 }});
    main_window.send("setSubtitle:", .{"0 pending \xc2\xb7 0 done"});

    // Toolbar
    const toolbar = ak.NSToolbar.create("com.zift.toolbar");
    toolbar_delegate_inst = ak.init("ZiftToolbarDelegate");
    toolbar.send("setDelegate:", .{toolbar_delegate_inst});
    toolbar.send("setDisplayMode:", .{@as(i64, @intFromEnum(ak.NSToolbar.NSToolbarDisplayMode.iconOnly))});
    main_window.send("setToolbar:", .{toolbar.obj});
    main_window.send("setToolbarStyle:", .{@as(i64, @intFromEnum(ak.NSWindow.NSWindowToolbarStyle.unified))});

    // Content
    const root = ak.NSStackView.create(.vertical);
    root.send("setSpacing:", .{@as(f64, 0)});
    root.send("addArrangedSubview:", .{buildInputBar().obj});
    root.send("addArrangedSubview:", .{ak.NSBox.createSeparator().obj});

    // Scrollable todo list
    scroll_view = ak.NSScrollView.create();
    scroll_view.send("setDrawsBackground:", .{false});

    todo_list_stack = ak.NSStackView.create(.vertical);
    todo_list_stack.send("setSpacing:", .{@as(f64, 0)});

    // Empty state
    empty_container = ak.NSStackView.create(.vertical);
    empty_container.send("setSpacing:", .{@as(f64, 6)});
    empty_container.send("setEdgeInsets:", .{ @as(f64, 60), @as(f64, 60), @as(f64, 60), @as(f64, 60) });
    empty_container.send("setAlignment:", .{@as(i64, 9)}); // centerX

    const empty_iv = ak.NSImageView.createWithSymbol("checkmark.circle", "No todos");
    empty_iv.send("setContentTintColor:", .{ak.NSColor.class("secondaryLabelColor", .{})});
    const sym_config = ak.NSImageSymbolConfiguration.class("configurationWithPointSize:weight:", .{ @as(f64, 36.0), @as(f64, 0.0) });
    empty_iv.send("setSymbolConfiguration:", .{sym_config});

    const empty_msg = ak.NSTextField.createLabel("No Todos Yet");
    empty_msg.send("setFont:", .{ak.NSFont.class("boldSystemFontOfSize:", .{@as(f64, 17)})});
    empty_msg.send("setTextColor:", .{ak.NSColor.class("secondaryLabelColor", .{})});
    empty_msg.send("setAlignment:", .{@as(i64, 2)});
    empty_msg.send("setContentCompressionResistancePriority:forOrientation:", .{ @as(f32, 999), @as(i64, 0) });

    const hint = ak.NSTextField.createLabel("Add one above to get started.");
    hint.send("setFont:", .{ak.NSFont.class("systemFontOfSize:", .{@as(f64, 13)})});
    hint.send("setTextColor:", .{ak.NSColor.class("tertiaryLabelColor", .{})});
    hint.send("setAlignment:", .{@as(i64, 2)});
    hint.send("setContentCompressionResistancePriority:forOrientation:", .{ @as(f32, 999), @as(i64, 0) });

    empty_container.send("addArrangedSubview:", .{empty_iv.obj});
    empty_container.send("addArrangedSubview:", .{empty_msg.obj});
    empty_container.send("addArrangedSubview:", .{hint.obj});

    // Flipped clip view
    const fclip = objc.msgSend(Object, objc.msgSendClass(Object, "ZiftFlippedClipView", "alloc", .{}), "initWithFrame:", .{ak.NSRect.make(0, 0, 0, 0)});
    scroll_view.send("setContentView:", .{fclip});
    scroll_view.send("setDocumentView:", .{todo_list_stack.obj});

    // Pin stack width to clip view
    todo_list_stack.send("setTranslatesAutoresizingMaskIntoConstraints:", .{false});
    const clip_view = scroll_view.send("contentView", .{});
    ak.NSLayoutConstraint.pinWidthEqual(todo_list_stack.obj, clip_view);

    root.send("addArrangedSubview:", .{scroll_view.obj});
    scroll_view.send("setContentHuggingPriority:forOrientation:", .{ @as(f32, 249), @as(i64, 1) });

    // Set as content view
    root.send("setTranslatesAutoresizingMaskIntoConstraints:", .{true});
    main_window.send("setContentView:", .{root.obj});

    refreshTodoList();
    main_window.send("makeKeyAndOrderFront:", .{@as(?*anyopaque, null)});
    ak.NSApplication.shared().send("activateIgnoringOtherApps:", .{true});
}

fn buildInputBar() ak.NSStackView {
    const bar = ak.NSStackView.create(.horizontal);
    bar.send("setSpacing:", .{@as(f64, 10)});
    bar.send("setEdgeInsets:", .{ @as(f64, 10), @as(f64, 16), @as(f64, 10), @as(f64, 16) });

    input_field = ak.NSTextField.createInput("What needs to be done?");
    input_field.send("setAccessibilityLabel:", .{"New todo title"});
    input_field.send("setFont:", .{ak.NSFont.class("systemFontOfSize:", .{@as(f64, 13)})});

    const del = ak.init("ZiftInputDelegate");
    input_field.send("setDelegate:", .{del});
    input_field.send("setContentHuggingPriority:forOrientation:", .{ @as(f32, 249), @as(i64, 0) });

    priority_seg = ak.NSSegmentedControl.create(ak.NSRect.make(0, 0, 180, 24));
    priority_seg.send("setSegmentCount:", .{@as(i64, 3)});
    priority_seg.send("setLabel:forSegment:", .{ "Low", @as(i64, 0) });
    priority_seg.send("setLabel:forSegment:", .{ "Medium", @as(i64, 1) });
    priority_seg.send("setLabel:forSegment:", .{ "High", @as(i64, 2) });
    priority_seg.send("setSelectedSegment:", .{@as(i64, 1)});
    priority_seg.send("setSegmentStyle:", .{@as(i64, 0)});

    bar.send("addArrangedSubview:", .{input_field.obj});
    bar.send("addArrangedSubview:", .{priority_seg.obj});
    return bar;
}

// ── Actions ────────────────────────────────────────────────────────────

fn inputDoCommand(_: Object, _: objc.Sel, _: Object, _: Object, sel_cmd: objc.Sel) callconv(cc) u8 {
    if (@intFromPtr(sel_cmd) == @intFromPtr(objc.sel("insertNewline:"))) {
        addTodo();
        return 1;
    }
    return 0;
}
fn addTodoAction(_: Object, _: objc.Sel, _: Object) callconv(cc) void {
    addTodo();
}

fn addTodo() void {
    const raw = input_field.stringValueZ() orelse return;
    const slice = std.mem.span(raw);
    if (slice.len == 0) return;
    const seg = priority_seg.send("selectedSegment", .{});
    _ = todo.zift_add_todo(slice.ptr, @intCast(slice.len), @intCast(std.math.clamp(seg, 0, 2)));
    input_field.send("setStringValue:", .{""});
    refreshTodoList();
}

fn clearCompletedAction(_: Object, _: objc.Sel, _: Object) callconv(cc) void {
    _ = todo.zift_clear_completed();
    refreshTodoList();
}
fn toggleTodoAction(_: Object, _: objc.Sel, sender: Object) callconv(cc) void {
    const btn: ak.NSButton = .{ .obj = sender };
    _ = todo.zift_toggle_todo(@intCast(btn.send("tag", .{})));
    refreshTodoList();
}
fn removeTodoAction(_: Object, _: objc.Sel, sender: Object) callconv(cc) void {
    const btn: ak.NSButton = .{ .obj = sender };
    _ = todo.zift_remove_todo(@intCast(btn.send("tag", .{})));
    refreshTodoList();
}
fn filterChangedAction(_: Object, _: objc.Sel, _: Object) callconv(cc) void {
    refreshTodoList();
}

// ── List refresh ───────────────────────────────────────────────────────

fn currentFilter() i64 {
    return filter_seg.send("selectedSegment", .{});
}

fn todoPassesFilter(t: *const todo.Todo) bool {
    return switch (currentFilter()) {
        1 => !t.completed,
        2 => t.completed,
        else => true,
    };
}

fn refreshTodoList() void {
    // Remove all arranged subviews
    const subviews: ak.NSArrayObj = .{ .obj = todo_list_stack.send("arrangedSubviews", .{}) };
    var i: c_ulong = subviews.send("count", .{});
    while (i > 0) {
        i -= 1;
        const view = subviews.send("objectAtIndex:", .{i});
        todo_list_stack.send("removeArrangedSubview:", .{view});
        const v: ak.NSView = .{ .obj = view };
        v.send("removeFromSuperview", .{});
    }

    const todo_count = todo.zift_get_todo_count();
    var visible: u32 = 0;
    var row_idx: usize = 0;

    for (0..todo_count) |idx| {
        const t = todo.zift_get_todo(@intCast(idx)) orelse continue;
        if (!todoPassesFilter(t)) continue;
        todo_list_stack.send("addArrangedSubview:", .{buildTodoRow(t, row_idx).obj});
        row_idx += 1;
        visible += 1;
    }

    if (visible == 0) {
        todo_list_stack.send("addArrangedSubview:", .{empty_container.obj});
    }

    // Update subtitle
    var buf: [64]u8 = undefined;
    main_window.send("setSubtitle:", .{ak.fmtZ("{d} pending \xc2\xb7 {d} done", .{ todo.zift_count_pending(), todo.zift_count_completed() }, &buf)});
}

fn buildTodoRow(t: *const todo.Todo, idx: usize) ak.NSStackView {
    const row = ak.NSStackView.create(.horizontal);
    row.send("setSpacing:", .{@as(f64, 10)});
    row.send("setEdgeInsets:", .{ @as(f64, 8), @as(f64, 16), @as(f64, 8), @as(f64, 16) });

    // Alternating background
    if (idx % 2 == 1) {
        const rv: ak.NSView = .{ .obj = row.obj };
        rv.send("setWantsLayer:", .{true});
        const layer: ak.CALayer = .{ .obj = rv.send("layer", .{}) };
        layer.send("setBackgroundColor:", .{ak.NSColor.send(ak.NSColor.class("colorWithRed:green:blue:alpha:", .{ 0.5, 0.5, 0.5, 0.06 }), "CGColor", .{})});
    }

    const handler = ak.init("ZiftActionHandler");

    // Checkbox
    const checkbox = ak.NSButton.createCheckbox("", handler, objc.sel("toggleTodo:"));
    checkbox.send("setTag:", .{@as(i64, @intCast(t.id))});
    checkbox.send("setState:", .{@as(i64, if (t.completed) 1 else 0)});
    const a11y_label: [*:0]const u8 = if (t.completed) "Mark incomplete" else "Mark complete";
    checkbox.send("setAccessibilityLabel:", .{a11y_label});

    // Priority icon
    const pri_iv = ak.NSImageView.createWithSymbol(switch (t.priority) {
        .low => "arrow.down.circle",
        .medium => "equal.circle",
        .high => "exclamationmark.circle",
    }, switch (t.priority) {
        .low => "Low",
        .medium => "Medium",
        .high => "High",
    });
    pri_iv.send("setContentTintColor:", .{switch (t.priority) {
        .low => ak.NSColor.class("systemBlueColor", .{}),
        .medium => ak.NSColor.class("systemOrangeColor", .{}),
        .high => ak.NSColor.class("systemRedColor", .{}),
    }});

    // Title
    var title_buf: [todo.max_title_len + 1]u8 = undefined;
    @memcpy(title_buf[0..t.title_len], t.title[0..t.title_len]);
    title_buf[t.title_len] = 0;

    const title_label = ak.NSTextField.createLabel(@ptrCast(&title_buf));
    title_label.send("setFont:", .{ak.NSFont.class("systemFontOfSize:", .{@as(f64, 13)})});
    if (t.completed) {
        title_label.send("setTextColor:", .{ak.NSColor.class("secondaryLabelColor", .{})});
        // Strikethrough
        const str_val = title_label.send("stringValue", .{});
        const str_len = objc.msgSend(c_ulong, str_val, "length", .{});
        const attr = ak.NSMutableAttributedString.create(str_val);
        attr.send("addAttribute:value:range:", .{
            objc.nsString("NSStrikethrough"),               objc.nsNumberWithInt(1),
            ak.NSRange{ .location = 0, .length = str_len },
        });
        title_label.send("setAttributedStringValue:", .{attr.obj});
    }
    title_label.send("setContentHuggingPriority:forOrientation:", .{ @as(f32, 249), @as(i64, 0) });
    title_label.send("setContentCompressionResistancePriority:forOrientation:", .{ @as(f32, 749), @as(i64, 0) });
    title_label.setLineBreakMode(4);

    // Delete button
    const del_btn = ak.NSButton.createImage("trash", "Delete", handler, objc.sel("removeTodo:"));
    del_btn.send("setBordered:", .{false});
    del_btn.send("setContentTintColor:", .{ak.NSColor.class("systemRedColor", .{})});
    del_btn.send("setTag:", .{@as(i64, @intCast(t.id))});

    row.send("addArrangedSubview:", .{checkbox.obj});
    row.send("addArrangedSubview:", .{pri_iv.obj});
    row.send("addArrangedSubview:", .{title_label.obj});
    row.send("addArrangedSubview:", .{del_btn.obj});
    return row;
}
