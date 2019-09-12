//
//  Array+Ext.swift
//  
//
//  Created by Neil Smith on 12/09/2019.
//

import Foundation

public extension Array where Element: (Comparable & SignedNumeric) {

    func find(nearestTo value: Element) -> Element? {
        guard !isEmpty else { return nil }
        var nearest = self[0]
        for element in self {
            if abs(value - element) < abs(value - nearest) {
                nearest = element
            }
        }
        return nearest
    }
    
    func find(indexOfNearestTo value: Element) -> Index? {
        guard !isEmpty else { return nil }
        var nearest = startIndex
        for i in startIndex..<endIndex {
            let element = self[i]
            if abs(value - element) < abs(value - self[nearest]) {
                nearest = i
            }
        }
        return nearest
    }
    
}
