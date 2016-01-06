//
//  UIImageViewTests.swift
//  SwiftTests
//
//  Created by materik on 06/01/16.
//
//

import Dimension
import UIKit
import XCTest

class UIImageViewTests: XCTestCase {
    
    func testSetWidthAndKeepImageRatio() {
        let image = UIImage.testImage(named: "test")
        let view = UIImageView(image: image)
        XCTAssertEqual(view.w, 10.0)
        XCTAssertEqual(view.h, 20.0)
        view.setWidth(andKeepImageRatio: 20.0)
        XCTAssertEqual(view.w, 20.0)
        XCTAssertEqual(view.h, 40.0)
    }
    
    func testSetWidthAndKeepImageRatioNoImage() {
        let view = UIImageView()
        XCTAssertEqual(view.w, 0.0)
        XCTAssertEqual(view.h, 0.0)
        view.setWidth(andKeepImageRatio: 20.0)
        XCTAssertEqual(view.w, 0.0)
        XCTAssertEqual(view.h, 0.0)
    }
    
    func testSetHeightAndKeepImageRatio() {
        let image = UIImage.testImage(named: "test")
        let view = UIImageView(image: image)
        XCTAssertEqual(view.w, 10.0)
        XCTAssertEqual(view.h, 20.0)
        view.setHeight(andKeepImageRatio: 40.0)
        XCTAssertEqual(view.w, 20.0)
        XCTAssertEqual(view.h, 40.0)
    }
    
    func testSetHeightAndKeepImageRatioNoImage() {
        let view = UIImageView()
        XCTAssertEqual(view.w, 0.0)
        XCTAssertEqual(view.h, 0.0)
        view.setHeight(andKeepImageRatio: 40.0)
        XCTAssertEqual(view.w, 0.0)
        XCTAssertEqual(view.h, 0.0)
    }
    
}

extension UIImage {
    
    static func testImage(named named: String) -> UIImage? {
        let bundle = NSBundle(forClass: UIImageViewTests.self)
        return UIImage(named: named, inBundle: bundle, compatibleWithTraitCollection: nil)
    }
    
}
