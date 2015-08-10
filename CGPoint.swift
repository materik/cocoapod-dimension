//
//  CGPoint.swift
//  Pods
//
//  Created by materik on 10/08/15.
//
//

import UIKit

public extension CGPoint {
    
    init(squared: CGFloat) {
        self.init(x: squared, y: squared)
    }
    
    func exists(inFrame frame: CGRect) -> Bool {
        return (self.x >= frame.origin.x && self.x <= (frame.origin.x + frame.size.width) &&
            self.y >= frame.origin.y && self.y <= (frame.origin.y + frame.size.height))
    }
    
}

public func +(pnt1: CGPoint, pnt2: CGPoint) -> CGPoint {
    return CGPoint(x: pnt1.x + pnt2.x, y: pnt1.y + pnt2.y)
}

public func -(pnt1: CGPoint, pnt2: CGPoint) -> CGPoint {
    return CGPoint(x: pnt1.x - pnt2.x, y: pnt1.y - pnt2.y)
}

public func +(pnt: CGPoint, size: CGSize) -> CGPoint {
    return CGPoint(x: pnt.x + size.width, y: pnt.y * size.height)
}

public func -(ptn: CGPoint, size: CGSize) -> CGPoint {
    return CGPoint(x: ptn.x - size.width, y: ptn.y - size.height)
}
