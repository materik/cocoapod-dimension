//
//  UIViewController.swift
//  Departure
//
//  Created by materik on 31/03/15.
//  Copyright (c) 2015 materik. All rights reserved.
//

import UIKit

public extension UIViewController {
    
    var x: CGFloat {
        set { self.view.x = newValue }
        get { return self.view.x }
    }
    var y: CGFloat {
        set { self.view.y = newValue }
        get { return self.view.y }
    }
    var w: CGFloat {
        set { self.view.w = newValue }
        get { return self.view.w }
    }
    var h: CGFloat {
        set { self.view.h = newValue }
        get { return self.view.h }
    }
    
    var top: CGFloat {
        set { self.y = newValue }
        get { return self.y }
    }
    var right: CGFloat {
        set { self.x = newValue - self.w }
        get { return self.x + self.w }
    }
    var bottom: CGFloat {
        set { self.y = newValue - self.h }
        get { return self.y + self.h }
    }
    var left: CGFloat {
        set { self.x = newValue }
        get { return self.x }
    }
    
    var origin: CGPoint {
        set { self.view.frame.origin = newValue }
        get { return self.view.frame.origin }
    }
    var size: CGSize {
        set { self.view.frame.size = newValue }
        get { return self.view.frame.size }
    }
    
}
