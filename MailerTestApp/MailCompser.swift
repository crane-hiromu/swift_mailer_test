//
//  MailCompser.swift
//  MailerTestApp
//
//  Created by HiromuTsuruta on 2019/10/03.
//  Copyright © 2019年 HIromu. All rights reserved.
//

import MessageUI

final class MailComposer: NSObject {
    
    // MARK: Methods
    
    static func configure() -> MFMailComposeViewController {
        guard MFMailComposeViewController.canSendMail() else {
            fatalError()
        }
        
        let vc = MFMailComposeViewController()
        vc.hidesBottomBarWhenPushed = true
        vc.setSubject("お問い合わせ")
        vc.setToRecipients(["xxx@xx.xx"])
        vc.setMessageBody("問い合わせ内容", isHTML: false)
        return vc
    }
}

