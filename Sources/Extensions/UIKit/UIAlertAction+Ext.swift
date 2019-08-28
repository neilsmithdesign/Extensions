//
//  UIAlertAction+Ext.swift
//  
//
//  Created by Neil Smith on 26/08/2019.
//

import UIKit

public extension UIAlertAction {
    
    /// A standard cancel button which performs no action
    static var cancel: UIAlertAction {
        return .init(
            title: "Cancel",
            style: .cancel,
            handler: nil
        )
    }
    
    /// A standard ok button which performs no action
    static var ok: UIAlertAction {
        return .init(
            title: "Ok",
            style: .default,
            handler: nil
        )
    }
    
}
