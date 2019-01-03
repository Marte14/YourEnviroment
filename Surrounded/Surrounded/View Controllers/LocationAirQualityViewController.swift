//
//  ViewController.swift
//  Surrounded
//
//  Created by katty y marte on 1/1/19.
//  Copyright © 2019 katty y marte. All rights reserved.
//

import UIKit

class LocationAirQualityViewController: UIViewController {
    var locations = [CountryWrapper](){
        didSet {
            DispatchQueue.main.async {
                self.locationTableView.reloadData()
            }
        }
    }
    @IBOutlet weak var locationSearchBar: UISearchBar!
    
    @IBOutlet weak var locationTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationSearchBar.delegate = self
        locationTableView.dataSource = self
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? SearchDetailAirQualityViewController,
            let selectedIndexPath = locationTableView.indexPathForSelectedRow else {return}
        let locationToSend = locations[selectedIndexPath.row]
        destination.location = locationToSend
    }


}

extension LocationAirQualityViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LocationCell", for: indexPath)
        let locationToSet = locations[indexPath.row]
        cell.textLabel?.text = locationToSet.country
        return cell
        
    }
    
    
}
extension LocationAirQualityViewController : UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {print(searchBar.text)
        if let searchTerm = searchBar.text {
            LocationAPIClient.fetchLocation(searchTerm: searchTerm){(locations, error)in
                if let error = error {
                    print(error)
                }
                if let locations = locations {
             //       self.locations = locations
                }
            }
        }
        searchBar.resignFirstResponder()
    }
    
}
