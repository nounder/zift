//! Todo core logic — pure Zig, exposed via C ABI.
//!
//! This module manages a fixed-capacity list of todo items and exposes
//! C-callable functions so that a Swift/SwiftUI host can drive the UI
//! while all state lives in Zig.

const std = @import("std");

// ── Types ──────────────────────────────────────────────────────────────

pub const max_todos = 256;
pub const max_title_len = 256;

pub const Todo = extern struct {
    id: u64,
    title: [max_title_len]u8,
    title_len: u32,
    completed: bool,
    priority: Priority,
};

pub const Priority = enum(u8) {
    low = 0,
    medium = 1,
    high = 2,
};

// ── State ──────────────────────────────────────────────────────────────

var todos: [max_todos]Todo = undefined;
var todo_count: u32 = 0;
var next_id: u64 = 1;

// ── C ABI exports ─────────────────────────────────────────────────────

pub export fn zift_add_todo(title_ptr: [*]const u8, title_len: u32, priority: u8) u64 {
    if (todo_count >= max_todos) return 0;
    if (title_len == 0 or title_len > max_title_len) return 0;

    const id = next_id;
    next_id += 1;

    var todo: Todo = .{
        .id = id,
        .title = std.mem.zeroes([max_title_len]u8),
        .title_len = title_len,
        .completed = false,
        .priority = if (priority <= 2) @enumFromInt(priority) else .medium,
    };
    @memcpy(todo.title[0..title_len], title_ptr[0..title_len]);

    todos[todo_count] = todo;
    todo_count += 1;
    return id;
}

pub export fn zift_remove_todo(id: u64) bool {
    for (0..todo_count) |i| {
        if (todos[i].id == id) {
            // Shift remaining items down
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

pub export fn zift_toggle_todo(id: u64) bool {
    for (0..todo_count) |i| {
        if (todos[i].id == id) {
            todos[i].completed = !todos[i].completed;
            return true;
        }
    }
    return false;
}

pub export fn zift_set_priority(id: u64, priority: u8) bool {
    if (priority > 2) return false;
    for (0..todo_count) |i| {
        if (todos[i].id == id) {
            todos[i].priority = @enumFromInt(priority);
            return true;
        }
    }
    return false;
}

pub export fn zift_get_todo_count() u32 {
    return todo_count;
}

pub export fn zift_get_todo(index: u32) ?*const Todo {
    if (index >= todo_count) return null;
    return &todos[index];
}

pub export fn zift_clear_completed() u32 {
    var removed: u32 = 0;
    var i: u32 = 0;
    while (i < todo_count) {
        if (todos[i].completed) {
            // Shift remaining items down
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

pub export fn zift_update_title(id: u64, title_ptr: [*]const u8, title_len: u32) bool {
    if (title_len == 0 or title_len > max_title_len) return false;
    for (0..todo_count) |i| {
        if (todos[i].id == id) {
            todos[i].title = std.mem.zeroes([max_title_len]u8);
            @memcpy(todos[i].title[0..title_len], title_ptr[0..title_len]);
            todos[i].title_len = title_len;
            return true;
        }
    }
    return false;
}

// ── Stats ──────────────────────────────────────────────────────────────

pub export fn zift_count_completed() u32 {
    var count: u32 = 0;
    for (0..todo_count) |i| {
        if (todos[i].completed) count += 1;
    }
    return count;
}

pub export fn zift_count_pending() u32 {
    return todo_count - zift_count_completed();
}

// ── Tests ──────────────────────────────────────────────────────────────

test "add and retrieve todo" {
    // Reset state
    todo_count = 0;
    next_id = 1;

    const title = "Buy groceries";
    const id = zift_add_todo(title.ptr, title.len, 1);
    try std.testing.expect(id == 1);
    try std.testing.expect(zift_get_todo_count() == 1);

    const todo = zift_get_todo(0).?;
    try std.testing.expect(todo.id == 1);
    try std.testing.expect(todo.completed == false);
    try std.testing.expectEqualSlices(u8, title, todo.title[0..todo.title_len]);
}

test "toggle todo" {
    todo_count = 0;
    next_id = 1;

    const title = "Test toggle";
    const id = zift_add_todo(title.ptr, title.len, 0);
    try std.testing.expect(zift_toggle_todo(id));

    const todo = zift_get_todo(0).?;
    try std.testing.expect(todo.completed == true);

    try std.testing.expect(zift_toggle_todo(id));
    try std.testing.expect(todo.completed == false);
}

test "remove todo" {
    todo_count = 0;
    next_id = 1;

    const id1 = zift_add_todo("First", 5, 0);
    _ = zift_add_todo("Second", 6, 1);
    try std.testing.expect(zift_get_todo_count() == 2);

    try std.testing.expect(zift_remove_todo(id1));
    try std.testing.expect(zift_get_todo_count() == 1);

    const remaining = zift_get_todo(0).?;
    try std.testing.expectEqualSlices(u8, "Second", remaining.title[0..remaining.title_len]);
}

test "clear completed" {
    todo_count = 0;
    next_id = 1;

    const id1 = zift_add_todo("Done", 4, 0);
    _ = zift_add_todo("Not done", 8, 1);
    _ = zift_toggle_todo(id1);

    const removed = zift_clear_completed();
    try std.testing.expect(removed == 1);
    try std.testing.expect(zift_get_todo_count() == 1);
}
