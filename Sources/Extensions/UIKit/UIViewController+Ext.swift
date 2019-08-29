//
//  UIViewController+Ext.swift
//  
//
//  Created by Neil Smith on 26/08/2019.
//

import UIKit

public func constrain(_ subview: UIView,
                      to superview: UIView,
                      safeArea: Bool = true,
                      leadingConstant: CGFloat = 0,
                      trailingConstant: CGFloat = 0,
                      topConstant: CGFloat = 0,
                      bottomConstant: CGFloat = 0) {
    superview.addSubview(subview)
    let top = safeArea ? superview.safeAreaLayoutGuide.topAnchor : superview.topAnchor
    let trailing = safeArea ? superview.safeAreaLayoutGuide.trailingAnchor : superview.trailingAnchor
    let bottom = safeArea ? superview.safeAreaLayoutGuide.bottomAnchor : superview.bottomAnchor
    let leading = safeArea ? superview.safeAreaLayoutGuide.leadingAnchor : superview.leadingAnchor
    subview.topAnchor.constraint(equalTo: top, constant: topConstant).isActive = true
    subview.trailingAnchor.constraint(equalTo: trailing, constant: -trailingConstant).isActive = true
    subview.bottomAnchor.constraint(equalTo: bottom, constant: -bottomConstant).isActive = true
    subview.leadingAnchor.constraint(equalTo: leading, constant: leadingConstant).isActive = true
}


public extension UIViewController {
    
    static func instantiateFromStoryboard() -> Self {
        let name = String(describing: self)
        let storyboard = UIStoryboard(name: name, bundle: Bundle(for: self))
        if #available(iOS 13.0, *) {
            let viewController = storyboard.instantiateViewController(identifier: name)
            return viewController as! Self
        } else {
            let viewController = storyboard.instantiateViewController(withIdentifier: name)
            return viewController as! Self
        }
    }
    
}


public extension UIViewController {
    
    func add(_ child: UIViewController, to containerView: UIView) {
        addChild(child)
        containerView.addSubview(child.view)
        child.view.frame = containerView.bounds
        child.didMove(toParent: self)
    }
    
    func remove() {
        guard parent != nil else { return }
        willMove(toParent: nil)
        removeFromParent()
        view.removeFromSuperview()
    }
    
}

