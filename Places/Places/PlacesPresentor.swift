//
//  PlacesPresentor.swift
//  Places
//
//  Created by Nelson Gonzalez on 4/22/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

protocol PlacesPresentor: AnyObject { //: class
    
    var placeController: PlaceController? { set get }
    
}
