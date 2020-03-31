import AppKit

final class WindowController: NSWindowController, NSWindowDelegate {
    override func windowDidLoad() {
        super.windowDidLoad()

        // Center the window on the screen when it loads
        window?.center()
    }

    func windowWillClose(_ notification: Notification) {
        // When the window closes, quit the app
        NSApp.terminate(notification)
    }
}
