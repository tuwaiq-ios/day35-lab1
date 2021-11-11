//
//  ViewController.swift
//  map
//
//  Created by Fawaz on 11/11/2021.
//

import UIKit
import MapKit
class ViewController: UIViewController {
  var locationManager = CLLocationManager()
  lazy var mapView : MKMapView = {
    let mv = MKMapView()
    mv.delegate = self
    mv.translatesAutoresizingMaskIntoConstraints = false
    return mv
    
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(mapView)
    NSLayoutConstraint.activate([
      mapView.topAnchor.constraint(equalTo: view.topAnchor),
      mapView.rightAnchor.constraint(equalTo: view.rightAnchor),
      mapView.leftAnchor.constraint(equalTo: view.leftAnchor),
      mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ])
    setMapConstraints()
  }
  func setMapConstraints() {
    if CLLocationManager.locationServicesEnabled(){
      locationManager=CLLocationManager()
      locationManager.delegate = self
      locationManager.desiredAccuracy=kCLLocationAccuracyBest
      locationManager.requestAlwaysAuthorization()
      locationManager.startUpdatingLocation()
    }
  }
}
extension ViewController: MKMapViewDelegate , CLLocationManagerDelegate{
  
  func locationManager(_ manager: CLLocationManager,
                       didUpdateLocations location: [CLLocation] ){
    
    print("jhgdfghjk")
    
    guard let lastLocation = location.last else{ return }
    let lat = lastLocation.coordinate.latitude
    let loge = lastLocation.coordinate.longitude
    let myloaction = MKPointAnnotation()
    myloaction.title = "Fawaz"
    myloaction.coordinate = CLLocationCoordinate2D(
      latitude: lat,
      longitude: loge
    )
    mapView.addAnnotation(myloaction)
  }
}
