//
//  UIColor+Ext.swift
//  
//
//  Created by Neil Smith on 26/08/2019.
//

import UIKit

public extension UIColor {
    
    typealias HexValue = Int
    
    convenience init(red: Int, green: Int, blue: Int, av: Float) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: CGFloat(av))
    }
    
    convenience init(hex: HexValue, alpha: Float = 1.0) {
        self.init(red:(hex >> 16) & 0xff, green:(hex >> 8) & 0xff, blue:hex & 0xff, av: alpha)
    }
    
}
