//
//  TableVC.swift
//  UITableViewController
//
//  Created by Peter Zaporowski on 24.02.2017.
//  Copyright © 2017 Peter Zaporowski. All rights reserved.
//

import UIKit

class TableVC: UITableViewController {
    
    var cars = ["BMW","PORSCHE","FIAT","FERRARI","AUDI"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cars.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("carCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = cars[indexPath.row] // as many rows as indexes in the array
        cell.detailTextLabel?.text = "I like my \(cars[indexPath.row])"
     
        return cell
    }

}
