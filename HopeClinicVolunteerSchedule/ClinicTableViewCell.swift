//
//  ClinicTableViewCell.swift
//  HopeClinicVolunteerSchedule
//
//  Created by Admin on 4/22/16.
//  Copyright © 2016 CamperVanMattle. All rights reserved.
//

import UIKit

class ClinicTableViewCell: UITableViewCell {

    // MARK: Properties
    @IBOutlet weak var dateOfClinic: UILabel!
    @IBOutlet weak var nameOfClinic: UILabel!
    @IBOutlet weak var nameOfAssigned: AssignmentControl!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
