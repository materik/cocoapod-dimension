//
//  CGSize.swift
//  Pods
//
//  Created by materik on 10/08/15.
//
//

import UIKit

public extension CGSize {
    
    init(squared: CGFloat) {
        self.init(width: squared, height: squared)
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
