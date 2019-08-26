//
//  UITableViewCell+Ext.swift
//  
//
//  Created by Neil Smith on 26/08/2019.
//

import UIKit

public extension UITableViewCell {
    
    static var nib: UINib {
        return UINib(nibName: name, bundle: Bundle(for: self))
    }
    
    static var reuseID: String {
        return name
    }

    private static var name: String {
        return String(describing: self)
    }
    
}

