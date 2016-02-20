//
//  UILabel+Dimension.m
//  Pods
//
//  Created by materik on 20/02/16.
//
//

#import "UILabel+Dimension.h"
#import "UIView+Dimension.h"

@implementation UILabel (Dimension)

- (void)sizeToFitWidth:(CGFloat)width {
  NSMutableParagraphStyle *paragraphStyle =
      [[NSMutableParagraphStyle alloc] init];
  paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
  NSMutableAttributedString *attributedText = [self.attributedText mutableCopy];
  [attributedText addAttribute:NSParagraphStyleAttributeName
                         value:paragraphStyle
                         range:NSMakeRange(0, self.text.length)];
  CGRect frame = [attributedText
      boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                   options:NSStringDrawingTruncatesLastVisibleLine |
                           NSStringDrawingUsesLineFragmentOrigin
                   context:nil];
  [self setSize:frame.size];
}

@end
