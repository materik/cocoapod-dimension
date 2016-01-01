//
//  UIEdgeInsetsTests.swift
//  Demo
//
//  Created by materik on 02/01/16.
//
//

import Dimension
import UIKit
import XCTest

class UIEdgeInsetsTests: XCTestCase {
    
    func testInitHorizontal() {
        let inset = UIEdgeInsets(horizontal: 10.0)
        XCTAssertEqual(inset.top, 0.0)
        XCTAssertEqual(inset.left, 10.0)
        XCTAssertEqual(inset.bottom, 0.0)
        XCTAssertEqual(inset.right, 10.0)
    }
    
}
