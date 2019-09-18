//
//  File.swift
//  
//
//  Created by Neil Smith on 18/09/2019.
//

import Foundation

public extension ClosedRange where Bound == Double {
    
    var midPoint: Double {
        return ((upperBound - lowerBound) / 2) + lowerBound
    }
    
}
