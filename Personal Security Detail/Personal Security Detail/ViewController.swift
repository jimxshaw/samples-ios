//
//  ViewController.swift
//  Personal Security Detail
//
//  Created by Jim Shaw on 7/16/16.
//  Copyright © 2016 Jimmy Shaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enableNightMode(sender: AnyObject) {
        
        view.backgroundColor = UIColor.darkGrayColor()
        
        let allSubviews = view.subviews
        
        for eachView in allSubviews {
            if eachView is UILabel {
                // To cast from a general type to a specific type, we must use !.
                let myLabel = eachView as! UILabel
                myLabel.textColor = UIColor.whiteColor()
            }
        }
    }

}

