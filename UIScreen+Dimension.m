//
//  UIScreen+Dimension.m
//  Pods
//
//  Created by materik on 30/12/15.
//
//

#import "UIScreen+Dimension.h"

@implementation UIScreen (Dimension)

- (CGFloat)w {
  return self.width;
}
- (CGFloat)width {
  return self.bounds.size.width;
}
- (CGFloat)h {
  return self.height;
}
- (CGFloat)height {
  return self.bounds.size.height;
}
- (CGSize)size {
  return self.bounds.size;
}

+ (CGFloat)w {
  return [UIScreen mainScreen].w;
}
+ (CGFloat)width {
  return [UIScreen mainScreen].width;
}
+ (CGFloat)h {
  return [UIScreen mainScreen].h;
}
+ (CGFloat)height {
  return [UIScreen mainScreen].height;
}
+ (CGSize)size {
  return [UIScreen mainScreen].size;
}

@end
