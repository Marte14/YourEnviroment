//
//  LocationAPIClient.swift
//  Surrounded
//
//  Created by katty y marte on 1/3/19.
//  Copyright © 2019 katty y marte. All rights reserved.
//

import Foundation

enum LocationErrors {
    case badURL (String)
    case badData (Error)
    case badDecoding (Error)
}

final class LocationAPIClient {
    static func fetchLocation (searchTerm : String , CompletionHandler: @escaping ((String? , LocationErrors?)-> Void)){
        guard let url = URL.init(string: "http://api.airvisual.com/v2/nearest_city?\(searchTerm)key=oBJSXd5ffu2wsAW4Q") else {
            CompletionHandler(nil , .badURL(" failed url "))
            return
        }
        URLSession.shared.dataTask(with: url){(data, response, error) in
            if let error = error {
                CompletionHandler(nil, .badData(error))
            }
            if let data = data {
                do{
                    let locationData = try JSONDecoder().decode(CountryWrapper.self, from: data )
                    CompletionHandler(locationData.country , nil)
                } catch {
                    CompletionHandler(nil, .badDecoding(error))
                }
            }
        }.resume()
    }
    
}
