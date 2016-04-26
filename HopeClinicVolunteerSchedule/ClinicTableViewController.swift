//
//  ClinicTableViewController.swift
//  HopeClinicVolunteerSchedule
//
//  Created by Admin on 4/22/16.
//  Copyright © 2016 CamperVanMattle. All rights reserved.
//

import UIKit

class ClinicTableViewController: UITableViewController {
    
    // MARK: Properties
    
    var clinics = [Clinic]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load Hope Clinic logo into navigation
        let image = UIImage(named: "hopeLogo")
        navigationItem.titleView = UIImageView(image: image)
        //navigationItem.title = "Hope Clinic Volunteer Schedule"
        
        // Load the sample data.
        loadSampleClinics()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func loadSampleClinics() {
        let date = NSDate()
        let dateComponents = NSDateComponents()
        dateComponents.day = 10
        dateComponents.hour = 15
        let clinic1 = Clinic(name: "Dermatology", date: date, startHour: dateComponents.hour, endHour: dateComponents.hour, assigned: "Humberto")!
        
        let clinic2 = Clinic(name: "Hepatitis Class", date: date, startHour: 11, endHour: 22, assigned: "")!
        
        let clinic3 = Clinic(name: "Naval Instructions", date: date, startHour: dateComponents.hour, endHour: dateComponents.hour, assigned: "McKynzee")!
        
        clinics += [clinic1, clinic2, clinic3]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // add 1 for the HeaderTableViewCell
        return clinics.count + 1
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let x = indexPath.row
        if x == 0 {
            // Table view cells are reused and should be dequeued using a cell identifier.
            let cell = tableView.dequeueReusableCellWithIdentifier("HeaderTableViewCell", forIndexPath: indexPath) as! HeaderTableViewCell
            
            return cell
            
        } else {
            // Table view cells are reused and should be dequeued using a cell identifier.
            let cell = tableView.dequeueReusableCellWithIdentifier("ClinicTableViewCell", forIndexPath: indexPath) as! ClinicTableViewCell
            
            let clinicIndex = indexPath.row - 1
            
            // Fetches the appropriate clinic for the data source layout.
            let clinic = clinics[clinicIndex]
            
            let dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "MM/dd" //format style. MM = Month, dd = day
            let dateString = dateFormatter.stringFromDate(clinic.date)
            
            cell.nameOfClinic.text = clinic.name
            cell.dateOfClinic.text = dateString
            cell.nameOfAssigned.name = clinic.assigned
            
            return cell
        }
        
    }
    
    /*
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //let returnedView = UIView(frame: CGRect.zero)
        let returnedView = UIView(frame: CGRectMake(0, 0, 300, 70)) //set these values as necessary
        returnedView.backgroundColor = UIColor.lightGrayColor()
    
        let sectionHeaderTitleArray = ["Date","Clinic","Assigned"]
        let label = UILabel(frame: CGRectMake(0, 0, 50, 35))
        label.text = sectionHeaderTitleArray[section]
        returnedView.addSubview(label)
        
        return returnedView
    }
 */
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
