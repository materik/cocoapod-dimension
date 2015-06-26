//
//  UIViewControllerTests.swift
//  MEViewExtensions
//
//  Created by materik on 25/06/15.
//  Copyright (c) 2015 materik. All rights reserved.
//

import UIKit
import XCTest

class UIViewControllerTests: XCTestCase {

    // MARK: x

    func testGetX() {
        let vc1 = UIViewController()
        XCTAssertEqual(vc1.view.frame.origin.x, vc1.x)
        XCTAssertEqual(vc1.x, 0)
        let vc2 = UIViewController()
        vc2.view.frame = CGRect(x: 10, y: 0, width: 0, height: 0)
        XCTAssertEqual(vc2.view.frame.origin.x, vc2.x)
        XCTAssertEqual(vc2.x, 10)
    }

    func testSetX() {
        let vc1 = UIViewController()
        vc1.x = 10
        XCTAssertEqual(vc1.view.frame.origin.x, vc1.x)
        XCTAssertEqual(vc1.x, 10)
    }

    // MARK: y

    func testGetY() {
        let vc1 = UIViewController()
        XCTAssertEqual(vc1.view.frame.origin.y, vc1.y)
        XCTAssertEqual(vc1.y, 0)
        let vc2 = UIViewController()
        vc2.view.frame = CGRect(x: 0, y: 10, width: 0, height: 0)
        XCTAssertEqual(vc2.view.frame.origin.y, vc2.y)
        XCTAssertEqual(vc2.y, 10)
    }

    func testSetY() {
        let vc1 = UIViewController()
        vc1.y = 10
        XCTAssertEqual(vc1.view.frame.origin.y, vc1.y)
        XCTAssertEqual(vc1.y, 10)
    }

    // MARK: width

    func testGetWidth() {
        let vc1 = UIViewController()
        XCTAssertEqual(vc1.view.frame.size.width, vc1.w)
        XCTAssertEqual(vc1.w, UIScreen.w)
        let vc2 = UIViewController()
        vc2.view.frame = CGRect(x: 0, y: 0, width: 10, height: 0)
        XCTAssertEqual(vc2.view.frame.size.width, vc2.w)
        XCTAssertEqual(vc2.w, 10)
    }

    func testSetWidth() {
        let vc1 = UIViewController()
        vc1.w = 10
        XCTAssertEqual(vc1.view.frame.size.width, vc1.w)
        XCTAssertEqual(vc1.w, 10)
    }

    // MARK: height

    func testGetHeight() {
        let vc1 = UIViewController()
        XCTAssertEqual(vc1.view.frame.size.height, vc1.h)
        XCTAssertEqual(vc1.h, UIScreen.h)
        let vc2 = UIViewController()
        vc2.view.frame = CGRect(x: 0, y: 0, width: 0, height: 10)
        XCTAssertEqual(vc2.view.frame.size.height, vc2.h)
        XCTAssertEqual(vc2.h, 10)
    }

    func testSetHeight() {
        let vc1 = UIViewController()
        vc1.h = 10
        XCTAssertEqual(vc1.view.frame.size.height, vc1.h)
        XCTAssertEqual(vc1.h, 10)
    }

    // MARK: top

    func testGetTop() {
        let vc1 = UIViewController()
        vc1.view.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        XCTAssertEqual(vc1.view.frame.origin.y, vc1.top)
        XCTAssertEqual(vc1.top, 0)
        let vc2 = UIViewController()
        vc2.view.frame = CGRect(x: 0, y: 10, width: 10, height: 10)
        XCTAssertEqual(vc2.view.frame.origin.y, vc2.top)
        XCTAssertEqual(vc2.top, 10)
    }

    func testSetTop() {
        let vc1 = UIViewController()
        vc1.view.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        vc1.top = 10
        XCTAssertEqual(vc1.view.frame.origin.y, vc1.top)
        XCTAssertEqual(vc1.top, 10)
    }

    // MARK: right

    func testGetRight() {
        let vc1 = UIViewController()
        vc1.view.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        XCTAssertEqual(vc1.view.frame.origin.x + vc1.view.frame.size.width, vc1.right)
        XCTAssertEqual(vc1.right, 10)
        let vc2 = UIViewController()
        vc2.view.frame = CGRect(x: 10, y: 0, width: 10, height: 10)
        XCTAssertEqual(vc2.view.frame.origin.x + vc2.view.frame.size.width, vc2.right)
        XCTAssertEqual(vc2.right, 20)
    }

    func testSetRight() {
        let vc1 = UIViewController()
        vc1.view.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        vc1.right = 10
        XCTAssertEqual(vc1.view.frame.origin.x + vc1.view.frame.size.width, vc1.right)
        XCTAssertEqual(vc1.right, 10)
    }

    // MARK: bottom 

    func testGetBottom() {
        let vc1 = UIViewController()
        vc1.view.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        XCTAssertEqual(vc1.view.frame.origin.x + vc1.view.frame.size.height, vc1.bottom)
        XCTAssertEqual(vc1.bottom, 10)
        let vc2 = UIViewController()
        vc2.view.frame = CGRect(x: 0, y: 10, width: 10, height: 10)
        XCTAssertEqual(vc2.view.frame.origin.y + vc2.view.frame.size.height, vc2.bottom)
        XCTAssertEqual(vc2.bottom, 20)
    }

    func testSetBottom() {
        let vc1 = UIViewController()
        vc1.view.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        vc1.bottom = 10
        XCTAssertEqual(vc1.view.frame.origin.y + vc1.view.frame.size.height, vc1.bottom)
        XCTAssertEqual(vc1.bottom, 10)
    }

    // MARK: left

    func testGetLeft() {
        let vc1 = UIViewController()
        vc1.view.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        XCTAssertEqual(vc1.view.frame.origin.x, vc1.left)
        XCTAssertEqual(vc1.left, 0)
        let vc2 = UIViewController()
        vc2.view.frame = CGRect(x: 10, y: 0, width: 10, height: 10)
        XCTAssertEqual(vc2.view.frame.origin.x, vc2.left)
        XCTAssertEqual(vc2.left, 10)
    }

    func testSetLeft() {
        let vc1 = UIViewController()
        vc1.view.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        vc1.left = 10
        XCTAssertEqual(vc1.view.frame.origin.x, vc1.left)
        XCTAssertEqual(vc1.left, 10)
    }

    // MARK: origin

    func testGetOrigin() {
        let vc1 = UIViewController()
        XCTAssertEqual(vc1.view.frame.origin, vc1.origin)
        XCTAssertEqual(vc1.origin, CGPointZero)
        let vc2 = UIViewController()
        vc2.view.frame = CGRect(x: 10, y: 0, width: 0, height: 0)
        XCTAssertEqual(vc2.view.frame.origin, vc2.origin)
        XCTAssertEqual(vc2.origin, CGPoint(x: 10, y: 0))
    }

    func testSetOrigin() {
        let vc1 = UIViewController()
        vc1.origin = CGPoint(x: 10, y: 0)
        XCTAssertEqual(vc1.view.frame.origin, vc1.origin)
        XCTAssertEqual(vc1.origin, CGPoint(x: 10, y: 0))
    }

    // MARK: size

    func testGetSize() {
        let vc1 = UIViewController()
        XCTAssertEqual(vc1.view.frame.size, vc1.size)
        XCTAssertEqual(vc1.size, UIScreen.size)
        let vc2 = UIViewController()
        vc2.view.frame = CGRect(x: 0, y: 0, width: 10, height: 0)
        XCTAssertEqual(vc2.view.frame.size, vc2.size)
        XCTAssertEqual(vc2.size, CGSize(width: 10, height: 0))
    }

    func testSetSize() {
        let vc1 = UIViewController()
        vc1.size = CGSize(width: 10, height: 0)
        XCTAssertEqual(vc1.view.frame.size, vc1.size)
        XCTAssertEqual(vc1.size, CGSize(width: 10, height: 0))
    }

}
