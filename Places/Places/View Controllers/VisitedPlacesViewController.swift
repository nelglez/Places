//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by Nelson Gonzalez on 4/22/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController, PlacesPresentor {

    var placeController: PlaceController?
    
    var mapViewController: MapViewController?
    var placesTableViewController: PlacesTableViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
    }
    

   
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "PlacesTable" {
            //get a places table view controller
            guard let placesTVC = segue.destination as? PlacesTableViewController else { return }
            
            //set the placeController
            placesTVC.placeController = placeController
            placesTVC.delegate = self
            placesTableViewController = placesTVC
            
        } else if segue.identifier == "MapView" {
            //get a mapview controller
            guard let mapVC = segue.destination as? MapViewController else { return }
            
            mapViewController = mapVC
            
        }
        
        
    }
   

}

extension VisitedPlacesViewController: PlaceSelectionDelegate {
    func placeWasSelected(place: Place) {
        //pass location to map VC
        mapViewController?.location = place.location
    }

}
