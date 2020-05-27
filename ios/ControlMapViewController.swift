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
  
  enum items : String{
    case ubication = "Ingresar ubicación"
    case avisos = "Aviso para llegar tarde"
    case logout = "Cerrar sesión"
  }
  
  @IBOutlet weak var mapView: UIView!
  @IBOutlet weak var loadingLocationLabel: UILabel!
  @IBOutlet weak var loadingMapIndicator: UIActivityIndicatorView!
  
  var locationManager: CLLocationManager!
  var latituteLocation : Double?
  var longitudLocation : Double?
  
  var collectionName : String?

  var mapViewGoogle: GMSMapView!
  var placesClient: GMSPlacesClient!
  var zoomLevel: Float = 15.0
  
  // An array to hold the list of likely places.
   var likelyPlaces: [GMSPlace] = []

   // The currently selected place.
   var selectedPlace: GMSPlace?
  
  @IBOutlet var itemsSelecction: [UIButton]!
  override func viewDidLoad() {
    super.viewDidLoad()
    self.loadingMapIndicator.startAnimating()
    }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(true)
    self.localizationUser()
    // Create a map.
       let camera = GMSCameraPosition.camera(withLatitude: 19.4284706,
                                             longitude: -99.1276627,
                                             zoom: zoomLevel)
    mapViewGoogle = GMSMapView.map(withFrame: self.mapView.bounds, camera: camera)
       mapViewGoogle.settings.myLocationButton = true
       mapViewGoogle.autoresizingMask = [.flexibleWidth, .flexibleHeight]
       mapViewGoogle.isMyLocationEnabled = true

       // Add the map to the view, hide it until we've got a location update.
    self.mapView.addSubview(mapViewGoogle)
    mapViewGoogle.isHidden = true
  }
  
  private func localizationUser(){
    // Initialize the location manager.
    locationManager = CLLocationManager()
    locationManager.desiredAccuracy = kCLLocationAccuracyBest
    locationManager.requestAlwaysAuthorization()
    locationManager.distanceFilter = 50
    locationManager.startUpdatingLocation()
    locationManager.delegate = self
    placesClient = GMSPlacesClient.shared()
  }

  
  @IBAction func handlerSelection(_ sender: UIButton) {
    itemsSelecction.forEach { (button) in
      UIView.animate(withDuration: 0.3) {
        button.isHidden = !button.isHidden
        self.view.layoutIfNeeded()
      }
    }
  }
  
  @IBAction func itemsSelectionButton(_ sender: UIButton) {
    guard let title = sender.currentTitle, let item = items(rawValue: title) else {return}
    switch item {
    case .ubication:
      self.showAlert()
    case .avisos:
      print("Avisos")
    case .logout:
      self.latituteLocation = nil
      self.longitudLocation = nil
      self.collectionName = nil
      self.dismiss(animated: true, completion: nil)
    }
  }
  
  private func showAlert(){
    let alert = UIAlertController(title: nil, message: "¿Deseas registrar tu ubicación?", preferredStyle: .alert)
    let actionOk = UIAlertAction(title: "Aceptar", style: .default){(action : UIAlertAction) in
      guard let latitude = self.latituteLocation else {return}
      guard let longitud = self.longitudLocation else {return}
      guard let collectionNewName = self.collectionName else {return}
      EmpleadosFireStoreDB.sharedInstance.updateDocument(nameCollection: collectionNewName, updateLatitud: latitude, updateLongitud: longitud)
    }
    let actionCancel = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
    alert.addAction(actionCancel)
    alert.addAction(actionOk)
    self.present(alert, animated: true, completion: nil)
    
  }
}

extension ControlMapViewController : CLLocationManagerDelegate{
  // Handle incoming location events.
  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    let location: CLLocation = locations.last!
    print("Location: \(location)")

    let camera = GMSCameraPosition.camera(withLatitude: location.coordinate.latitude,
                                          longitude: location.coordinate.longitude,
                                          zoom: zoomLevel)
    //Actualiza la localizacion
    self.latituteLocation = location.coordinate.latitude
    self.longitudLocation = location.coordinate.longitude

    if mapViewGoogle.isHidden {
      mapViewGoogle.isHidden = false
      mapViewGoogle.camera = camera
      self.loadingMapIndicator.stopAnimating()
      self.loadingLocationLabel.isHidden = true
    } else {
      mapViewGoogle.animate(to: camera)
    }
    
//    let marker = GMSMarker()
//    marker.position = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
//    marker.map = mapViewGoogle

    //listLikelyPlaces()
  }

  // Handle authorization for the location manager.
  func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
    switch status {
    case .restricted:
      print("Location access was restricted.")
    case .denied:
      print("User denied access to location.")
      // Display the map using the default location.
      mapView.isHidden = false
    case .notDetermined:
      print("Location status not determined.")
    case .authorizedAlways: fallthrough
    case .authorizedWhenInUse:
      print("Location status is OK.")
    @unknown default:
      fatalError()
    }
  }

  // Handle location manager errors.
  func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    locationManager.stopUpdatingLocation()
    print("Error: \(error)")
  }
}
