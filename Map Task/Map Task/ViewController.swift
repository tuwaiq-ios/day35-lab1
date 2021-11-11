//
//  ViewController.swift
//  Map Task
//
//  Created by Eth Os on 06/04/1443 AH.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    let mapView = MKMapView()
    var locationManeger: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mapView.delegate = self
        mapView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(mapView)
        
        if CLLocationManager.locationServicesEnabled(){
            locationManeger = CLLocationManager()
            locationManeger.delegate = self
            locationManeger.desiredAccuracy = kCLLocationAccuracyBest
            locationManeger.requestWhenInUseAuthorization()
            locationManeger.startUpdatingLocation()
            
        }
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.leftAnchor.constraint(equalTo: view.leftAnchor),
            mapView.rightAnchor.constraint(equalTo: view.rightAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    
}

extension ViewController: MKMapViewDelegate, CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("jjjjj")
        guard let lastLocation = locations.last else { return }
        let lat = lastLocation.coordinate.latitude
        let lon = lastLocation.coordinate.longitude
        
        let myLocation = MKPointAnnotation()
        myLocation.title = "Atheer"
        myLocation.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        mapView.addAnnotation(myLocation)
    }
}
