//
//  UIImageView+Dimension.m
//  Pods
//
//  Created by materik on 02/01/16.
//
//

#import "UIImageView+Dimension.h"
#import "UIView+Dimension.h"

@implementation UIImageView (Dimension)

- (void)setWidthAndKeepRatio:(CGFloat)width {
  self.width = width;
  if (self.image.size.width > 0) {
    self.height = width / self.image.size.width * self.image.size.height;
  }
}

- (void)setHeightAndKeepRatio:(CGFloat)height {
  self.height = height;
  if (self.image.size.height > 0) {
    self.width = height / self.image.size.height * self.image.size.width;
  }
}

@end
