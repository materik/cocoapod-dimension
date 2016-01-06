//
//  CGPointTests.swift
//  Demo
//
//  Created by materik on 27/12/15.
//
//

import Dimension
import UIKit
import XCTest

class CGPointTests: XCTestCase {
    
    func testInitSquared() {
        XCTAssertEqual(CGPoint(squared: 10.0).x, 10.0)
        XCTAssertEqual(CGPoint(squared: 10.0).y, 10.0)
        XCTAssertEqual(CGPoint(squared: 10.0), CGPoint(x: 10.0, y: 10.0))
    }
    
    func testInitX() {
        XCTAssertEqual(CGPoint(x: 10.0).x, 10.0)
        XCTAssertEqual(CGPoint(x: 10.0).y, 0.0)
        XCTAssertEqual(CGPoint(x: 10.0), CGPoint(x: 10.0, y: 0.0))
    }
    
    func testInitY() {
        XCTAssertEqual(CGPoint(y: 10.0).x, 0.0)
        XCTAssertEqual(CGPoint(y: 10.0).y, 10.0)
        XCTAssertEqual(CGPoint(y: 10.0), CGPoint(x: 0.0, y: 10.0))
    }
    
    func testInitSize() {
        XCTAssertEqual(CGPoint(size: CGSize(width: 10.0, height: 20.0)).x, 10.0)
        XCTAssertEqual(CGPoint(size: CGSize(width: 10.0, height: 20.0)).y, 20.0)
    }
    
    func testAddition() {
        XCTAssertEqual(CGPoint(x: 10.0) + CGPoint(x: 10.0), CGPoint(x: 20.0, y: 0.0))
        XCTAssertEqual(CGPoint(y: 10.0) + CGPoint(y: 10.0), CGPoint(x: 0.0, y: 20.0))
        XCTAssertEqual(CGPoint(x: 10.0) + CGPoint(y: 10.0), CGPoint(x: 10.0, y: 10.0))
    }
    
    func testSubtraction() {
        XCTAssertEqual(CGPoint(x: 10.0) - CGPoint(x: 10.0), CGPoint(x: 0.0, y: 0.0))
        XCTAssertEqual(CGPoint(y: 10.0) - CGPoint(y: 10.0), CGPoint(x: 0.0, y: 0.0))
        XCTAssertEqual(CGPoint(x: 10.0) - CGPoint(y: 10.0), CGPoint(x: 10.0, y: -10.0))
    }
    
    func testMultiplication() {
        XCTAssertEqual(5.0 * CGPoint(x: 10.0), CGPoint(x: 50.0, y: 0.0))
        XCTAssertEqual(5.0 * CGPoint(y: 10.0), CGPoint(x: 0.0, y: 50.0))
        XCTAssertEqual(5.0 * CGPoint(x: 10.0, y: 10.0), CGPoint(x: 50.0, y: 50.0))
    }
    
    func testAdditionSize() {
        XCTAssertEqual(CGPoint(x: 10.0) + CGSize(w: 10.0), CGPoint(x: 20.0, y: 0.0))
        XCTAssertEqual(CGPoint(y: 10.0) + CGSize(h: 10.0), CGPoint(x: 0.0, y: 20.0))
        XCTAssertEqual(CGPoint(x: 10.0) + CGSize(h: 10.0), CGPoint(x: 10.0, y: 10.0))
    }
    
    func testSubtractionSize() {
        XCTAssertEqual(CGPoint(x: 10.0) - CGSize(w: 10.0), CGPoint(x: 0.0, y: 0.0))
        XCTAssertEqual(CGPoint(y: 10.0) - CGSize(h: 10.0), CGPoint(x: 0.0, y: 0.0))
        XCTAssertEqual(CGPoint(x: 10.0) - CGSize(h: 10.0), CGPoint(x: 10.0, y: -10.0))
    }
    
}
