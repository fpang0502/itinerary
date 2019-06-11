//
//  TripModel.swift
//  itinerary
//
//  Created by Frank Pang on 6/11/19.
//  Copyright © 2019 Frank Pang. All rights reserved.
//  Class with properties to hold information

import Foundation


class TripModel {
    var id: String! // required
    var title: String! // required
    
    init(title: String) {
        id = UUID().uuidString
        self.title = title
    }
}
