//
//  UIImageView.swift
//  Departure
//
//  Created by materik on 06/04/15.
//  Copyright (c) 2015 materik. All rights reserved.
//

import UIKit

public extension UIImageView {
    
    func setWidth(andKeepImageRatio width: CGFloat) {
        if let image = self.image {
            self.width = width
            self.height = width / image.size.width * image.size.height
        }
    }
    
    func setHeight(andKeepImageRatio height: CGFloat) {
        if let image = self.image {
            self.height = height
            self.width = height / image.size.height * image.size.width
        }
    }
    
}
