//
//  CGRect.swift
//  Pods
//
//  Created by materik on 10/08/15.
//
//

import UIKit

// TODO(materik):
// * needs tests

public extension CGRect {
    
    var w: CGFloat { return self.width }
    var h: CGFloat { return self.height }
    var center: CGPoint { return self.origin + 0.5 * self.size }
    var relativeCenter: CGPoint { return CGPoint() + 0.5 * self.size }

    // -
    
    init(origin: CGPoint) {
        self.init(origin: origin, size: CGSize())
    }
    
    init(size: CGSize) {
        self.init(origin: CGPoint(), size: size)
    }
    
    // -
    
    init(x: CGFloat) {
        self.init(x: x, y: 0, width: 0, height: 0)
    }
    
    init(y: CGFloat) {
        self.init(x: 0, y: y, width: 0, height: 0)
    }
    
    init(width: CGFloat) {
        self.init(x: 0, y: 0, width: width, height: 0)
    }
    
    init(w: CGFloat) {
        self.init(width: w)
    }
    
    init(height: CGFloat) {
        self.init(x: 0, y: 0, width: 0, height: height)
    }
    
    init(h: CGFloat) {
        self.init(height: h)
    }
    
    // -
    
    init(x: CGFloat, y: CGFloat) {
        self.init(x: x, y: y, size: CGSize())
    }
    
    init(x: CGFloat, y: CGFloat, size: CGSize) {
        self.init(origin: CGPoint(x: x, y: y), size: size)
    }
    
    init(x: CGFloat, size: CGSize) {
        self.init(origin: CGPoint(x: x, y: 0), size: size)
    }
    
    init(y: CGFloat, size: CGSize) {
        self.init(origin: CGPoint(x: 0, y: y), size: size)
    }
    
    // -
    
    init(width: CGFloat, height: CGFloat) {
        self.init(origin: CGPoint(), width: width, height: height)
    }
    
    init(w: CGFloat, h: CGFloat) {
        self.init(width: w, height: h)
    }
    
    init(origin: CGPoint, width: CGFloat, height: CGFloat) {
        self.init(origin: origin, size: CGSize(width: width, height: height))
    }
    
    init(origin: CGPoint, w: CGFloat, h: CGFloat) {
        self.init(origin: origin, width: w, height: h)
    }
    
}
