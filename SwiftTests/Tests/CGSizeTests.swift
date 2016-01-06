//
//  CGSizeTests.swift
//  SwiftTests
//
//  Created by materik on 06/01/16.
//
//

import Dimension
import XCTest

class CGSizeTests: XCTestCase {
    
    // MARK: width
    
    func testGetW() {
        let size = CGSize(width: 10.0, height: 20.0)
        XCTAssertEqual(size.w, size.width)
        XCTAssertEqual(size.w, 10.0)
    }
    
    func testSetW() {
        var size = CGSize()
        size.w = 10.0
        XCTAssertEqual(size.w, size.width)
        XCTAssertEqual(size.w, 10.0)
    }
    
    // MARK: height
    
    func testGetH() {
        let size = CGSize(width: 10.0, height: 20.0)
        XCTAssertEqual(size.h, size.height)
        XCTAssertEqual(size.h, 20.0)
    }
    
    func testSetH() {
        var size = CGSize()
        size.h = 10.0
        XCTAssertEqual(size.h, size.height)
        XCTAssertEqual(size.h, 10.0)
    }
    
    // MARK: center
    
    func testGetCenter() {
        let size = CGSize(width: 10.0, height: 20.0)
        XCTAssertEqual(size.center.x, 5.0)
        XCTAssertEqual(size.center.y, 10.0)
    }
    
    // MARK: init
    
    func testInitSquared() {
        let size = CGSize(squared: 10.0)
        XCTAssertEqual(size.width, 10.0)
        XCTAssertEqual(size.height, 10.0)
    }
    
    func testInitW() {
        let size = CGSize(w: 10.0)
        XCTAssertEqual(size.width, 10.0)
        XCTAssertEqual(size.height, 0.0)
    }
    
    func testInitH() {
        let size = CGSize(h: 20.0)
        XCTAssertEqual(size.width, 0.0)
        XCTAssertEqual(size.height, 20.0)
    }
    
    func testInitWAndH() {
        let size = CGSize(w: 10.0, h: 20.0)
        XCTAssertEqual(size.width, 10.0)
        XCTAssertEqual(size.height, 20.0)
    }
    
    func testInitWidth() {
        let size = CGSize(width: 10.0)
        XCTAssertEqual(size.width, 10.0)
        XCTAssertEqual(size.height, 0.0)
    }
    
    func testInitHeight() {
        let size = CGSize(height: 20.0)
        XCTAssertEqual(size.width, 0.0)
        XCTAssertEqual(size.height, 20.0)
    }
    
    // MARK: operations
    
    func testMultiplication() {
        let size = CGSize(width: 5, height: 10)
        XCTAssertEqual(2 * size, CGSize(width: 10, height: 20))
        XCTAssertEqual(3 * size, CGSize(width: 15, height: 30))
    }
    
    func testAddition() {
        let size = CGSize(width: 5, height: 10)
        XCTAssertEqual(size + CGSize(width: 5, height: 10), CGSize(width: 10, height: 20))
        XCTAssertEqual(size + CGSize(width: 10, height: 20), CGSize(width: 15, height: 30))
    }
    
    func testSubtraction() {
        let size = CGSize(width: 5, height: 10)
        XCTAssertEqual(size - CGSize(width: 5, height: 10), CGSize(width: 0, height: 0))
        XCTAssertEqual(size - CGSize(width: 10, height: 20), CGSize(width: -5, height: -10))
    }
    
}
