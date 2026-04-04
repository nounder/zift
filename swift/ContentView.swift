import SwiftUI

struct ContentView: View {
    @Environment(TodoStore.self) var store
    @State private var newTitle = ""
    @State private var newPriority: TodoItem.Priority = .medium
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
            .navigationTitle("Zift")
            .navigationSubtitle("\(store.pendingCount) pending · \(store.completedCount) done")
            .toolbar {
                ToolbarItemGroup(placement: .primaryAction) {
                    filterPicker
                    addButton
                }

                ToolbarItem(placement: .automatic) {
                    if store.completedCount > 0 {
                        Button("Clear Completed", systemImage: "trash") {
                            withAnimation { store.clearCompleted() }
                        }
                        .tint(.red)
                    }
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

            Picker("Priority", selection: $newPriority) {
                ForEach(TodoItem.Priority.allCases) { p in
                    Text(p.label).tag(p)
                }
            }
            .pickerStyle(.segmented)
            .labelsHidden()
            .frame(width: 180)
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
    }

    private var addButton: some View {
        Button("Add", systemImage: "plus.circle.fill") { addTodo() }
            .disabled(newTitle.trimmingCharacters(in: .whitespaces).isEmpty)
            .tint(.blue)
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
                List {
                    ForEach(filteredTodos) { todo in
                        TodoRowView(todo: todo)
                    }
                    .onDelete(perform: deleteTodos)
                }
                .listStyle(.inset(alternatesRowBackgrounds: true))
            }
        }
    }

    // MARK: - Footer

    private var footerView: some View {
        HStack {
            Text("\(store.todos.count) item\(store.todos.count == 1 ? "" : "s")")
                .font(.caption)
                .foregroundStyle(.secondary)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
    }

    // MARK: - Actions

    private func addTodo() {
        let trimmed = newTitle.trimmingCharacters(in: .whitespaces)
        guard !trimmed.isEmpty else { return }
        withAnimation {
            store.addTodo(title: trimmed, priority: newPriority)
        }
        newTitle = ""
    }

    private func deleteTodos(at offsets: IndexSet) {
        let todos = filteredTodos
        for index in offsets {
            store.removeTodo(id: todos[index].id)
        }
    }
}

// MARK: - Row

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

            // Priority indicator
            Image(systemName: todo.priority.symbol)
                .font(.caption)
                .foregroundStyle(todo.priority.tint)
                .accessibilityLabel("\(todo.priority.label) priority")

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

            // Priority picker
            Picker("Priority", selection: Binding(
                get: { todo.priority },
                set: { store.setPriority(id: todo.id, priority: $0) }
            )) {
                ForEach(TodoItem.Priority.allCases) { p in
                    Label(p.label, systemImage: p.symbol).tag(p)
                }
            }
            .pickerStyle(.menu)
            .frame(width: 90)
            .accessibilityLabel("Change priority")

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
        .padding(.vertical, 4)
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
