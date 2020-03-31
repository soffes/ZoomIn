import AppKit
import SafariServices.SFSafariApplication

class ViewController: NSViewController {
    @IBAction func openSafariExtensionPreferences(_ sender: AnyObject?) {
        SFSafariApplication.showPreferencesForExtension(withIdentifier: "com.nothingmagical.zoom-in.extension") { error in
            if let error = error {
                print("Dang: \(error)")
            }
        }
    }
}
