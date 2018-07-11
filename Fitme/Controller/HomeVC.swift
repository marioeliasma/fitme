//
//  homeVC.swift
//  Fitme
//
//  Created by Mario Montenegro on 6/13/18.
//  Copyright © 2018 LMS. All rights reserved.
//

import UIKit
import MapKit

class HomeVC: UIViewController {
    
    
    @IBOutlet weak var viewCurrentLocation: UIView!
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewCurrentLocation.backgroundColor = UIColor(red:0.16, green:0.60, blue:1.00, alpha:1.0)
        viewCurrentLocation.layer.cornerRadius = 16
        viewCurrentLocation.layer.shadowOffset = CGSize(width: 8, height: 8)
    }
}
