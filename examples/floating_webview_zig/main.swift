import SwiftUI
import WebKit

@main
struct FloatingWebViewApp: App {
    var body: some Scene {
        WindowGroup {
            WebView(url: URL(string: "https://example.com")!)
                .frame(width: 480, height: 320)
        }
        .windowStyle(.plain)
        .windowResizability(.contentSize)
    }
}

struct WebView: NSViewRepresentable {
    let url: URL
    func makeNSView(context: Context) -> WKWebView {
        let wv = WKWebView()
        wv.load(URLRequest(url: url))
        return wv
    }
    func updateNSView(_ nsView: WKWebView, context: Context) {}
}
