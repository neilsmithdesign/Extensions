//
//  UIAlertAction+Ext.swift
//  
//
//  Created by Neil Smith on 26/08/2019.
//

import UIKit

public extension UIAlertAction {
    
    /// A standard cancel button with the option to perform an action on selection
    static func cancel(with action: (() -> Void)? = nil) -> UIAlertAction {
        return .init(title: "Cancel", style: .cancel) { _ in action?() }
    }
    
    /// A standard ok button with the option to perform an action on selection
    static func ok(with action: (() -> Void)? = nil) -> UIAlertAction {
        return .init(title: "Ok", style: .default) { _ in action?() }
    }
    
}
