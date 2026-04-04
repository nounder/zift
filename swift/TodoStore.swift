import Foundation
import Observation
import ZiftCore

struct TodoItem: Identifiable, Equatable {
    let id: UInt64
    var title: String
    var completed: Bool
    var priority: Priority

    enum Priority: UInt8, CaseIterable, Identifiable, Comparable {
        case low = 0
        case medium = 1
        case high = 2

        var id: UInt8 { rawValue }
        var label: String {
            switch self {
            case .low: "Low"
            case .medium: "Medium"
            case .high: "High"
            }
        }
        var symbol: String {
            switch self {
            case .low: "arrow.down.circle"
            case .medium: "equal.circle"
            case .high: "exclamationmark.circle"
            }
        }
        var tint: Color {
            switch self {
            case .low: .blue
            case .medium: .orange
            case .high: .red
            }
        }

        static func < (lhs: Self, rhs: Self) -> Bool {
            lhs.rawValue < rhs.rawValue
        }
    }
}

import SwiftUI

@Observable
class TodoStore {
    var todos: [TodoItem] = []
    var completedCount: Int = 0
    var pendingCount: Int = 0

    init() { reload() }

    func addTodo(title: String, priority: TodoItem.Priority = .medium) {
        guard !title.isEmpty else { return }
        let bytes = Array(title.utf8)
        bytes.withUnsafeBufferPointer { buf in
            _ = zift_add_todo(buf.baseAddress!, UInt32(buf.count), priority.rawValue)
        }
        reload()
    }

    func removeTodo(id: UInt64) {
        _ = zift_remove_todo(id)
        reload()
    }

    func toggleTodo(id: UInt64) {
        _ = zift_toggle_todo(id)
        reload()
    }

    func setPriority(id: UInt64, priority: TodoItem.Priority) {
        _ = zift_set_priority(id, priority.rawValue)
        reload()
    }

    func updateTitle(id: UInt64, title: String) {
        let bytes = Array(title.utf8)
        bytes.withUnsafeBufferPointer { buf in
            _ = zift_update_title(id, buf.baseAddress!, UInt32(buf.count))
        }
        reload()
    }

    func clearCompleted() {
        _ = zift_clear_completed()
        reload()
    }

    private func reload() {
        let count = zift_get_todo_count()
        var items: [TodoItem] = []
        items.reserveCapacity(Int(count))
        for i in 0..<count {
            guard let ptr = zift_get_todo(i) else { continue }
            let raw = ptr.pointee
            let titleLen = Int(raw.title_len)
            let title = withUnsafePointer(to: raw.title) { tp in
                tp.withMemoryRebound(to: UInt8.self, capacity: titleLen) { bytes in
                    String(bytes: UnsafeBufferPointer(start: bytes, count: titleLen), encoding: .utf8) ?? ""
                }
            }
            items.append(TodoItem(
                id: raw.id,
                title: title,
                completed: raw.completed,
                priority: TodoItem.Priority(rawValue: raw.priority) ?? .medium
            ))
        }
        todos = items
        completedCount = Int(zift_count_completed())
        pendingCount = Int(zift_count_pending())
    }
}
