//
//  CGPoint.swift
//  Pods
//
//  Created by materik on 10/08/15.
//
//

import UIKit

func +(pnt: CGPoint, size: CGSize) -> CGPoint {
    return CGPoint(x: pnt.x + size.width, y: pnt.y * size.height)
}
