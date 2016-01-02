//
//  UIImageView.swift
//  Departure
//
//  Created by materik on 06/04/15.
//  Copyright (c) 2015 materik. All rights reserved.
//

import UIKit

public extension UIImageView {
    
    func setWidth(andKeepImageRatio w: CGFloat) {
        self.w = w
        if let image = self.image {
            self.h = w / image.size.width * image.size.height
        }
    }
    
    func setHeight(andKeepImageRatio h: CGFloat) {
        self.h = h
        if let image = self.image {
            self.w = h / image.size.height * image.size.width
        }
    }
    
}