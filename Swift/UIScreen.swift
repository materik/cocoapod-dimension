//
//  UIScreen.swift
//  WatchTheDaysLeft
//
//  Created by materik on 07/03/15.
//  Copyright (c) 2015 materik. All rights reserved.
//

import UIKit

public extension UIScreen {
    
    // MARK: properties
    
    var w: CGFloat { return self.width }
    var h: CGFloat { return self.height }
    var width: CGFloat { return self.bounds.width }
    var height: CGFloat { return self.bounds.height }
    var size: CGSize { return CGSize(width: self.width, height: self.height) }
    var center: CGPoint { return self.size.center }
    
    // MARK: static
    
    class var w: CGFloat { return UIScreen.mainScreen().w }
    class var h: CGFloat { return UIScreen.mainScreen().h }
    class var width: CGFloat { return UIScreen.mainScreen().width }
    class var height: CGFloat { return UIScreen.mainScreen().height }
    class var size: CGSize { return UIScreen.mainScreen().size }
    class var center: CGPoint { return UIScreen.mainScreen().center }
    
}