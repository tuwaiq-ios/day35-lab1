//
//  ViewController.swift
//  SaraMap
//
//  Created by Sara M on 06/04/1443 AH.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    var locationManager: CLLocationManager!
    
    lazy var  mapVC: MKMapView = {
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
        let sara = MKPointAnnotation()
        sara.title = "sara"
        sara.coordinate = CLLocationCoordinate2D(latitude: 18.2181, longitude: 42.5055)
        mapVC.addAnnotation(sara)
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
