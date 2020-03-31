import AppKit
import SafariServices.SFSafariApplication

class ViewController: NSViewController {
    @IBAction func openSafariExtensionPreferences(_ sender: AnyObject?) {
        SFSafariApplication.showPreferencesForExtension(withIdentifier: "com.nothingmagical.zoom-in.extension") { error in
            guard let error = error else {
                return
            }

            // This callback is called on a background thread. Switch to the main thread.
            DispatchQueue.main.async { [weak self] in
                // Setup the error
                let alert = NSAlert(error: error)

                // Add some more information
                alert.informativeText = "Failed to open Safari preferences."

                // Show it from our window (or fallback to just showing on its own)
                if let window = self?.view.window {
                    alert.beginSheetModal(for: window, completionHandler: nil)
                } else {
                    alert.runModal()
                }
            }
        }
    }
}
