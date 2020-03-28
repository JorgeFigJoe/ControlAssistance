//
//  ControlMapViewController.swift
//  ControlAssistance
//
//  Created by Jorge  Figueroa on 27/03/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import UIKit
import GoogleMaps

class ControlMapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
      let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
      self.view.addSubview(mapView)
      
      let marker = GMSMarker()
      marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
      marker.title = "Sydney"
      marker.snippet = "Australia"
      marker.map = mapView
    }


}
