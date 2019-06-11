//
//  TripsViewController.swift
//  itinerary
//
//  Created by Frank Pang on 6/11/19.
//  Copyright © 2019 Frank Pang. All rights reserved.
//

import UIKit

// TripsViewController is boss of tableView, it tells the tableView what to do with data
// Needs to conform to a protocol so it can tell what the tableView needs to do
class TripsViewController: UIViewController, UITableViewDataSource {

    // reference to tableView
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tell tableView that we want to use TripsViewController as its data source for the two functions
        tableView.dataSource = self
        TripFunctions.readTrips(completion: { [weak self] in
            // passed in completion code is called when completion handler in readTrips is done
            self?.tableView.reloadData() // reload data after it's been updated, weak reference to self since there's a strong reference
        })
    }
    
    // two required functions for UITableViewDataSource protocol
    
    // how many rows will it display? this is referenced in Data.tripModels since we're populating the trips
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModels.count
    }
    
    // I have a row available, what do you want to do with it?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // resuse the cells that can fit in the screen
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        // if there's no cell to deque, then make a new one
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        }
        
        cell!.textLabel?.text = Data.tripModels[indexPath.row].title
        
        return cell!
    }
    
}
