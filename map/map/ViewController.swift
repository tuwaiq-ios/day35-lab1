//
//  ViewController.swift
//  map
//
//  Created by Macbook on 06/04/1443 AH.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    var locationManager: CLLocationManager!
    let mapView : MKMapView = {
        let map = MKMapView()
        map.overrideUserInterfaceStyle = .dark
        
        return map
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMapConstraints()
        let myloaction = MKPointAnnotation()
        myloaction.title = "Waleed"
        myloaction.coordinate = CLLocationCoordinate2D(latitude: 18.2497107,
                                                       longitude: 42.5584669)
        mapView.addAnnotation(myloaction)
    }
    func setMapConstraints() {
        
        if CLLocationManager.locationServicesEnabled(){
            locationManager=CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy=kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
        }
        view.addSubview(mapView)
        mapView.delegate = self
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        mapView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
    }
    
}


extension ViewController: MKMapViewDelegate, CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations:
                         [CLLocation]) {
        guard let lastLocation = locations.last else { return }
        
        
        let lat = lastLocation.coordinate.latitude
        let long = lastLocation.coordinate.longitude
    }
}

