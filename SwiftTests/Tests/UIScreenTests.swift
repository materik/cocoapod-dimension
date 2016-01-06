//
//  UIScreenTests.swift
//  Dimension
//
//  Created by materik on 256/15.
//  Copyright (c) 2015 materik. All rights reserved.
//

import Dimension
import UIKit
import XCTest

class UIScreenTests: XCTestCase {

    // MARK: width
    
    func testGetWidth() {
        let mainScreen = UIScreen.mainScreen()
        XCTAssertEqual(mainScreen.bounds.size.width, mainScreen.width)
        XCTAssertEqual(mainScreen.bounds.size.width, UIScreen.width)
    }
    
    func testGetW() {
        let mainScreen = UIScreen.mainScreen()
        XCTAssertEqual(mainScreen.bounds.size.width, mainScreen.w)
        XCTAssertEqual(mainScreen.bounds.size.width, UIScreen.w)
    }

    // MARK: height
    
    func testGetHeight() {
        let mainScreen = UIScreen.mainScreen()
        XCTAssertEqual(mainScreen.bounds.size.height, mainScreen.height)
        XCTAssertEqual(mainScreen.bounds.size.height, UIScreen.height)
    }
    
    func testGetH() {
        let mainScreen = UIScreen.mainScreen()
        XCTAssertEqual(mainScreen.bounds.size.height, mainScreen.h)
        XCTAssertEqual(mainScreen.bounds.size.height, UIScreen.h)
    }

    // MARK: size

    func testGetSize() {
        let mainScreen = UIScreen.mainScreen()
        XCTAssertEqual(mainScreen.bounds.size, mainScreen.size)
        XCTAssertEqual(mainScreen.bounds.size, UIScreen.size)
    }
    
    // MARK: center
    
    func testGetCenter() {
        let mainScreen = UIScreen.mainScreen()
        let center = CGPoint(x: mainScreen.bounds.size.width / 2.0,
                             y: mainScreen.bounds.size.height / 2.0);
        XCTAssertEqual(mainScreen.center, center)
        XCTAssertEqual(UIScreen.center, center)
    }

}
