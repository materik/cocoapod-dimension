//
//  UIViewTests.m
//  DemoTests
//
//  Created by materik on 28/12/15.
//
//

#import <Dimension/Dimension.h>
#import <XCTest/XCTest.h>

@interface UIViewTests : XCTestCase

@end

@implementation UIViewTests

- (void)testSetX {
  UIView *view = [[UIView alloc] init];
  [view setX:10.0];
  XCTAssertEqual(view.frame.origin.x, 10.0);
}

@end
