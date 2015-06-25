//
//  UIViewTests.swift
//  MEViewExtensions
//
//  Created by materik on 25/06/15.
//  Copyright (c) 2015 materik. All rights reserved.
//

import UIKit
import XCTest

class UIViewTests: XCTestCase {
    
    func testGetX() {
        let view1 = UIView()
        XCTAssertEqual(view1.frame.origin.x, view1.x)
        XCTAssertEqual(view1.x, 0)
        let view2 = UIView(frame: CGRectMake(10, 0, 0, 0))
        XCTAssertEqual(view2.frame.origin.x, view2.x)
        XCTAssertEqual(view2.x, 10)
    }
    
}