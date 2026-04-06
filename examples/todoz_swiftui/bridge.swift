// SwiftUI Bridge — Swift side of the Zig/SwiftUI boundary.
//
// This file is compiled to .o at library build time and linked into
// Zig executables. Consumers do NOT need the Swift toolchain.
//
// Swift owns: @Observable state, View definitions, SwiftUI rendering.
// Zig owns: entry point, NSApplication, window/menu, state mutations.

import SwiftUI
import AppKit

// ── Model ────────────────────────────────────────────────────────────

struct TodoItem: Identifiable, Equatable {
    let id: UInt64
    var title: String
    var completed: Bool
}

// ── Store (Observable) ───────────────────────────────────────────────

@Observable
class TodoStore {
    var todos: [TodoItem] = []
    var pendingCount: Int { todos.filter { !$0.completed }.count }
    var completedCount: Int { todos.filter(\.completed).count }

    fileprivate var nextId: UInt64 = 1

    func toggleTodo(id: UInt64) {
        guard let idx = todos.firstIndex(where: { $0.id == id }) else { return }
        todos[idx].completed.toggle()
    }

    func removeTodo(id: UInt64) {
        todos.removeAll { $0.id == id }
    }

    func updateTitle(id: UInt64, title: String) {
        guard !title.isEmpty,
              let idx = todos.firstIndex(where: { $0.id == id }) else { return }
        todos[idx].title = title
    }
}

// ── C-callable API for Zig ───────────────────────────────────────────

// Global store — created once, lives forever.
private var globalStore: TodoStore?

@_silgen_name("swiftui_store_create")
func storeCreate() {
    globalStore = TodoStore()
}

@_silgen_name("swiftui_store_add_todo")
func storeAddTodo(_ ptr: UnsafePointer<UInt8>, _ len: UInt) {
    guard let store = globalStore else { return }
    let title = String(bytes: UnsafeBufferPointer(start: ptr, count: Int(len)), encoding: .utf8) ?? ""
    guard !title.isEmpty else { return }
    let id = store.nextId
    store.nextId += 1
    withAnimation {
        store.todos.append(TodoItem(id: id, title: title, completed: false))
    }
}

@_silgen_name("swiftui_store_toggle_todo")
func storeToggleTodo(_ id: UInt64) {
    guard let store = globalStore,
          let idx = store.todos.firstIndex(where: { $0.id == id }) else { return }
    withAnimation {
        store.todos[idx].completed.toggle()
    }
}

@_silgen_name("swiftui_store_remove_todo")
func storeRemoveTodo(_ id: UInt64) {
    guard let store = globalStore else { return }
    withAnimation {
        store.todos.removeAll { $0.id == id }
    }
}

@_silgen_name("swiftui_store_clear_completed")
func storeClearCompleted() {
    guard let store = globalStore else { return }
    withAnimation {
        store.todos.removeAll { $0.completed }
    }
}

@_silgen_name("swiftui_store_get_count")
func storeGetCount() -> UInt64 {
    return UInt64(globalStore?.todos.count ?? 0)
}

// ── Views ────────────────────────────────────────────────────────────

struct TodozContentView: View {
    let store: TodoStore
    @State private var newTitle = ""
    @State private var filter: Filter = .all

    enum Filter: String, CaseIterable, Identifiable {
        case all = "All"
        case pending = "Pending"
        case completed = "Completed"
        var id: String { rawValue }
    }

    private var filteredTodos: [TodoItem] {
        switch filter {
        case .all: store.todos
        case .pending: store.todos.filter { !$0.completed }
        case .completed: store.todos.filter { $0.completed }
        }
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Input bar
                HStack(spacing: 10) {
                    TextField("What needs to be done?", text: $newTitle)
                        .textFieldStyle(.roundedBorder)
                        .font(.body)
                        .onSubmit(addTodo)
                }
                .padding(.horizontal)
                .padding(.vertical, 10)

                Divider()

                // Todo list
                Group {
                    if filteredTodos.isEmpty {
                        ContentUnavailableView {
                            Label(
                                filter == .all ? "No Todos Yet" : "No \(filter.rawValue) Todos",
                                systemImage: filter == .all ? "checkmark.circle" : "line.3.horizontal.decrease.circle"
                            )
                        } description: {
                            Text(filter == .all
                                 ? "Add one above to get started."
                                 : "Try changing the filter.")
                        }
                    } else {
                        ScrollView {
                            LazyVStack(spacing: 0) {
                                ForEach(Array(filteredTodos.enumerated()), id: \.element.id) { index, todo in
                                    TodoRowView(store: store, todo: todo)
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 10)
                                        .background(index % 2 == 0
                                            ? Color.gray.opacity(0.08)
                                            : Color.gray.opacity(0.16))
                                }
                            }
                        }
                    }
                }
                .frame(maxHeight: .infinity)
            }
            .navigationTitle("Todoz")
            .navigationSubtitle("\(store.pendingCount) pending · \(store.completedCount) done")
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Picker("Filter", selection: $filter) {
                        ForEach(Filter.allCases) { f in
                            Text(f.rawValue).tag(f)
                        }
                    }
                    .pickerStyle(.segmented)
                    .frame(width: 200)
                }
            }
        }
    }

    private func addTodo() {
        let trimmed = newTitle.trimmingCharacters(in: .whitespaces)
        guard !trimmed.isEmpty else { return }
        withAnimation {
            let id = store.nextId
            store.nextId += 1
            store.todos.append(TodoItem(id: id, title: trimmed, completed: false))
        }
        newTitle = ""
    }
}

struct TodoRowView: View {
    let store: TodoStore
    let todo: TodoItem
    @State private var isEditing = false
    @State private var editTitle = ""

    var body: some View {
        HStack(spacing: 10) {
            Button {
                withAnimation { store.toggleTodo(id: todo.id) }
            } label: {
                Image(systemName: todo.completed ? "checkmark.circle.fill" : "circle")
                    .font(.title3)
                    .foregroundStyle(todo.completed ? .green : .secondary)
            }
            .buttonStyle(.borderless)

            if isEditing {
                TextField("Title", text: $editTitle)
                    .textFieldStyle(.roundedBorder)
                    .onSubmit(commitEdit)
                    .onExitCommand { isEditing = false }
            } else {
                Text(todo.title)
                    .strikethrough(todo.completed)
                    .foregroundStyle(todo.completed ? .secondary : .primary)
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .contentShape(Rectangle())
                    .onTapGesture(count: 2) { startEditing() }
            }

            Button {
                withAnimation { store.removeTodo(id: todo.id) }
            } label: {
                Image(systemName: "trash")
                    .foregroundStyle(.red.opacity(0.7))
            }
            .buttonStyle(.borderless)
        }
    }

    private func startEditing() {
        editTitle = todo.title
        isEditing = true
    }

    private func commitEdit() {
        let trimmed = editTitle.trimmingCharacters(in: .whitespaces)
        if !trimmed.isEmpty {
            store.updateTitle(id: todo.id, title: trimmed)
        }
        isEditing = false
    }

}

// ── Hosting View Factory ─────────────────────────────────────────────

/// Creates an NSHostingView containing the full TodozContentView.
/// Called from Zig to get the SwiftUI content to embed in the window.
@_silgen_name("swiftui_create_content_view")
func createContentView() -> UnsafeMutableRawPointer {
    guard let store = globalStore else {
        fatalError("swiftui_store_create must be called first")
    }
    let view = TodozContentView(store: store)
        .frame(minWidth: 440, minHeight: 400)
    let hostingView = NSHostingView(rootView: view)
    return Unmanaged.passRetained(hostingView).toOpaque()
}
