//
//  CGPoint.swift
//  Pods
//
//  Created by materik on 10/08/15.
//
//

import UIKit

// TODO(materik):
// * needs tests

public extension CGPoint {
    
    init(squared: CGFloat) {
        self.init(x: squared, y: squared)
    }
    
    init(x: CGFloat) {
        self.init(x: x, y: 0.0)
    }
    
    init(y: CGFloat) {
        self.init(x: 0.0, y: y)
    }
    
    init(size: CGSize) {
        self.init(x: size.w, y: size.h)
    }
    
}

public func *(scalar: CGFloat, pnt: CGPoint) -> CGPoint {
    return CGPoint(x: scalar * pnt.x, y: scalar * pnt.y)
}

public func +(pnt1: CGPoint, pnt2: CGPoint) -> CGPoint {
    return CGPoint(x: pnt1.x + pnt2.x, y: pnt1.y + pnt2.y)
}

public func -(pnt1: CGPoint, pnt2: CGPoint) -> CGPoint {
    return pnt1 + -1.0 * pnt2
}

public func +(pnt: CGPoint, size: CGSize) -> CGPoint {
    return CGPoint(x: pnt.x + size.width, y: pnt.y + size.height)
}

public func -(pnt: CGPoint, size: CGSize) -> CGPoint {
    return pnt + -1.0 * size
}
