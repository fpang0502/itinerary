//
//  TripModel.swift
//  itinerary
//
//  Created by Frank Pang on 6/11/19.
//  Copyright © 2019 Frank Pang. All rights reserved.
//  Class with properties to hold information

import Foundation


class TripModel {
    let id: UUID // once the value is set, it's never changed, that's why it's 'let'
    var title: String // required
    
    init(title: String) {
        id = UUID()
        self.title = title
    }
}
