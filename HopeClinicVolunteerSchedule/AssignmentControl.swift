//
//  AssignmentControl.swift
//  HopeClinicVolunteerSchedule
//
//  Created by Admin on 4/23/16.
//  Copyright © 2016 CamperVanMattle. All rights reserved.
//

import UIKit

class AssignmentControl: UIView {
    
    // MARK: Properties
    var name = "" {
        didSet {
            setNeedsLayout()
        }
    }
    var buttonName = UIButton()
    
    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Set the button states
        // .Normal = nobody is assigned to the clinic
        // .Selected = a name has been assigned to the clinic
        buttonName.setTitle("Sign Up!", forState: .Normal)
        buttonName.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        buttonName.setTitleColor(UIColor.blackColor(), forState: .Selected)
        buttonName.adjustsImageWhenHighlighted = false
        
        buttonName.addTarget(self, action: #selector(AssignmentControl.assignButtonTapped(_:)), forControlEvents: .TouchDown)
        addSubview(buttonName)
    }
    
    override func layoutSubviews() {
        // Set the button's width and height to a square the size of the frame's height.
        let buttonHeight = Int(frame.size.height)
        let buttonWidth = Int(frame.size.width)
        buttonName.frame = CGRect(x: 0, y: 0, width: 95, height: 35)
        
        updateButtonStates()
    }
    
    override func intrinsicContentSize() -> CGSize {
        let buttonHeight = Int(frame.size.height)
        let buttonWidth = Int(frame.size.width)
        
        return CGSize(width: 95, height: 35)
}

    // MARK: Button Action
    
    func assignButtonTapped(button: UIButton) {
        print("Button pressed 👍")

        updateButtonStates()
    }
    
    func updateButtonStates() {
        
        // set button to .Selected state to show 'Sign Up!' button if there's no name assigned to the clinic already
        if name.isEmpty {
            buttonName.selected = false
            buttonName.layer.cornerRadius = 5
            //buttonName.layer.borderWidth = 1
            //buttonName.layer.borderColor = UIColor.redColor().CGColor
            buttonName.backgroundColor = UIColor.redColor()

        // otherwise, show the name of who is signed up
        } else {
            buttonName.setTitle(name, forState: .Selected)
            //buttonName.frame = CGRect(x: 0, y: -150, width: 95, height: 35)
            buttonName.selected = true
        }
    }

}
