//
//  FirstViewController.swift
//  IOU_test
//
//  Created by Richard Lynch on 16/06/2016.
//  Copyright © 2016 Lynch. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, HomeModelProtocal {
    
    @IBOutlet weak var paymentsTotal: UILabel!

    @IBOutlet weak var paymentsTableView: UITableView!
    var feedItems: NSArray = NSArray()
    var selectedPayment : LocationModel = LocationModel()
    var running_total = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //set delegates and initialize homeModel
        
        self.paymentsTableView.delegate = self
        self.paymentsTableView.dataSource = self
        
        let homeModel = HomeModel()
        homeModel.delegate = self
        homeModel.downloadItems()
    }
    
    func itemsDownloaded(items: NSArray) {
        
        running_total = 0
        feedItems = items
        self.paymentsTableView.reloadData()
        self.paymentsTotal.text = "money owed = " + String(running_total)
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of feed items
        return feedItems.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Retrieve cell
        let cellIdentifier: String = "BasicCell"
        let myCell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)!
        // Get the location to be shown
        let item: LocationModel = feedItems[indexPath.row] as! LocationModel
        // Get references to labels of cell
        myCell.textLabel!.text = item.amount
        myCell.detailTextLabel!.text = item.payer
        running_total += Int(item.amount!)!
        
        return myCell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

