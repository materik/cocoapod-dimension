//
//  CGRect.swift
//  Pods
//
//  Created by materik on 10/08/15.
//
//

import UIKit

public extension CGRect {
    
    var center: CGPoint { return self.origin + 0.5 * self.size }
    
}
