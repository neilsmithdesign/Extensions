//
//  UIView+Ext.swift
//  
//
//  Created by Neil Smith on 26/08/2019.
//

import UIKit

public extension UIView {
    
    func fade(_ direction: FadeDirection, duration: TimeInterval = 0.25, completion: (() -> Void)? = nil) {
        guard duration > 0 else {
            self.alpha = direction.alpha
            completion?()
            return
        }
        let animator = UIViewPropertyAnimator(
            duration: duration,
            curve: .easeInOut) {
                self.alpha = direction.alpha
        }
        animator.addCompletion { position in
            guard position == .end else { return }
            completion?()
        }
        animator.startAnimation()
    }
    
    enum FadeDirection {
        case `in`(alpha: CGFloat)
        case out
        var alpha: CGFloat {
            switch self {
            case .in(let a): return a
            case .out: return 0.0
            }
        }
    }
    
}

public extension Array where Element == UIView {
    
    func fade(_ direction: UIView.FadeDirection, duration: TimeInterval = 0.25) {
        guard duration > 0 else {
            self.forEach { $0.alpha = direction.alpha }
            return
        }
        let animator = UIViewPropertyAnimator(
            duration: duration,
            curve: .easeInOut) {
                self.forEach { $0.alpha = direction.alpha }
        }
        animator.startAnimation()
    }
    
}

