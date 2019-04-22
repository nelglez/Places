//
//  PlacesTabBarViewController.swift
//  Places
//
//  Created by Nelson Gonzalez on 4/22/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class PlacesTabBarViewController: UITabBarController {

    let placeController = PlaceController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //Pass the placeController to the child VC
        //i.e. share data between all yhe managed screens
        
        for childViewController in children {
           
            if let childViewController = childViewController as? PlacesPresentor {
            
            childViewController.placeController = placeController
                
                
            }
        }
    }
    

}
