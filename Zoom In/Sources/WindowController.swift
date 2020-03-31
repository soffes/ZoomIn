import AppKit

final class WindowController: NSWindowController, NSWindowDelegate {
    func windowWillClose(_ notification: Notification) {
        NSApp.terminate(notification)
    }
}
