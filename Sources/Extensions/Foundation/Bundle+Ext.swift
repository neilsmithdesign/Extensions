//
//  Bunde+Ext.swift
//  
//
//  Created by Neil Smith on 27/11/2019.
//

import Foundation

public extension Bundle {
    
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
    
}
