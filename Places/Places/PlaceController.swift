//
//  PlaceController.swift
//  Places
//
//  Created by Nelson Gonzalez on 4/22/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

class PlaceController {
    
    var places: [Place] = [] //or [Place]() same thing
    
    /*
     Rochester, NY: 43.1566° N, -77.6088° W
     Salt Lake City, UT: 40.7608° N, -111.8910° W
     San Francisco, CA: 37.7749° N, -122.4194° W
     */
    
    init() {
      createPlace(with: "Rochester, NY", latitude: 43.1, longitude: -77.6)
      createPlace(with: "San Francisco, CA", latitude: 37.7, longitude: -122.4)
      createPlace(with: "Rockland, ME", latitude: 44.1, longitude: -69.1)
      createPlace(with: "Salt Lake City", latitude: 40.7, longitude: -111.8)
    }
    
    
    func createPlace(with name: String, latitude: Double, longitude: Double) {
        
        let place = Place(name: name, latitude: latitude, longitude: longitude)
        
        places.append(place)
        
    }
    
    
}
