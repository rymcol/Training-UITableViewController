//
//  TableViewController.swift
//  UITableViewController Training
//
//  Created by Ryan Collins on 4/4/16.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var cars = ["BMW", "Ford", "Chevrolet", "Volvo", "Subaru"]

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("carCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = cars[indexPath.row]
        cell.detailTextLabel?.text = "I like my \(cars[indexPath.row])"
        
        return cell
    }

}
