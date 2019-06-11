//
//  TripsTableViewCell.swift
//  itinerary
//
//  Created by Frank Pang on 6/11/19.
//  Copyright © 2019 Frank Pang. All rights reserved.
//

import UIKit

class TripsTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cardView.addShadowAndRoundedCorners()
        titleLabel.font =  UIFont(name: Theme.mainFontName, size: 32)
        cardView.backgroundColor = Theme.background
    }
    
    func setup(tripModel: TripModel) {
        titleLabel.text = tripModel.title
    }

}
