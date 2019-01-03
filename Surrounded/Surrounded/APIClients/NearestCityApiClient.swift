//
//  NearestCityApiClient.swift
//  Surrounded
//
//  Created by katty y marte on 1/3/19.
//  Copyright © 2019 katty y marte. All rights reserved.
//

import Foundation

enum NearestCityErrors{
    case badURL (String)
    case badData(Error)
    case badDecoding(Error)
}
final class NearestCityAPICLient {
    static func getNearestCity( completionHandler: @escaping((City?,NearestCityErrors?)->Void)){
        guard let url = URL.init(string: "https://api.airvisual.com/v2/nearest_city?key=oBJSXd5ffu2wsAW4Q") else {
            completionHandler(nil,.badURL("url failed"))
            return
            
        }
        URLSession.shared.dataTask(with:url){(data, response, error) in
            if let error = error{
                completionHandler(nil,.badData(error))
            }
            if let data = data {
                do{
                    let nearestCityData = try
                        JSONDecoder().decode(City.self , from: data)
                    completionHandler(nearestCityData,nil)
                    
                }catch {
                    completionHandler(nil,.badDecoding(error))
                }
            }
            }.resume()
    }
}
