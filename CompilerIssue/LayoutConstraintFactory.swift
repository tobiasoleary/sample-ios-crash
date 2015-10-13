//
//  LayoutConstraintFactory.swift
//  CompilerIssue
//
//  Created by Tobias O'Leary on 10/13/15.
//  Copyright © 2015 Tobias O'Leary. All rights reserved.
//

import UIKit

class LayoutConstraintFactory {
    
    class func centerConstraints(item: UIView, toItem:UIView, constant: CGPoint = CGPoint.zero) -> [NSLayoutConstraint] {
        
        return [
            LayoutConstraintFactory.centerXConstraint(item, toItem: toItem, constant: constant.x),
            LayoutConstraintFactory.centerYConstraint(item, toItem: toItem, constant: constant.y)
        ]
    }
    
    class func centerXConstraint(item:UIView, toItem:UIView, constant: CGFloat = 0.0, multiplier: CGFloat = 1.0, relatedBy: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        
        return NSLayoutConstraint(item: item,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: relatedBy,
            toItem: toItem,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: multiplier,
            constant: constant)
    }
    
    class func absoluteWidthConstraint(item: UIView, constant: CGFloat = 0, relatedBy: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: item,
            attribute: NSLayoutAttribute.Width,
            relatedBy: relatedBy,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: constant)
    }
    
    class func absoluteHeightConstraint(item: UIView, constant: CGFloat = 0, relatedBy: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: item,
            attribute: NSLayoutAttribute.Height,
            relatedBy: relatedBy,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: constant)
    }
    
    
    class func relativeWidthConstraint(item: UIView, toItem:UIView, constant: CGFloat = 0, multiplier: CGFloat = 1.0, relatedBy: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: item,
            attribute: NSLayoutAttribute.Width,
            relatedBy: relatedBy,
            toItem: toItem,
            attribute: NSLayoutAttribute.Width,
            multiplier: multiplier,
            constant: constant)
    }
    
    
    class func relativeHeightConstraint(item: UIView, toItem:UIView, constant: CGFloat = 0, multiplier: CGFloat = 1.0, relatedBy: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: item,
            attribute: NSLayoutAttribute.Height,
            relatedBy: relatedBy,
            toItem: toItem,
            attribute: NSLayoutAttribute.Height,
            multiplier: multiplier,
            constant: constant)
    }
    
    class func alignTopConstaint(item: UIView, toItem:UIView, constant: CGFloat = 0, multiplier: CGFloat = 1.0, relatedBy: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: item,
            attribute: NSLayoutAttribute.Top,
            relatedBy: relatedBy,
            toItem: toItem,
            attribute: NSLayoutAttribute.Top,
            multiplier: multiplier,
            constant: constant)
        
    }
    
    class func alignBottomConstaint(item: UIView, toItem:UIView, constant: CGFloat = 0, multiplier: CGFloat = 1.0, relatedBy: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: item,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: relatedBy,
            toItem: toItem,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: multiplier,
            constant: constant)
        
        
    }
    
    
    class func aboveConstaint(item: UIView, toItem:UIView, constant: CGFloat = 0, multiplier: CGFloat = 1.0, relatedBy: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        
        return NSLayoutConstraint(item: item,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: relatedBy,
            toItem: toItem,
            attribute: NSLayoutAttribute.Top,
            multiplier: multiplier,
            constant: constant)
    }
    
    class func belowConstaint(item: UIView, toItem:UIView, constant: CGFloat = 0, multiplier: CGFloat = 1.0, relatedBy: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        
        return NSLayoutConstraint(item: item,
            attribute: NSLayoutAttribute.Top,
            relatedBy: relatedBy,
            toItem: toItem,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: multiplier,
            constant: constant)
    }
    
    class func afterConstraint(item: UIView, toItem:UIView, constant: CGFloat = 0, multiplier: CGFloat = 1.0, relatedBy: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: item,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: relatedBy,
            toItem: toItem,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: multiplier,
            constant: constant)
    }
    
    class func beforeConstraint(item: UIView, toItem:UIView, constant: CGFloat = 0, multiplier: CGFloat = 1.0, relatedBy: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: item,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: relatedBy,
            toItem: toItem,
            attribute: NSLayoutAttribute.Leading,
            multiplier: multiplier,
            constant: constant)
    }
    
    
    class func alignLeadingConstraint(item: UIView, toItem:UIView, constant: CGFloat = 0, multiplier: CGFloat = 1.0, relatedBy: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: item,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: relatedBy,
            toItem: toItem,
            attribute: NSLayoutAttribute.Leading,
            multiplier: multiplier,
            constant: constant)
    }
    
    
    class func alignTrailingConstraint(item: UIView, toItem:UIView, constant: CGFloat = 0, multiplier: CGFloat = 1.0, relatedBy: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: item,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: relatedBy,
            toItem: toItem,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: multiplier,
            constant: constant)
    }
    
    class func centerYConstraint(item:UIView, toItem:UIView, constant: CGFloat = 0, multiplier: CGFloat = 1.0, relatedBy: NSLayoutRelation = .Equal) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: item,
            attribute: NSLayoutAttribute.CenterY,
            relatedBy: relatedBy,
            toItem: toItem,
            attribute: NSLayoutAttribute.CenterY,
            multiplier: multiplier,
            constant: constant)
    }
    
}




