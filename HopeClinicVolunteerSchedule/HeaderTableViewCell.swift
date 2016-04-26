//
//  HeaderTableViewCell.swift
//  HopeClinicVolunteerSchedule
//
//  Created by Admin on 4/23/16.
//  Copyright © 2016 CamperVanMattle. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {
    
    // MARK: Properties

    @IBOutlet weak var dateHeader: UILabel!
    @IBOutlet weak var clinicHeader: UILabel!
    @IBOutlet weak var assignedHeader: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
