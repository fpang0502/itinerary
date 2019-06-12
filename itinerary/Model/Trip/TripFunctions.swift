//
//  TripFunctions.swift
//  itinerary
//
//  Created by Frank Pang on 6/11/19.
//  Copyright © 2019 Frank Pang. All rights reserved.
// CRUD for Trip Model

import Foundation

class TripFunctions {
    static func createTrip(tripModel: TripModel){
        
    }
    
    // readTrips, but have a background thread to execute so it doesn't block UI
    // completion handler
    static func readTrips(completion: @escaping () -> ()) {
        // Dispatch Queue manages what work occurs on what threads
        // Quality of Service (qos) defines the priority for the threads
        //  .userInteractive: highest priority
        //  .background: lowest priority
        DispatchQueue.global(qos: .userInteractive).async {
            if TripData.tripModels.count == 0 {
                // create fake data
                TripData.tripModels.append(TripModel(title: "Trip to Bali!"))
                TripData.tripModels.append(TripModel(title: "Mexico"))
                TripData.tripModels.append(TripModel(title: "Russian Trip"))
            }
            else {
                // grab actual data
            }
            
            // execute after getting data and let them know it's done
            DispatchQueue.main.async {
                completion()
            }
        }
    }
    
    static func updateTrip(tripModel: TripModel) {
        
    }
    
    static func deleteTrip(tripModel: TripModel) {
        
    }
}
