//
//  UIBarButtonItem+Ext.swift
//  
//
//  Created by Neil Smith on 26/08/2019.
//

import UIKit

public extension UIBarButtonItem {
    
    static var noTitle: UIBarButtonItem {
        return .init(
            title: " ",
            style: .plain,
            target: nil,
            action: nil
        )
    }
    
}
