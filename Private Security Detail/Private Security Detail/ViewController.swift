//
//  ViewController.swift
//  Private Security Detail
//
//  Created by Jim Shaw on 7/17/16.
//  Copyright © 2016 Jimmy Shaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Duties arrays
    let dailyDuties = ["Patrol perimeter", "Inspect windows", "Inspect doors", "Inspect vehicles", "Monitor passing people", "Monitor passing vehicles"]
    
    let weeklyDuties = ["File weekly report", "Log and submit time sheet"]
    
    let sixMonthDuties = ["Accuracy drills", "Obstacle course"]
    
    // How many sections are in our table view.
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    // What's the number of rows in each table view section.
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyDuties.count
        case 1:
            return weeklyDuties.count
        case 2:
            return sixMonthDuties.count
        default:
            return 0
        }
    }
    
    // This method is called automatically asking for the cell contents for each row of each section.
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        var currentDuty: String
        
        switch indexPath.section {
        case 0:
            currentDuty = dailyDuties[indexPath.row]
        case 1:
            currentDuty = weeklyDuties[indexPath.row]
        case 2:
            currentDuty = sixMonthDuties[indexPath.row]
        default:
            currentDuty = ""
        }
        
        cell.textLabel!.text = currentDuty
        
        return cell
        
    }
    
    // What's the title for each table view section.
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Daily Duties"
        case 1:
            return "Weekly Duties"
        case 2:
            return "Six Month Duties"
        default:
            return "Duties"
        }
    }
    
    // This method will be called whenever a table view row is clicked.
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You clicked section: \(indexPath.section), row: \(indexPath.row)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

