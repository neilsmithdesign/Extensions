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

public extension ClosedRange {
    var min: Bound { lowerBound }
    var max: Bound { upperBound }
}

public extension ClosedRange where Bound: RawRepresentable, Bound.RawValue == Int {
    var average: Double {
        Double(min.rawValue + max.rawValue) / 2
    }
}

