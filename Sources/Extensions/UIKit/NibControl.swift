//
//  NibControl.swift
//  
//
//  Created by Neil Smith on 29/08/2019.
//

import UIKit

open class NibControl: UIControl, UIViewNibLoadable {
    
    public var nibBackingView: UIView!
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        prepareControl()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
        prepareControl()
    }
    
    override open func layoutMarginsDidChange() {
        setNeedsLayout()
    }
    
    private func prepareControl() {
        nibBackingView.isUserInteractionEnabled = false
    }
}
