import SafariServices

final class SafariExtensionHandler: SFSafariExtensionHandler {
    override func messageReceived(withName messageName: String, from page: SFSafariPage, userInfo: [String : Any]?) {
        // Only handle messages we understand
        guard messageName == "open", let url = (userInfo?["url"] as? String).flatMap({ URL(string: $0) }) else {
            return
        }

        // Open Zoom
        guard NSWorkspace.shared.open(url) else {
            return
        }

        // Close the tab if that worked
        page.getContainingTab { tab in
            tab.close()
        }
    }
}
