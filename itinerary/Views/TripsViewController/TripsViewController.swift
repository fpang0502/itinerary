//
//  TripsViewController.swift
//  itinerary
//
//  Created by Frank Pang on 6/11/19.
//  Copyright © 2019 Frank Pang. All rights reserved.
//

import UIKit

// TripsViewController is boss of tableView, it tells the tableView what to do with data
// Needs to conform to a DataSource protocol so it can tell what the tableView needs to do
// Needs to conform to Delegate protocol to provide additional code to the tableView that it can use:
//  -edit the height of the cells
class TripsViewController: UIViewController{

    // reference to tableView
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tell tableView that we want to use TripsViewController as its data source for the two functions
        tableView.dataSource = self
        //tell tableview to use our class
        tableView.delegate = self
        TripFunctions.readTrips(completion: { [weak self] in
            // passed in completion code is called when completion handler in readTrips is done
            self?.tableView.reloadData() // reload data after it's been updated, weak reference to self since there's a strong reference
        })
        
        view.backgroundColor = Theme.background
        
        backButton.createBackButton()
    }
}

extension TripsViewController: UITableViewDataSource, UITableViewDelegate {
    
    // two required functions for UITableViewDataSource protocol
    
    // how many rows will it display? this is referenced in Data.tripModels since we're populating the trips
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TripData.tripModels.count
    }
    
    // I have a row available, what do you want to do with it?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // resuse the cells that can fit in the screen
        
//******** if using default styling**********
//        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
//
//        // if there's no cell to deque, then make a new one
//        if cell == nil {
//            cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
//        }
//
//        cell!.textLabel?.text = Data.tripModels[indexPath.row].title
//        return cell!

//****** using custom styling
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TripsTableViewCell
        
        cell.setup(tripModel: TripData.tripModels[indexPath.row])
        
        return cell
    }
    
    // return the height of each cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
}
