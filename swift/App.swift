import SwiftUI

// ── Model ──────────────────────────────────────────────────────────────

struct TodoItem: Identifiable, Equatable {
    let id: UInt64
    var title: String
    var completed: Bool
}

// ── Store ──────────────────────────────────────────────────────────────

@Observable
class TodoStore {
    var todos: [TodoItem] = []
    var completedCount: Int { todos.filter(\.completed).count }
    var pendingCount: Int { todos.filter { !$0.completed }.count }

    private var nextId: UInt64 = 1

    func addTodo(title: String) {
        guard !title.isEmpty else { return }
        let id = nextId
        nextId += 1
        todos.append(TodoItem(id: id, title: title, completed: false))
    }

    func removeTodo(id: UInt64) {
        todos.removeAll { $0.id == id }
    }

    func toggleTodo(id: UInt64) {
        guard let idx = todos.firstIndex(where: { $0.id == id }) else { return }
        todos[idx].completed.toggle()
    }

    func updateTitle(id: UInt64, title: String) {
        guard !title.isEmpty,
              let idx = todos.firstIndex(where: { $0.id == id }) else { return }
        todos[idx].title = title
    }

    func clearCompleted() {
        todos.removeAll { $0.completed }
    }
}

// ── App ────────────────────────────────────────────────────────────────

@main
struct TodozApp: App {
    @State private var store = TodoStore()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(store)
                .frame(minWidth: 500, minHeight: 560)
        }
        .defaultSize(width: 560, height: 680)
    }
}

// ── Content View ───────────────────────────────────────────────────────

struct ContentView: View {
    @Environment(TodoStore.self) var store
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
                inputBar
                Divider()
                todoList
                    .frame(maxHeight: .infinity)
            }
            .navigationTitle("Todoz")
            .navigationSubtitle("\(store.pendingCount) pending · \(store.completedCount) done")
            .toolbar {
                ToolbarItem(placement: .principal) {
                    filterPicker
                }
            }
        }
    }

    // MARK: - Input

    private var inputBar: some View {
        HStack(spacing: 10) {
            TextField("What needs to be done?", text: $newTitle)
                .textFieldStyle(.roundedBorder)
                .font(.body)
                .onSubmit(addTodo)
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
    }

    private var filterPicker: some View {
        Picker("Filter", selection: $filter) {
            ForEach(Filter.allCases) { f in
                Text(f.rawValue).tag(f)
            }
        }
        .pickerStyle(.segmented)
        .frame(width: 200)
    }

    // MARK: - List

    private var todoList: some View {
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
                            TodoRowView(todo: todo)
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
    }

    // MARK: - Actions

    private func addTodo() {
        let trimmed = newTitle.trimmingCharacters(in: .whitespaces)
        guard !trimmed.isEmpty else { return }
        withAnimation {
            store.addTodo(title: trimmed)
        }
        newTitle = ""
    }
}

// ── Row View ───────────────────────────────────────────────────────────

struct TodoRowView: View {
    @Environment(TodoStore.self) var store
    let todo: TodoItem
    @State private var isEditing = false
    @State private var editTitle = ""

    var body: some View {
        HStack(spacing: 10) {
            // Checkbox
            Button {
                withAnimation { store.toggleTodo(id: todo.id) }
            } label: {
                Image(systemName: todo.completed ? "checkmark.circle.fill" : "circle")
                    .font(.title3)
                    .foregroundStyle(todo.completed ? .green : .secondary)
                    .contentTransition(.symbolEffect(.replace))
            }
            .buttonStyle(.borderless)
            .accessibilityLabel(todo.completed ? "Mark incomplete" : "Mark complete")

            // Title
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
                    .accessibilityLabel(todo.title)
                    .accessibilityHint("Double-tap to edit")
            }

            // Delete
            Button {
                withAnimation { store.removeTodo(id: todo.id) }
            } label: {
                Image(systemName: "trash")
                    .foregroundStyle(.red.opacity(0.7))
            }
            .buttonStyle(.borderless)
            .accessibilityLabel("Delete \(todo.title)")
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
