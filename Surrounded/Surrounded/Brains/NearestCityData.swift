//
//  NearestCity.swift
//  Surrounded
//
//  Created by katty y marte on 1/1/19.
//  Copyright © 2019 katty y marte. All rights reserved.
//

import Foundation

struct City  : Codable {
    var city : String
    var state : String
    var country : String
    var location : [CoordinatesWrapper]
    var current : AirQualityData
}
struct CoordinatesWrapper : Codable {
    var coordinates: [Int]
}
struct AirQualityData : Codable {
    var weather : WeatherWrapper
    var pollution : PollutantsWrapper
    
}
struct WeatherWrapper : Codable {
    var ts : String
    var hu : Int
    var ic : String
    var pr : Int
    var tp : Int
    var wd : Int
    var ws : Int
}
struct PollutantsWrapper : Codable {
    var ts : String
    var aqius : Int
    var mainus : String
    var qicna : Int
    var maincn : String
}

//{
//    "status": "success",
//    "data": {
//        "city": "New York",
//        "state": "New York",
//        "country": "USA",
//        "location": {
//            "type": "Point",
//            "coordinates": [
//            -73.928596,
//            40.694401
//            ]
//        },
//        "current": {
//            "weather": {
//                "ts": "2019-01-01T23:00:00.000Z",
//                "hu": 57,
//                "ic": "10n",
//                "pr": 1019,
//                "tp": 7,
//                "wd": 320,
//                "ws": 4.41
//            },
//            "pollution": {
//                "ts": "2019-01-01T23:00:00.000Z",
//                "aqius": 52,
//                "mainus": "p2",
//                "qicna": 18,
//                "maincn": "p2"
//            }
//        }
//    }
//}
