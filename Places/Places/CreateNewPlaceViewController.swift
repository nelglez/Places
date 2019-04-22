//
//  CreateNewPlaceViewController.swift
//  Places
//
//  Created by Nelson Gonzalez on 4/22/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class CreateNewPlaceViewController: UIViewController, PlacesPresentor {
    
    @IBOutlet weak var locationTextField: UITextField!
    
    @IBOutlet weak var latitudeTextField: UITextField!
    
    @IBOutlet weak var longitudeTextField: UITextField!
    
    
    var placeController: PlaceController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func savePlaceButtonPressed(_ sender: UIButton) {
        
        //NYC
        //42
        //-110
        
        guard let name = locationTextField.text, !name.isEmpty, let latitudeString = latitudeTextField.text, !latitudeString.isEmpty,  let latitude = Double(latitudeString), let longitudeString = longitudeTextField.text, !longitudeString.isEmpty, let longitude = Double(longitudeString)  else { return }
        
        placeController?.createPlace(with: name, latitude: latitude, longitude: longitude)
        
    }
    
}
