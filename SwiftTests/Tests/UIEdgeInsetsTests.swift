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
    
    // MARK: init
    
    func testInitSquared() {
        let inset = UIEdgeInsets(squared: 10.0)
        XCTAssertEqual(inset.top, 10.0)
        XCTAssertEqual(inset.left, 10.0)
        XCTAssertEqual(inset.bottom, 10.0)
        XCTAssertEqual(inset.right, 10.0)
    }
    
    func testInitTop() {
        let inset = UIEdgeInsets(top: 10.0)
        XCTAssertEqual(inset.top, 10.0)
        XCTAssertEqual(inset.left, 0.0)
        XCTAssertEqual(inset.bottom, 0.0)
        XCTAssertEqual(inset.right, 0.0)
    }
    
    func testInitLeft() {
        let inset = UIEdgeInsets(left: 20.0)
        XCTAssertEqual(inset.top, 0.0)
        XCTAssertEqual(inset.left, 20.0)
        XCTAssertEqual(inset.bottom, 0.0)
        XCTAssertEqual(inset.right, 0.0)
    }
    
    func testInitBottom() {
        let inset = UIEdgeInsets(bottom: 30.0)
        XCTAssertEqual(inset.top, 0.0)
        XCTAssertEqual(inset.left, 0.0)
        XCTAssertEqual(inset.bottom, 30.0)
        XCTAssertEqual(inset.right, 0.0)
    }
    
    func testInitRight() {
        let inset = UIEdgeInsets(right: 40.0)
        XCTAssertEqual(inset.top, 0.0)
        XCTAssertEqual(inset.left, 0.0)
        XCTAssertEqual(inset.bottom, 0.0)
        XCTAssertEqual(inset.right, 40.0)
    }
    
    func testInitTopAndLeft() {
        let inset = UIEdgeInsets(top: 10.0, left: 20.0)
        XCTAssertEqual(inset.top, 10.0)
        XCTAssertEqual(inset.left, 20.0)
        XCTAssertEqual(inset.bottom, 0.0)
        XCTAssertEqual(inset.right, 0.0)
    }
    
    func testInitTopAndBottom() {
        let inset = UIEdgeInsets(top: 10.0, bottom: 30.0)
        XCTAssertEqual(inset.top, 10.0)
        XCTAssertEqual(inset.left, 0.0)
        XCTAssertEqual(inset.bottom, 30.0)
        XCTAssertEqual(inset.right, 0.0)
    }
    
    func testInitTopAndRight() {
        let inset = UIEdgeInsets(top: 10.0, right: 40.0)
        XCTAssertEqual(inset.top, 10.0)
        XCTAssertEqual(inset.left, 0.0)
        XCTAssertEqual(inset.bottom, 0.0)
        XCTAssertEqual(inset.right, 40.0)
    }
    
    func testInitLeftAndBottom() {
        let inset = UIEdgeInsets(left: 20.0, bottom: 30.0)
        XCTAssertEqual(inset.top, 0.0)
        XCTAssertEqual(inset.left, 20.0)
        XCTAssertEqual(inset.bottom, 30.0)
        XCTAssertEqual(inset.right, 0.0)
    }
    
    func testInitLeftAndRight() {
        let inset = UIEdgeInsets(left: 20.0, right: 40.0)
        XCTAssertEqual(inset.top, 0.0)
        XCTAssertEqual(inset.left, 20.0)
        XCTAssertEqual(inset.bottom, 0.0)
        XCTAssertEqual(inset.right, 40.0)
    }
    
    func testInitBottomAndRight() {
        let inset = UIEdgeInsets(bottom: 30.0, right: 40.0)
        XCTAssertEqual(inset.top, 0.0)
        XCTAssertEqual(inset.left, 0.0)
        XCTAssertEqual(inset.bottom, 30.0)
        XCTAssertEqual(inset.right, 40.0)
    }
    
    func testInitTopAndLeftAndBottom() {
        let inset = UIEdgeInsets(top: 10.0, left: 20.0, bottom: 30.0)
        XCTAssertEqual(inset.top, 10.0)
        XCTAssertEqual(inset.left, 20.0)
        XCTAssertEqual(inset.bottom, 30.0)
        XCTAssertEqual(inset.right, 0.0)
    }
    
    func testInitTopAndLeftAndRight() {
        let inset = UIEdgeInsets(top: 10.0, left: 20.0, right: 40.0)
        XCTAssertEqual(inset.top, 10.0)
        XCTAssertEqual(inset.left, 20.0)
        XCTAssertEqual(inset.bottom, 0.0)
        XCTAssertEqual(inset.right, 40.0)
    }
    
    func testInitTopAndBottomAndRight() {
        let inset = UIEdgeInsets(top: 10.0, bottom: 30.0, right: 40.0)
        XCTAssertEqual(inset.top, 10.0)
        XCTAssertEqual(inset.left, 0.0)
        XCTAssertEqual(inset.bottom, 30.0)
        XCTAssertEqual(inset.right, 40.0)
    }
    
    func testInitLeftAndBottomAndRight() {
        let inset = UIEdgeInsets(left: 20.0, bottom: 30.0, right: 40.0)
        XCTAssertEqual(inset.top, 0.0)
        XCTAssertEqual(inset.left, 20.0)
        XCTAssertEqual(inset.bottom, 30.0)
        XCTAssertEqual(inset.right, 40.0)
    }
    
    func testInitHorizontalAndVertical() {
        let inset = UIEdgeInsets(horizontal: 10.0, vertical: 20.0)
        XCTAssertEqual(inset.top, 20.0)
        XCTAssertEqual(inset.left, 10.0)
        XCTAssertEqual(inset.bottom, 20.0)
        XCTAssertEqual(inset.right, 10.0)
    }
    
    func testInitHorizontal() {
        let inset = UIEdgeInsets(horizontal: 10.0)
        XCTAssertEqual(inset.top, 0.0)
        XCTAssertEqual(inset.left, 10.0)
        XCTAssertEqual(inset.bottom, 0.0)
        XCTAssertEqual(inset.right, 10.0)
    }
    
    func testInitHorizontalAndTopAndBottom() {
        let inset = UIEdgeInsets(horizontal: 10.0, top: 20.0, bottom: 30.0)
        XCTAssertEqual(inset.top, 20.0)
        XCTAssertEqual(inset.left, 10.0)
        XCTAssertEqual(inset.bottom, 30.0)
        XCTAssertEqual(inset.right, 10.0)
    }
    
    func testInitHorizontalAndTop() {
        let inset = UIEdgeInsets(horizontal: 10.0, top: 20.0)
        XCTAssertEqual(inset.top, 20.0)
        XCTAssertEqual(inset.left, 10.0)
        XCTAssertEqual(inset.bottom, 0.0)
        XCTAssertEqual(inset.right, 10.0)
    }
    
    func testInitHorizontalAndBottom() {
        let inset = UIEdgeInsets(horizontal: 10.0, bottom: 30.0)
        XCTAssertEqual(inset.top, 0.0)
        XCTAssertEqual(inset.left, 10.0)
        XCTAssertEqual(inset.bottom, 30.0)
        XCTAssertEqual(inset.right, 10.0)
    }
    
    func testInitVertical() {
        let inset = UIEdgeInsets(vertical: 10.0)
        XCTAssertEqual(inset.top, 10.0)
        XCTAssertEqual(inset.left, 0.0)
        XCTAssertEqual(inset.bottom, 10.0)
        XCTAssertEqual(inset.right, 0.0)
    }
    
    func testInitVerticalAndLeftAndRight() {
        let inset = UIEdgeInsets(vertical: 10.0, left: 20.0, right: 30.0)
        XCTAssertEqual(inset.top, 10.0)
        XCTAssertEqual(inset.left, 20.0)
        XCTAssertEqual(inset.bottom, 10.0)
        XCTAssertEqual(inset.right, 30.0)
    }
    
    func testInitVerticalAndLeft() {
        let inset = UIEdgeInsets(vertical: 10.0, left: 20.0)
        XCTAssertEqual(inset.top, 10.0)
        XCTAssertEqual(inset.left, 20.0)
        XCTAssertEqual(inset.bottom, 10.0)
        XCTAssertEqual(inset.right, 0.0)
    }
    
    func testInitVerticalAndRight() {
        let inset = UIEdgeInsets(vertical: 10.0, right: 30.0)
        XCTAssertEqual(inset.top, 10.0)
        XCTAssertEqual(inset.left, 0.0)
        XCTAssertEqual(inset.bottom, 10.0)
        XCTAssertEqual(inset.right, 30.0)
    }
    
    // MARK: operations
    
    func testMultiplication() {
        var inset = UIEdgeInsets(top: 1.0, left: 2.0, bottom: 3.0, right: 4.0)
        inset = 2 * inset
        XCTAssertEqual(inset.top, 2.0)
        XCTAssertEqual(inset.left, 4.0)
        XCTAssertEqual(inset.bottom, 6.0)
        XCTAssertEqual(inset.right, 8.0)
    }
    
    func testAddition() {
        let inset1 = UIEdgeInsets(top: 1.0, left: 2.0, bottom: 3.0, right: 4.0)
        let inset2 = UIEdgeInsets(top: 1.0, left: 2.0, bottom: 3.0, right: 4.0)
        let inset = inset1 + inset2
        XCTAssertEqual(inset.top, 2.0)
        XCTAssertEqual(inset.left, 4.0)
        XCTAssertEqual(inset.bottom, 6.0)
        XCTAssertEqual(inset.right, 8.0)
    }
    
    func testSubtraction() {
        let inset1 = UIEdgeInsets(top: 1.0, left: 2.0, bottom: 3.0, right: 4.0)
        let inset2 = UIEdgeInsets(top: 1.0, left: 2.0, bottom: 3.0, right: 4.0)
        let inset = inset1 - inset2
        XCTAssertEqual(inset.top, 0.0)
        XCTAssertEqual(inset.left, 0.0)
        XCTAssertEqual(inset.bottom, 0.0)
        XCTAssertEqual(inset.right, 0.0)
    }
    
}
