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

    // MARK: x

    func testGetX() {
        let view1 = UIView()
        XCTAssertEqual(view1.frame.origin.x, view1.x)
        XCTAssertEqual(view1.x, 0)
        let view2 = UIView(frame: CGRect(x: 10, y: 0, width: 0, height: 0))
        XCTAssertEqual(view2.frame.origin.x, view2.x)
        XCTAssertEqual(view2.x, 10)
    }

    func testSetX() {
        let view1 = UIView()
        view1.x = 10
        XCTAssertEqual(view1.frame.origin.x, view1.x)
        XCTAssertEqual(view1.x, 10)
    }

    // MARK: y

    func testGetY() {
        let view1 = UIView()
        XCTAssertEqual(view1.frame.origin.y, view1.y)
        XCTAssertEqual(view1.y, 0)
        let view2 = UIView(frame: CGRect(x: 0, y: 10, width: 0, height: 0))
        XCTAssertEqual(view2.frame.origin.y, view2.y)
        XCTAssertEqual(view2.y, 10)
    }

    func testSetY() {
        let view1 = UIView()
        view1.y = 10
        XCTAssertEqual(view1.frame.origin.y, view1.y)
        XCTAssertEqual(view1.y, 10)
    }

    // MARK: width

    func testGetWidth() {
        let view1 = UIView()
        XCTAssertEqual(view1.frame.size.width, view1.w)
        XCTAssertEqual(view1.w, 0)
        let view2 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        XCTAssertEqual(view2.frame.size.width, view2.w)
        XCTAssertEqual(view2.w, 10)
    }

    func testSetWidth() {
        let view1 = UIView()
        view1.w = 10
        XCTAssertEqual(view1.frame.size.width, view1.w)
        XCTAssertEqual(view1.w, 10)
    }

    // MARK: height

    func testGetHeight() {
        let view1 = UIView()
        XCTAssertEqual(view1.frame.size.height, view1.h)
        XCTAssertEqual(view1.h, 0)
        let view2 = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 10))
        XCTAssertEqual(view2.frame.size.height, view2.h)
        XCTAssertEqual(view2.h, 10)
    }

    func testSetHeight() {
        let view1 = UIView()
        view1.h = 10
        XCTAssertEqual(view1.frame.size.height, view1.h)
        XCTAssertEqual(view1.h, 10)
    }

    // MARK: top

    func testGetTop() {
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        XCTAssertEqual(view1.frame.origin.y, view1.top)
        XCTAssertEqual(view1.top, 0)
        let view2 = UIView(frame: CGRect(x: 0, y: 10, width: 10, height: 10))
        XCTAssertEqual(view2.frame.origin.y, view2.top)
        XCTAssertEqual(view2.top, 10)
    }

    func testSetTop() {
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        view1.top = 10
        XCTAssertEqual(view1.frame.origin.y, view1.top)
        XCTAssertEqual(view1.top, 10)
    }

    // MARK: right

    func testGetRight() {
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        XCTAssertEqual(view1.frame.origin.x + view1.frame.size.width, view1.right)
        XCTAssertEqual(view1.right, 10)
        let view2 = UIView(frame: CGRect(x: 10, y: 0, width: 10, height: 10))
        XCTAssertEqual(view2.frame.origin.x + view2.frame.size.width, view2.right)
        XCTAssertEqual(view2.right, 20)
    }

    func testSetRight() {
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        view1.right = 10
        XCTAssertEqual(view1.frame.origin.x + view1.frame.size.width, view1.right)
        XCTAssertEqual(view1.right, 10)
    }

    // MARK: bottom 

    func testGetBottom() {
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        XCTAssertEqual(view1.frame.origin.x + view1.frame.size.height, view1.bottom)
        XCTAssertEqual(view1.bottom, 10)
        let view2 = UIView(frame: CGRect(x: 0, y: 10, width: 10, height: 10))
        XCTAssertEqual(view2.frame.origin.y + view2.frame.size.height, view2.bottom)
        XCTAssertEqual(view2.bottom, 20)
    }

    func testSetBottom() {
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        view1.bottom = 10
        XCTAssertEqual(view1.frame.origin.y + view1.frame.size.height, view1.bottom)
        XCTAssertEqual(view1.bottom, 10)
    }

    // MARK: left

    func testGetLeft() {
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        XCTAssertEqual(view1.frame.origin.x, view1.left)
        XCTAssertEqual(view1.left, 0)
        let view2 = UIView(frame: CGRect(x: 10, y: 0, width: 10, height: 10))
        XCTAssertEqual(view2.frame.origin.x, view2.left)
        XCTAssertEqual(view2.left, 10)
    }

    func testSetLeft() {
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        view1.left = 10
        XCTAssertEqual(view1.frame.origin.x, view1.left)
        XCTAssertEqual(view1.left, 10)
    }

    // MARK: origin

    func testGetOrigin() {
        let view1 = UIView()
        XCTAssertEqual(view1.frame.origin, view1.origin)
        XCTAssertEqual(view1.origin, CGPointZero)
        let view2 = UIView(frame: CGRect(x: 10, y: 0, width: 0, height: 0))
        XCTAssertEqual(view2.frame.origin, view2.origin)
        XCTAssertEqual(view2.origin, CGPoint(x: 10, y: 0))
    }

    func testSetOrigin() {
        let view1 = UIView()
        view1.origin = CGPoint(x: 10, y: 0)
        XCTAssertEqual(view1.frame.origin, view1.origin)
        XCTAssertEqual(view1.origin, CGPoint(x: 10, y: 0))
    }

    // MARK: size

    func testGetSize() {
        let view1 = UIView()
        XCTAssertEqual(view1.frame.size, view1.size)
        XCTAssertEqual(view1.size, CGSizeZero)
        let view2 = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        XCTAssertEqual(view2.frame.size, view2.size)
        XCTAssertEqual(view2.size, CGSize(width: 10, height: 0))
    }

    func testSetSize() {
        let view1 = UIView()
        view1.size = CGSize(width: 10, height: 0)
        XCTAssertEqual(view1.frame.size, view1.size)
        XCTAssertEqual(view1.size, CGSize(width: 10, height: 0))
    }

}
