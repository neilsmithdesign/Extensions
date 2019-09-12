//
//  Double+Ext.swift
//  
//
//  Created by Neil Smith on 26/08/2019.
//

import Foundation

public extension Double {
    
    
    /// Rounds to the specified number of decimal places
    /// E.g. 1.23456 rounded to 2 places -> 1.23
    func roundTo(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
    
    enum PlaceName: Int {
        case ten = 10
        case hundred = 100
        case thousand = 1000
    }
    
    /// Rounds to the nearest ten, hundred or thousand
    func roundTo(nearest place: PlaceName) -> Int {
        let n = place.rawValue
        return n * Int((self / Double(n)).rounded())
    }
    
}
