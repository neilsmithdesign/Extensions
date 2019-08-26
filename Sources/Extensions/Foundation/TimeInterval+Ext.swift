//
//  TimeInterval+Ext.swift
//  
//
//  Created by Neil Smith on 26/08/2019.
//

import Foundation

public extension TimeInterval {
    
    var asMinutesSeconds: String {
        return asString(with: [.minutes, .seconds], format: .digital)
    }
    
    var asHoursMinutesSeconds: String {
        return asString(with: [.hours, .minutes, .seconds], format: .digital)
    }
    
    enum Component: Int {
        case days = 0
        case hours
        case minutes
        case seconds
        var initial: String {
            switch self {
            case .days: return "d"
            case .hours: return "h"
            case .minutes: return "m"
            case .seconds: return "s"
            }
        }
    }
    
    enum Format {
        
        /// Returns values in the format "12:34:45"
        case digital
        
        /// Return values in the format "1h 23m 45s"
        case letters
    }
    
    func asString(with components: Set<Component>, format: Format) -> String {
        func string(for value: Int, component: Component) -> String {
            switch format {
            case .digital: return value < 10 ? "0\(value):" : "\(value):"
            case .letters: return "\(value)\(component.initial) "
            }
        }
        var remainingTime = self
        let comps = components.sorted(by: { $0.rawValue < $1.rawValue })
        var str = ""
        for c in comps {
            switch c {
            case .days: str += string(for: getDays(from: &remainingTime), component: .days)
            case .hours: str += string(for: getHours(from: &remainingTime), component: .hours)
            case .minutes: str += string(for: getMinutes(from: &remainingTime), component: .minutes)
            case .seconds: str += string(for: Int(remainingTime), component: .seconds)
            }
        }
        let s = String(str.dropLast())
        return s
    }
    
    private func getDays(from t: inout TimeInterval) -> Int {
        let d = Int(t / 60 / 60 / 24)
        t -= Double(d * 60 * 60 * 24)
        return d
    }
    
    private func getHours(from t: inout TimeInterval) -> Int {
        let h = Int(t / 60 / 60)
        t -= Double(h * 60 * 60)
        return h
    }
    
    private func getMinutes(from t: inout TimeInterval) -> Int {
        let h = Int(t / 60)
        t -= Double(h * 60)
        return h
    }

}
