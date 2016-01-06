//
//  CGRectTests.swift
//  SwiftTests
//
//  Created by materik on 06/01/16.
//
//

import XCTest

class CGRectTests: XCTestCase {
    
    // MARK: - frame
    
    // MARK: x
    
    func testGetX() {
        let frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        XCTAssertEqual(frame.x, frame.origin.x)
        XCTAssertEqual(frame.x, 1)
    }
    
    func testSetX() {
        var frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        frame.x = 10
        XCTAssertEqual(frame.x, frame.origin.x)
        XCTAssertEqual(frame.x, 10)
    }
    
    // MARK: y
    
    func testGetY() {
        let frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        XCTAssertEqual(frame.y, frame.origin.y)
        XCTAssertEqual(frame.y, 2)
    }
    
    func testSetY() {
        var frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        frame.y = 10
        XCTAssertEqual(frame.y, frame.origin.y)
        XCTAssertEqual(frame.y, 10)
    }
    
    // MARK: width
    
    func testGetW() {
        let frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        XCTAssertEqual(frame.w, frame.size.w)
        XCTAssertEqual(frame.w, 3)
    }
    
    func testSetW() {
        var frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        frame.w = 10
        XCTAssertEqual(frame.w, frame.size.w)
        XCTAssertEqual(frame.w, 10)
    }
    
    // MARK: height
    
    func testGetH() {
        let frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        XCTAssertEqual(frame.h, frame.size.h)
        XCTAssertEqual(frame.h, 4)
    }
    
    func testSetH() {
        var frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        frame.h = 10
        XCTAssertEqual(frame.h, frame.size.h)
        XCTAssertEqual(frame.h, 10)
    }
    
    // MARK: - edges
    
    // MARK: top
    
    func testGetTop() {
        let frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        XCTAssertEqual(frame.top, frame.origin.y)
        XCTAssertEqual(frame.top, 2)
    }
    
    func testSetTop() {
        var frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        frame.top = 10
        XCTAssertEqual(frame.top, frame.origin.y)
        XCTAssertEqual(frame.top, 10)
    }
    
    // MARK: right
    
    func testGetRight() {
        let frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        XCTAssertEqual(frame.right, frame.origin.x + frame.size.width)
        XCTAssertEqual(frame.right, 4)
    }
    
    func testSetRight() {
        var frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        frame.right = 10
        XCTAssertEqual(frame.right, frame.origin.x + frame.size.width)
        XCTAssertEqual(frame.right, 10)
        XCTAssertEqual(frame.origin.x, 7)
    }
    
    // MARK: bottom
    
    func testGetBottom() {
        let frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        XCTAssertEqual(frame.bottom, frame.origin.y + frame.size.height)
        XCTAssertEqual(frame.bottom, 6)
    }
    
    func testSetBottom() {
        var frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        frame.bottom = 10
        XCTAssertEqual(frame.bottom, frame.origin.y + frame.size.height)
        XCTAssertEqual(frame.bottom, 10)
        XCTAssertEqual(frame.origin.y, 6)
    }
    
    // MARK: left
    
    func testGetLeft() {
        let frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        XCTAssertEqual(frame.left, frame.origin.x)
        XCTAssertEqual(frame.left, 1)
    }
    
    func testSetLeft() {
        var frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        frame.left = 10
        XCTAssertEqual(frame.left, frame.origin.x)
        XCTAssertEqual(frame.left, 10)
    }
    
    // MARK: center
    
    func testGetCenter() {
        let frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        XCTAssertEqual(frame.center, CGPoint(x: 2.5, y: 4))
    }
    
    func testSetCenter() {
        var frame = CGRect(x: 1, y: 2, width: 3, height: 4)
        frame.center = CGPoint(x: 5, y: 10)
        XCTAssertEqual(frame.center, CGPoint(x: 5, y: 10))
        XCTAssertEqual(frame.origin, CGPoint(x: 3.5, y: 8))
    }
    
    // MARK: init
    
    func testInitOrigin() {
        let frame = CGRect(origin: CGPoint(x: 1, y: 2))
        XCTAssertEqual(frame.origin.x, 1)
        XCTAssertEqual(frame.origin.y, 2)
        XCTAssertEqual(frame.size.width, 0)
        XCTAssertEqual(frame.size.height, 0)
    }
    
    func testInitSize() {
        let frame = CGRect(size: CGSize(width: 3, height: 4))
        XCTAssertEqual(frame.origin.x, 0)
        XCTAssertEqual(frame.origin.y, 0)
        XCTAssertEqual(frame.size.width, 3)
        XCTAssertEqual(frame.size.height, 4)
    }
    
    func testInitX() {
        let frame = CGRect(x: 1)
        XCTAssertEqual(frame.origin.x, 1)
        XCTAssertEqual(frame.origin.y, 0)
        XCTAssertEqual(frame.size.width, 0)
        XCTAssertEqual(frame.size.height, 0)
    }
    
    func testInitY() {
        let frame = CGRect(y: 2)
        XCTAssertEqual(frame.origin.x, 0)
        XCTAssertEqual(frame.origin.y, 2)
        XCTAssertEqual(frame.size.width, 0)
        XCTAssertEqual(frame.size.height, 0)
    }
    
    func testInitW() {
        let frame = CGRect(w: 3)
        XCTAssertEqual(frame.origin.x, 0)
        XCTAssertEqual(frame.origin.y, 0)
        XCTAssertEqual(frame.size.width, 3)
        XCTAssertEqual(frame.size.height, 0)
    }
    
    func testInitH() {
        let frame = CGRect(h: 4)
        XCTAssertEqual(frame.origin.x, 0)
        XCTAssertEqual(frame.origin.y, 0)
        XCTAssertEqual(frame.size.width, 0)
        XCTAssertEqual(frame.size.height, 4)
    }
    
    func testInitWidth() {
        let frame = CGRect(width: 3)
        XCTAssertEqual(frame.origin.x, 0)
        XCTAssertEqual(frame.origin.y, 0)
        XCTAssertEqual(frame.size.width, 3)
        XCTAssertEqual(frame.size.height, 0)
    }
    
    func testInitHeight() {
        let frame = CGRect(height: 4)
        XCTAssertEqual(frame.origin.x, 0)
        XCTAssertEqual(frame.origin.y, 0)
        XCTAssertEqual(frame.size.width, 0)
        XCTAssertEqual(frame.size.height, 4)
    }
    
    func testInitXAndY() {
        let frame = CGRect(x: 1, y: 2)
        XCTAssertEqual(frame.origin.x, 1)
        XCTAssertEqual(frame.origin.y, 2)
        XCTAssertEqual(frame.size.width, 0)
        XCTAssertEqual(frame.size.height, 0)
    }
    
    func testInitXAndYAndSize() {
        let frame = CGRect(x: 1, y: 2, size: CGSize(w: 3, h: 4))
        XCTAssertEqual(frame.origin.x, 1)
        XCTAssertEqual(frame.origin.y, 2)
        XCTAssertEqual(frame.size.width, 3)
        XCTAssertEqual(frame.size.height, 4)
    }
    
    func testInitXAndSize() {
        let frame = CGRect(x: 1, size: CGSize(w: 3, h: 4))
        XCTAssertEqual(frame.origin.x, 1)
        XCTAssertEqual(frame.origin.y, 0)
        XCTAssertEqual(frame.size.width, 3)
        XCTAssertEqual(frame.size.height, 4)
    }
    
    func testInitYAndSize() {
        let frame = CGRect(y: 2, size: CGSize(w: 3, h: 4))
        XCTAssertEqual(frame.origin.x, 0)
        XCTAssertEqual(frame.origin.y, 2)
        XCTAssertEqual(frame.size.width, 3)
        XCTAssertEqual(frame.size.height, 4)
    }
    
    func testInitWAndH() {
        let frame = CGRect(w: 3, h: 4)
        XCTAssertEqual(frame.origin.x, 0)
        XCTAssertEqual(frame.origin.y, 0)
        XCTAssertEqual(frame.size.width, 3)
        XCTAssertEqual(frame.size.height, 4)
    }
    
    func testInitWidthAndHeight() {
        let frame = CGRect(width: 3, height: 4)
        XCTAssertEqual(frame.origin.x, 0)
        XCTAssertEqual(frame.origin.y, 0)
        XCTAssertEqual(frame.size.width, 3)
        XCTAssertEqual(frame.size.height, 4)
    }
    
    func testInitOriginAndWAndH() {
        let frame = CGRect(origin: CGPoint(x: 1, y: 2), w: 3, h: 4)
        XCTAssertEqual(frame.origin.x, 1)
        XCTAssertEqual(frame.origin.y, 2)
        XCTAssertEqual(frame.size.width, 3)
        XCTAssertEqual(frame.size.height, 4)
    }
    
    func testInitOriginAndWidthAndHeight() {
        let frame = CGRect(origin: CGPoint(x: 1, y: 2), width: 3, height: 4)
        XCTAssertEqual(frame.origin.x, 1)
        XCTAssertEqual(frame.origin.y, 2)
        XCTAssertEqual(frame.size.width, 3)
        XCTAssertEqual(frame.size.height, 4)
    }
    
}
