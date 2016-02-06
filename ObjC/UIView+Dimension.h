//
//  UIView+Dimension.h
//  Pods
//
//  Created by materik on 28/12/15.
//
//

#import <UIKit/UIKit.h>

@interface UIView (Dimension)

- (CGFloat)x;
- (void)setX:(CGFloat)x;
- (CGFloat)y;
- (void)setY:(CGFloat)y;

- (CGFloat)w;
- (void)setW:(CGFloat)width;
- (CGFloat)width;
- (void)setWidth:(CGFloat)width;

- (CGFloat)h;
- (void)setH:(CGFloat)height;
- (CGFloat)height;
- (void)setHeight:(CGFloat)height;

- (CGFloat)top;
- (void)setTop:(CGFloat)top;
- (CGFloat)right;
- (void)setRight:(CGFloat)right;
- (CGFloat)bottom;
- (void)setBottom:(CGFloat)bottom;
- (CGFloat)left;
- (void)setLeft:(CGFloat)left;

- (CGPoint)origin;
- (void)setOrigin:(CGPoint)origin;
- (CGSize)size;
- (void)setSize:(CGSize)size;

- (void)centerInView;

@end
