import SwiftUI

@main
struct ZiftApp: App {
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
