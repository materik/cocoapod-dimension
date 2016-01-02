//
//  UIView+Dimension.m
//  Pods
//
//  Created by materik on 28/12/15.
//
//

#import "UIView+Dimension.h"

@implementation UIView (Dimension)

- (CGFloat)x {
  return self.frame.origin.x;
}
- (void)setX:(CGFloat)x {
  [self setFrame:CGRectMake(x, self.y, self.w, self.h)];
}
- (CGFloat)y {
  return self.frame.origin.y;
}
- (void)setY:(CGFloat)y {
  [self setFrame:CGRectMake(self.x, y, self.w, self.h)];
}

- (CGFloat)w {
  return self.width;
}
- (void)setW:(CGFloat)width {
  [self setWidth:width];
}
- (CGFloat)width {
  return self.frame.size.width;
}
- (void)setWidth:(CGFloat)width {
  [self setFrame:CGRectMake(self.x, self.y, width, self.h)];
}

- (CGFloat)h {
  return self.height;
}
- (void)setH:(CGFloat)height {
  [self setHeight:height];
}
- (CGFloat)height {
  return self.frame.size.height;
}
- (void)setHeight:(CGFloat)height {
  [self setFrame:CGRectMake(self.x, self.y, self.w, height)];
}

- (CGFloat)top {
  return self.y;
}
- (void)setTop:(CGFloat)top {
  self.y = top;
}
- (CGFloat)left {
  return self.x;
}
- (void)setLeft:(CGFloat)left {
  self.x = left;
}
- (CGFloat)bottom {
  return self.y + self.h;
}
- (void)setBottom:(CGFloat)bottom {
  self.y = bottom - self.h;
}
- (CGFloat)right {
  return self.x + self.w;
}
- (void)setRight:(CGFloat)right {
  self.x = right - self.w;
}

- (CGPoint)origin {
  return self.frame.origin;
}
- (void)setOrigin:(CGPoint)origin {
  [self setFrame:CGRectMake(origin.x, origin.y, self.w, self.h)];
}
- (CGSize)size {
  return self.frame.size;
}
- (void)setSize:(CGSize)size {
  [self setFrame:CGRectMake(self.x, self.y, size.width, size.height)];
}

@end
