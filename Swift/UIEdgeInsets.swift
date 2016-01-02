//
//  UIEdgeInsets.swift
//  Pods
//
//  Created by materik on 27/12/15.
//
//

import UIKit

public extension UIEdgeInsets {
    
    // -
    
    init(top: CGFloat) {
        self.init(top: top, left: 0.0, bottom: 0.0, right: 0.0)
    }
    
    init(left: CGFloat) {
        self.init(top: 0.0, left: left, bottom: 0.0, right: 0.0)
    }
    
    init(bottom: CGFloat) {
        self.init(top: 0.0, left: 0.0, bottom: bottom, right: 0.0)
    }
    
    init(right: CGFloat) {
        self.init(top: 0.0, left: 0.0, bottom: 0.0, right: right)
    }
    
    // -
    
    init(top: CGFloat, left: CGFloat) {
        self.init(top: top, left: left, bottom: 0.0, right: 0.0)
    }
    
    init(top: CGFloat, bottom: CGFloat) {
        self.init(top: top, left: 0.0, bottom: bottom, right: 0.0)
    }
    
    init(top: CGFloat, right: CGFloat) {
        self.init(top: top, left: 0.0, bottom: 0.0, right: right)
    }
    
    init(left: CGFloat, bottom: CGFloat) {
        self.init(top: 0.0, left: left, bottom: bottom, right: 0.0)
    }
    
    init(left: CGFloat, right: CGFloat) {
        self.init(top: 0.0, left: left, bottom: 0.0, right: right)
    }
    
    init(bottom: CGFloat, right: CGFloat) {
        self.init(top: 0.0, left: 0.0, bottom: bottom, right: right)
    }
    
    // -
    
    init(top: CGFloat, left: CGFloat, bottom: CGFloat) {
        self.init(top: top, left: left, bottom: bottom, right: 0.0)
    }
    
    init(top: CGFloat, left: CGFloat, right: CGFloat) {
        self.init(top: top, left: left, bottom: 0.0, right: right)
    }
    
    init(top: CGFloat, bottom: CGFloat, right: CGFloat) {
        self.init(top: top, left: 0.0, bottom: bottom, right: right)
    }
    
    init(left: CGFloat, bottom: CGFloat, right: CGFloat) {
        self.init(top: 0.0, left: left, bottom: bottom, right: right)
    }
    
    // -
    
    init(horizontal: CGFloat, vertical: CGFloat) {
        self.init(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
    }
    
    init(horizontal: CGFloat) {
        self.init(top: 0.0, left: horizontal, bottom: 0.0, right: horizontal)
    }
    
    init(horizontal: CGFloat, top: CGFloat, bottom: CGFloat) {
        self.init(top: top, left: horizontal, bottom: bottom, right: horizontal)
    }
    
    init(horizontal: CGFloat, top: CGFloat) {
        self.init(top: top, left: horizontal, bottom: 0.0, right: horizontal)
    }
    
    init(horizontal: CGFloat, bottom: CGFloat) {
        self.init(top: 0.0, left: horizontal, bottom: bottom, right: horizontal)
    }

    init(vertical: CGFloat) {
        self.init(top: vertical, left: 0.0, bottom: vertical, right: 0.0)
    }

    init(vertical: CGFloat, left: CGFloat, right: CGFloat) {
        self.init(top: vertical, left: left, bottom: vertical, right: right)
    }
    
    init(vertical: CGFloat, left: CGFloat) {
        self.init(top: vertical, left: left, bottom: vertical, right: 0.0)
    }
    
    init(vertical: CGFloat, right: CGFloat) {
        self.init(top: vertical, left: 0.0, bottom: vertical, right: right)
    }
    
}

public func *(scalar: CGFloat, inset: UIEdgeInsets) -> UIEdgeInsets {
    return UIEdgeInsets(top: scalar * inset.top, left: scalar * inset.left,
        bottom: scalar * inset.bottom, right: scalar * inset.right)
}

public func +(inset1: UIEdgeInsets, inset2: UIEdgeInsets) -> UIEdgeInsets {
    return UIEdgeInsets(top: inset1.top + inset2.top, left: inset1.left + inset2.left,
        bottom: inset1.bottom + inset2.bottom, right: inset1.right + inset2.right)
}

public func -(inset1: UIEdgeInsets, inset2: UIEdgeInsets) -> UIEdgeInsets {
    return inset1 + -1.0 * inset2
}

public func +(frame: CGRect, inset: UIEdgeInsets) -> CGRect {
    return CGRect(x: frame.x + inset.left, y: frame.y + inset.top,
        width: frame.width - inset.left - inset.right,
        height: frame.height - inset.top - inset.bottom)
}

public func -(frame: CGRect, inset: UIEdgeInsets) -> CGRect {
    return frame + -1.0 * inset
}
