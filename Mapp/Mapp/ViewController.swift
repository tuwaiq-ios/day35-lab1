//
//  ViewController.swift
//  Mapp
//
//  Created by sara al zhrani on 06/04/1443 AH.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    var locationManger: CLLocationManager!
    
    lazy var mapview : MKMapView = {
        let mv = MKMapView()
        mv.translatesAutoresizingMaskIntoConstraints = false
        mv.delegate = self
        return mv
        
    } ()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(mapview)
        NSLayoutConstraint.activate([
            mapview.topAnchor.constraint(equalTo: view.topAnchor),
            mapview.leftAnchor.constraint(equalTo: view.leftAnchor),
            mapview.rightAnchor.constraint(equalTo: view.rightAnchor),
            mapview.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        
        ])
        if  (CLLocationManager.locationServicesEnabled())
        {
            locationManger = CLLocationManager()
            locationManger.delegate = self
            locationManger.desiredAccuracy = kCLLocationAccuracyBest
            locationManger.requestAlwaysAuthorization()
            locationManger.startUpdatingHeading()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard let location = locations.last else {return}
        let lat = location.coordinate.latitude
        let long = location.coordinate.longitude
        
        let loc = MKPointAnnotation()
        loc.title = "Makkah"
        loc.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: long)
        mapview.addAnnotation(loc)
    }
}
    
    



