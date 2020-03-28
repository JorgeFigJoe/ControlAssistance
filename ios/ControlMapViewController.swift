//
//  ControlMapViewController.swift
//  ControlAssistance
//
//  Created by Jorge  Figueroa on 27/03/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class ControlMapViewController: UIViewController {
  
  var placesClient: GMSPlacesClient!

    override func viewDidLoad() {
        super.viewDidLoad()
      let camera = GMSCameraPosition.camera(withLatitude: 19.4284706, longitude: -99.1276627, zoom: 6.0)
      let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
      self.view.addSubview(mapView)
      
      let marker = GMSMarker()
      marker.position = CLLocationCoordinate2D(latitude: 19.4284706, longitude: -99.1276627)
      marker.title = "CDMX"
      marker.snippet = "Mexico"
      marker.map = mapView
    }


}
