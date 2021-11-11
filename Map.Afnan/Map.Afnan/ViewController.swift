//
//  ViewController.swift
//  Map.Afnan
//
//  Created by Fno Khalid on 06/04/1443 AH.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate  {
    
    var locationManager: CLLocationManager!
    
    lazy var map: MKMapView = {
        let mapview = MKMapView()
        mapview.translatesAutoresizingMaskIntoConstraints = false
        mapview.delegate = self
        
        return mapview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
        }
        
        
        view.addSubview(map)
        NSLayoutConstraint.activate([
            map.topAnchor.constraint(equalTo: view.topAnchor),
            map.rightAnchor.constraint(equalTo: view.rightAnchor),
            map.leftAnchor.constraint(equalTo: view.leftAnchor),
            map.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        let Afnan = MKPointAnnotation()
        Afnan.title = "Afnan"
        Afnan.coordinate = CLLocationCoordinate2D(latitude: 18.2497107, longitude: 42.4584669)
        
        map.addAnnotation(Afnan)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard let  lastLocation = locations.last else {return}
        let lat = lastLocation.coordinate.latitude
        let long = lastLocation.coordinate.longitude
        
  
    }
    
}

