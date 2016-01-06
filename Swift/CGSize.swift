//
//  CGSize.swift
//  Pods
//
//  Created by materik on 10/08/15.
//
//

import UIKit

public extension CGSize {
    
    // MARK: properies
    
    var w: CGFloat {
        get { return self.width }
        set { self.width = newValue }
    }
    var h: CGFloat {
        get { return self.height }
        set { self.height = newValue }
    }
    var center: CGPoint { return 0.5 * CGPoint(size: self) }
    
    // MARK: init
    
    init(squared: CGFloat) {
        self.init(width: squared, height: squared)
    }
    
    init(w: CGFloat) {
        self.init(width: w)
    }
    
    init(h: CGFloat) {
        self.init(height: h)
    }
    
    init(w: CGFloat, h: CGFloat) {
        self.init(width: w, height: h)
    }
    
    init(width: CGFloat) {
        self.init(width: width, height: 0.0)
    }
    
    init(height: CGFloat) {
        self.init(width: 0.0, height: height)
    }
    
}

// MARK: operations

public func *(scalar: CGFloat, size: CGSize) -> CGSize {
    return CGSize(width: scalar * size.width, height: scalar * size.height)
}

public func +(size1: CGSize, size2: CGSize) -> CGSize {
    return CGSize(width: size1.width + size2.width, height: size1.height + size2.height)
}

public func -(size1: CGSize, size2: CGSize) -> CGSize {
    return size1 + -1.0 * size2
}
