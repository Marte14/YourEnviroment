//
//  LocationSearchData.swift
//  Surrounded
//
//  Created by katty y marte on 1/2/19.
//  Copyright © 2019 katty y marte. All rights reserved.
//

import Foundation
struct CountryWrapper : Codable {
    struct CountryData : Codable {
        var data : [CountryWrapper]
}

    var country : String
}

