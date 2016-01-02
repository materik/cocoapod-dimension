//
//  CGSize.swift
//  Pods
//
//  Created by materik on 10/08/15.
//
//

import UIKit

// TODO(materik):
// * needs tests

public extension CGSize {
    
    var w: CGFloat { return self.width }
    var h: CGFloat { return self.height }
    
    init(squared: CGFloat) {
        self.init(width: squared, height: squared)
    }
    
    init(width: CGFloat) {
        self.init(width: width, height: 0)
    }
    
    init(w: CGFloat) {
        self.init(width: w)
    }
    
    init(height: CGFloat) {
        self.init(width: 0, height: height)
    }
    
    init(h: CGFloat) {
        self.init(height: h)
    }
    
    init(w: CGFloat, h: CGFloat) {
        self.init(width: w, height: h)
    }
    
}

public func *(scalar: CGFloat, size: CGSize) -> CGSize {
    return CGSize(width: scalar * size.width, height: scalar * size.height)
}

public func +(size1: CGSize, size2: CGSize) -> CGSize {
    return CGSize(width: size1.width + size2.width, height: size1.height + size2.height)
}

public func -(size1: CGSize, size2: CGSize) -> CGSize {
    return CGSize(width: size1.width - size2.width, height: size1.height - size2.height)
}
