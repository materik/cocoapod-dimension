//
//  UIImageView+Dimension.h
//  Pods
//
//  Created by materik on 02/01/16.
//
//

#import <UIKit/UIKit.h>

@interface UIImageView (Dimension)

- (void)setWidthAndKeepRatio:(CGFloat)width;
- (void)setHeightAndKeepRatio:(CGFloat)height;

@end
