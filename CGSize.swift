//
//  CGSize.swift
//  Pods
//
//  Created by materik on 10/08/15.
//
//

import UIKit

func *(scalar: CGFloat, size: CGSize) -> CGSize {
    return CGSize(width: scalar * size.width, height: scalar * size.height)
}
