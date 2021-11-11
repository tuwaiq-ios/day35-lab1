//
//  ViewController.swift
//  Maptask
//
//  Created by dmdm on 11/11/2021.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
  var locationManager: CLLocationManager!
  lazy var mapVC: MKMapView = {
    let map = MKMapView()
    map.translatesAutoresizingMaskIntoConstraints = false
    map.delegate = self
    return map
  }()
  override func viewDidLoad() {
    super.viewDidLoad()
    if CLLocationManager.locationServicesEnabled(){
      locationManager = CLLocationManager()
      locationManager.delegate = self
      locationManager.desiredAccuracy = kCLLocationAccuracyBest
      locationManager.requestAlwaysAuthorization()
      locationManager.startUpdatingLocation()
    }
    view.addSubview(mapVC)
    NSLayoutConstraint.activate([
      mapVC.topAnchor.constraint(equalTo: view.topAnchor),
      mapVC.rightAnchor.constraint(equalTo: view.rightAnchor),
      mapVC.leftAnchor.constraint(equalTo: view.leftAnchor), mapVC.bottomAnchor.constraint(equalTo: view.bottomAnchor),
    ])
    let deema = MKPointAnnotation()
      deema.title = "Deema"
      deema.coordinate = CLLocationCoordinate2D(latitude: 18.2181, longitude: 42.5055)
    mapVC.addAnnotation(deema)
  }
}
extension ViewController: MKMapViewDelegate, CLLocationManagerDelegate {
  func locationManager(_ manager:CLLocationManager, didUpdateLocations Locations:[CLLocation]) {
    guard let lastLocation = Locations.last else
    {return}
    let lat = lastLocation.coordinate.latitude
    let long = lastLocation.coordinate.longitude
  }
}
