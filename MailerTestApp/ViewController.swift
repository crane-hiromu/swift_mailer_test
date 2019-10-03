//
//  ViewController.swift
//  MailerTestApp
//
//  Created by HiromuTsuruta on 2019/10/03.
//  Copyright © 2019年 HIromu. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.handleContact()
        }
    }


}

// MARK: - MFMailComposeViewControllerDelegate

extension ViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController,
                               didFinishWith result: MFMailComposeResult,
                               error: Error?) {
        
        controller.dismiss(animated: true)
    }
}

// MARK: - Private methods

private extension ViewController {
    func handleContact() {
        let vc = MailComposer.configure()
        vc.mailComposeDelegate = self
        navigationController?.modalPresentationStyle = .overFullScreen
        navigationController?.present(vc, animated: true)
    }
}
