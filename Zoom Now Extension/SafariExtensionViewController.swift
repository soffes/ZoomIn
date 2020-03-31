//
//  SafariExtensionViewController.swift
//  Zoom Now Extension
//
//  Created by Sam Soffes on 3/30/20.
//  Copyright © 2020 Sam Soffes. All rights reserved.
//

import SafariServices

class SafariExtensionViewController: SFSafariExtensionViewController {
    
    static let shared: SafariExtensionViewController = {
        let shared = SafariExtensionViewController()
        shared.preferredContentSize = NSSize(width:320, height:240)
        return shared
    }()

}
