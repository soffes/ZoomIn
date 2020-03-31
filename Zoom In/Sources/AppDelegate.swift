import AppKit

@NSApplicationMain
final class AppDelegate: NSObject, NSApplicationDelegate, NSWindowDelegate {
    func windowWillClose(_ notification: Notification) {
        NSApp.terminate()
    }
}
