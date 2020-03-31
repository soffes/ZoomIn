import AppKit

final class WindowController: NSWindowController, NSWindowDelegate {
    override func windowDidLoad() {
        super.windowDidLoad()
        window?.center()
    }

    func windowWillClose(_ notification: Notification) {
        NSApp.terminate(notification)
    }
}
