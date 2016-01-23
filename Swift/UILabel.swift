//
//  UILabel.swift
//  Pods
//
//  Created by materik on 23/01/16.
//
//

import UIKit

public extension UILabel {
    
    // TODO: need tests
    func sizeToFit(width width: CGFloat) {
        let size = CGSize(w: width, h: CGFloat.max)
        if let size = self.attributedText?.getSizeThatFits(size: size) {
            self.size = CGSize(w: width, h: size.height)
        }
    }
    
    // TODO: need tests
    func setLineSpacing(lineSpacing: CGFloat) {
        if let attributedText = self.attributedText?.mutableCopy() as? NSMutableAttributedString {
            attributedText.setLineSpacing(lineSpacing, alignment: self.textAlignment)
            self.attributedText = attributedText
        }
    }
    
}

private extension NSAttributedString {
    
    func getSizeThatFits(size size: CGSize) -> CGSize {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .ByWordWrapping
        
        let copy = self.mutableCopy() as! NSMutableAttributedString
        let frame = copy.boundingRectWithSize(size, options: [
            .TruncatesLastVisibleLine,
            .UsesLineFragmentOrigin
            ], context: nil)
        
        return frame.size
    }
    
    
}

private extension NSMutableAttributedString {
    
    func setLineSpacing(lineSpacing: CGFloat, alignment: NSTextAlignment? = nil) {
        let copy = NSAttributedString(string: "A", attributes: self.attributesAtIndex(0, effectiveRange: nil))
        let size = copy.getSizeThatFits(size: CGSize())
        let lineHeight = size.height
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.maximumLineHeight = lineHeight / 2.0 + lineSpacing
        paragraphStyle.minimumLineHeight = paragraphStyle.maximumLineHeight
        paragraphStyle.lineSpacing = 0.0
        paragraphStyle.lineBreakMode = .ByWordWrapping
        self.addAttribute(NSParagraphStyleAttributeName,
            value: paragraphStyle,
            range: self.string.fullRange)
        
        let topInsetParagraphStyle = NSMutableParagraphStyle()
        topInsetParagraphStyle.maximumLineHeight = lineHeight
        topInsetParagraphStyle.minimumLineHeight = topInsetParagraphStyle.maximumLineHeight
        topInsetParagraphStyle.lineSpacing = 0.0
        if let alignment = alignment {
            topInsetParagraphStyle.alignment = alignment
        }
        self.addAttribute(NSParagraphStyleAttributeName,
            value: topInsetParagraphStyle,
            range: NSMakeRange(0, 1))
    }
    
    func setAlignment(alignment: NSTextAlignment) {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = alignment
        self.addAttribute(NSParagraphStyleAttributeName,
            value: paragraphStyle,
            range: self.string.fullRange)
    }
    
}

private extension String {
    
    var fullRange: NSRange {
        return NSMakeRange(0, self.characters.count)
    }
    
}
