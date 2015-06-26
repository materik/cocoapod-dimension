//
//  UIScreenTests.swift
//  MEViewExtensions
//
//  Created by materik on 256/15.
//  Copyright (c) 2015 materik. All rights reserved.
//

import UIKit
import XCTest

class UIScreenTests: XCTestCase {

    // MARK: width
    
    func testGetWidth() {
        let mainScreen = UIScreen.mainScreen()
        XCTAssertEqual(mainScreen.bounds.width, mainScreen.width)
        XCTAssertEqual(mainScreen.width, 320)
        XCTAssertEqual(mainScreen.bounds.width, UIScreen.width)
        XCTAssertEqual(UIScreen.width, 320)
    }
    
    func testGetW() {
        let mainScreen = UIScreen.mainScreen()
        XCTAssertEqual(mainScreen.bounds.width, mainScreen.w)
        XCTAssertEqual(mainScreen.w, 320)
        XCTAssertEqual(mainScreen.bounds.width, UIScreen.w)
        XCTAssertEqual(UIScreen.w, 320)
    }

    // MARK: height
    
    func testGetHeight() {
        let mainScreen = UIScreen.mainScreen()
        XCTAssertEqual(mainScreen.bounds.height, mainScreen.height)
        XCTAssertEqual(mainScreen.height, 480)
        XCTAssertEqual(mainScreen.bounds.height, UIScreen.height)
        XCTAssertEqual(UIScreen.height, 480)
    }
    
    func testGetH() {
        let mainScreen = UIScreen.mainScreen()
        XCTAssertEqual(mainScreen.bounds.height, mainScreen.h)
        XCTAssertEqual(mainScreen.h, 480)
        XCTAssertEqual(mainScreen.bounds.height, UIScreen.h)
        XCTAssertEqual(UIScreen.h, 480)
    }

    // MARK: size

    func testGetSize() {
        let mainScreen = UIScreen.mainScreen()
        XCTAssertEqual(mainScreen.size, CGSize(width: 320, height: 480))
        XCTAssertEqual(UIScreen.size, CGSize(width: 320, height: 480))
    }

}
