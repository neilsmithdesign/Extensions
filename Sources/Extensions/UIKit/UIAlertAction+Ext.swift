//
//  UIAlertAction+Ext.swift
//  
//
//  Created by Neil Smith on 26/08/2019.
//

import UIKit

public extension UIAlertAction {
    
    static var cancel: UIAlertAction {
        return .init(
            title: "Cancel",
            style: .cancel,
            handler: nil
        )
    }
    
}
