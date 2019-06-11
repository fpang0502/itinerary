//
//  UIViewExtension.swift
//  itinerary
//
//  Created by Frank Pang on 6/11/19.
//  Copyright © 2019 Frank Pang. All rights reserved.
//

import UIKit

extension UIView {
    func addShadowAndRoundedCorners() {
        layer.shadowOpacity = 1 // set dropshadow
        layer.shadowOffset = CGSize.zero // no offset
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 10
    }
}
