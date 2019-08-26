//
//  NibView.swift
//  
//
//  Created by Neil Smith on 26/08/2019.
//

import UIKit

open class NibView: UIView, UIViewNibLoadable {
    
    public var nibBackingView: UIView!
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override open func layoutMarginsDidChange() {
        setNeedsLayout()
    }
    
}


public protocol UIViewNibLoadable: AnyObject {
    var nibBackingView: UIView! { get set }
}


extension UIViewNibLoadable where Self: UIView {
    func setup() {
        nibBackingView = loadFromNib()
        nibBackingView.frame = self.bounds
        nibBackingView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        nibBackingView.translatesAutoresizingMaskIntoConstraints = true
        nibBackingView.backgroundColor = UIColor.clear
        addSubview(nibBackingView)
    }
}


extension UIView {
    public func loadFromNib<T: UIView>() -> T {
        let bundle = Bundle(for: type(of: self))
        let nibName = String(describing: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! T
        return view
    }
}

