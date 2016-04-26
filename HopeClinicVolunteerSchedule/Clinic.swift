//
//  Clinic.swift
//  HopeClinicVolunteerSchedule
//
//  Created by Admin on 4/22/16.
//  Copyright © 2016 CamperVanMattle. All rights reserved.
//

import UIKit

class Clinic: NSObject {
    // MARK: Properties
    var name: String = ""
    var date: NSDate
    var startHour: Int
    var endHour: Int
    var assigned: String = ""
    
    // MARK: Initialization
    //init?(name: String, date: NSDate, startHour: NSDateComponents, endHour: NSDateComponents, assigned: String) {
    init?(name: String, date: NSDate, startHour: Int, endHour: Int, assigned: String) {

        // Initialize stored properties.
        self.name = name
        self.date = date
        self.startHour = startHour
        self.endHour = endHour
        self.assigned = assigned
        
        // Initialization should fail if there is no values for properties
        // TODO !!! check if NSDate/NSDateComponents are valid
        if name.isEmpty {
            return nil
        }
    }
    
}
