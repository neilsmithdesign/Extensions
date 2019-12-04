//
//  UITraitCollection+Ext.swift
//  
//
//  Created by Neil Smith on 04/12/2019.
//

import UIKit

public extension UITraitCollection {
    
    var isRegularRegular: Bool {
        switch (verticalSizeClass, horizontalSizeClass) {
        case (.regular, .regular): return true
        default: return false
        }
    }
    
}
