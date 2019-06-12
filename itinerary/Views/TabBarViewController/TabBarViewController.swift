//
//  TabBarViewController.swift
//  itinerary
//
//  Created by Frank Pang on 6/11/19.
//  Copyright © 2019 Frank Pang. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let HomeVC = HomeViewController()
        let ScanningVC = ScanningViewController()
        let MasksVC = MasksViewController()
        let ContactVC = ContactViewController()
        HomeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home-icon"), tag: 0)
        ScanningVC.tabBarItem = UITabBarItem(title: "Scan", image: UIImage(named: "scan-icon"), tag: 1)
        MasksVC.tabBarItem = UITabBarItem(title: "Masks", image: UIImage(named: "mask-icon"), tag: 2)
        ContactVC.tabBarItem = UITabBarItem(title: "Contact", image: UIImage(named: "contact-icon"), tag: 3)
        
        let tabList = [HomeVC, ScanningVC, MasksVC, ContactVC]
        
        viewControllers = tabList
    }
}
