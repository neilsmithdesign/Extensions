//
//  File.swift
//  
//
//  Created by Neil Smith on 24/11/2019.
//

import UIKit

public extension UIDevice {
    
    var iPhoneSEOrSmaller: Bool {
        return
            (isPortrait && UIScreen.main.bounds.height < 600) ||
                (isLandscape && UIScreen.main.bounds.height < 350)
    }
    
    var isPortrait: Bool {
        return UIDevice.current.orientation == .portrait || UIDevice.current.orientation == .unknown
    }
    
    var isLandscape: Bool {
        return (UIDevice.current.orientation == .landscapeLeft || UIDevice.current.orientation == .landscapeRight)
    }
    
    var iPadLandscape: Bool {
        return (isLandscape && UIDevice.current.userInterfaceIdiom == .pad)
    }
    
}
