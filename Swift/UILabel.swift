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
    func sizeToFit(width: CGFloat) {
        let size = CGSize(w: width, h: CGFloat.greatestFiniteMagnitude)
        if let size = self.attributedText?.getSizeThatFits(size: size) {
            self.size = CGSize(w: width, h: size.height)
        }
    }
    
    // TODO: need tests
    func setLineSpacing(lineSpacing: CGFloat) {
        if let attributedText = self.attributedText?.mutableCopy() as? NSMutableAttributedString {
            attributedText.setLineSpacing(lineSpacing: lineSpacing, alignment: self.textAlignment)
            self.attributedText = attributedText
        }
    }
    
}

private extension NSAttributedString {
    
    func getSizeThatFits(size: CGSize) -> CGSize {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byWordWrapping
        
        let copy = self.mutableCopy() as! NSMutableAttributedString
        let frame = copy.boundingRect(with: size, options: [
            .truncatesLastVisibleLine,
            .usesLineFragmentOrigin
        ], context: nil)
        
        return frame.size
    }
    
    
}

private extension NSMutableAttributedString {
    
    func setLineSpacing(lineSpacing: CGFloat, alignment: NSTextAlignment? = nil) {
        let copy = NSAttributedString(string: "A", attributes: self.attributes(at: 0, effectiveRange: nil))
        let size = copy.getSizeThatFits(size: CGSize())
        let lineHeight = size.height
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.maximumLineHeight = lineHeight / 2.0 + lineSpacing
        paragraphStyle.minimumLineHeight = paragraphStyle.maximumLineHeight
        paragraphStyle.lineSpacing = 0.0
        paragraphStyle.lineBreakMode = .byWordWrapping
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
