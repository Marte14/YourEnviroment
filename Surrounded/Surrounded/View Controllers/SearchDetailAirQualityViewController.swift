//
//  LocationSearchAirQualityViewController.swift
//  Surrounded
//
//  Created by katty y marte on 1/2/19.
//  Copyright © 2019 katty y marte. All rights reserved.
//

import UIKit

class SearchDetailAirQualityViewController: UIViewController {
    
    @IBOutlet weak var locationTextView: UITextView!
    var location: CountryWrapper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationTextView.text = location.country
    
    }
}
