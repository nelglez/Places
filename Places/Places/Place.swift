//
//  Place.swift
//  Places
//
//  Created by Nelson Gonzalez on 4/22/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

struct Place {
    //name
    //location (lat, long)
    
    let name: String
    //touple
    let location: (latitude: Double, longitude: Double)
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.location = (latitude: latitude, longitude: longitude)
    }
    
}
