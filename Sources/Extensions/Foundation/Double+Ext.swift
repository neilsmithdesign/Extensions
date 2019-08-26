//
//  Double+Ext.swift
//  
//
//  Created by Neil Smith on 26/08/2019.
//

import Foundation

public extension Double {
    
    func roundTo(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
    
}
