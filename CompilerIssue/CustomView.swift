//
//  CustomViewFactoryUser.swift
//  CompilerIssue
//
//  Created by Tobias O'Leary on 10/13/15.
//  Copyright © 2015 Tobias O'Leary. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView {

    var redBox: UIView!
    var blueBox: UIView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        _setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        _setup()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        _setup()
    }
    
    private func _setup() {
        
        #if WORKAROUND
        let myself = self
        #endif
        
        redBox = UIView()
        blueBox = UIView()
        
        redBox.translatesAutoresizingMaskIntoConstraints = false
        blueBox.translatesAutoresizingMaskIntoConstraints = false
        
        redBox.backgroundColor = UIColor.redColor()
        blueBox.backgroundColor = UIColor.blueColor()
        
        //absolute constraints
        let redBoxConstraints = [
            LayoutConstraintFactory.absoluteHeightConstraint(redBox, constant: 100.0),
            LayoutConstraintFactory.absoluteWidthConstraint(redBox, constant: 100.0)
        ]
        redBox.addConstraints(redBoxConstraints)
        
        let blueBoxConstraints = [
            LayoutConstraintFactory.absoluteHeightConstraint(blueBox, constant: 100.0),
            LayoutConstraintFactory.absoluteWidthConstraint(blueBox, constant: 100.0)
        ]
        
        blueBox.addConstraints(blueBoxConstraints)
        
        
        addSubview(redBox)
        addSubview(blueBox)
        
        let horizontalConstraints = [
            LayoutConstraintFactory.alignLeadingConstraint(redBox, toItem: self, constant: 8.0),
            LayoutConstraintFactory.afterConstraint(blueBox, toItem: redBox, constant: 8.0),
            LayoutConstraintFactory.alignTrailingConstraint(blueBox, toItem: self, constant: -8.0)
        ]
        
        let verticalConstraints = [
            LayoutConstraintFactory.alignTopConstaint(redBox, toItem: self, constant: 8.0),
            LayoutConstraintFactory.belowConstaint(blueBox, toItem: redBox, constant: 8.0),
            LayoutConstraintFactory.alignBottomConstaint(blueBox, toItem: self, constant:-8.0)
        ]
        
        addConstraints(horizontalConstraints + verticalConstraints)
        
        #if WORKAROUND
        let _ = myself.subviews.count > 0
        #endif
    }
    
}
