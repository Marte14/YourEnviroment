//
//  NearestCityVIewController.swift
//  Surrounded
//
//  Created by katty y marte on 1/2/19.
//  Copyright © 2019 katty y marte. All rights reserved.
//

import UIKit

class NearestCityVIewController: UIViewController {

    var city : City!
    
    @IBOutlet weak var nearestCityImage: UIImageView!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var state: UILabel!
    
    @IBOutlet weak var country: UILabel!
    
    
    @IBOutlet weak var tsLabel: UILabel!
    
    @IBOutlet weak var huLabel: UILabel!
    
    
    @IBOutlet weak var prLabel: UILabel!
    
    @IBOutlet weak var ipLabel: UILabel!

    @IBOutlet weak var wsLabel: UILabel!
    

    @IBOutlet weak var wdLabel: UILabel!
    
    @IBOutlet weak var icLabel: UILabel!
    

    @IBOutlet weak var qLabel: UILabel!
    

    @IBOutlet weak var tsPollutionLabel: UILabel!
    
    @IBOutlet weak var mLabel: UILabel!
    
    @IBOutlet weak var maLabel: UILabel!
    

    @IBOutlet weak var qqLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        qqLabel.text = city.current.pollution.maincn
 }
}
