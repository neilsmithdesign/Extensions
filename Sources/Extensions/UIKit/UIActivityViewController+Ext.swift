//
//  UIActivityViewController+Ext.swift
//  
//
//  Created by Neil Smith on 08/11/2019.
//

import UIKit

extension UIActivity.ActivityType {
    
    var application: Application? {
        guard let app = Application(rawValue: self.rawValue) else { return nil }
        return app
    }
    
    enum Application: String {
        case iMessage = "com.apple.UIKit.activity.Message"
        case mail = "com.apple.UIKit.activity.Mail"
        case notes = "com.apple.mobilenotes.SharingExtension"
        case twitter = "com.apple.UIKit.activity.PostToTwitter"
        case facebook = "com.apple.UIKit.activity.PostToFacebook"
        case facebookMessenger = "com.facebook.Messenger.ShareExtension"
        case whatsApp = "net.whatsapp.WhatsApp.ShareExtension"
        case instagram = "com.burbn.instagram.shareextension"
        case snapchat = "com.toyopagroup.picaboo.share"
        case pinterest = "pinterest.ShareExtension"
        case slack = "com.tinyspeck.chatlyio.share"
        case photos
        case sharedPhotos = "com.apple.mobileslideshow.StreamShareService"
        case evernote = "com.evernote.iPhone.Evernote.EvernoteShare"
        case googleDrive = "com.google.Drive.ShareExtension"
        case dropbox = "com.getdropbox.Dropbox.DropboxShareExtension"
        
        var name: String {
            switch self {
            case .iMessage: return "iMessage"
            case .mail: return "Apple Mail"
            case .notes: return "Apple Notes"
            case .twitter: return "Twitter"
            case .facebook: return "Facebook"
            case .facebookMessenger: return "Facebook Messenger"
            case .whatsApp: return "WhatsApp"
            case .instagram: return "Instagram"
            case .snapchat: return "Snapchat"
            case .pinterest: return "Pinterest"
            case .slack: return "Slack"
            case .photos: return "Apple Photos"
            case .sharedPhotos: return "Apple Photos: shared album"
            case .evernote: return "Evernote"
            case .googleDrive: return "Google Drive"
            case .dropbox: return "Dropbox"
            }
        }
    }
    
}
