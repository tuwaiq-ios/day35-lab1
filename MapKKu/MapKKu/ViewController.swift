//
//  ViewController.swift
//  MapKKu
//
//  Created by Ahmed Assiri on 06/04/1443 AH.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    
    let  mapView : MKMapView = {
        
        let map = MKMapView()
        
        map.overrideUserInterfaceStyle = .light
        
        return map
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        setMapConstraints()
        
    }
    
    func setMapConstraints() {
        view.addSubview(mapView)
        
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        mapView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
       // let me = MKPointAnnotation()
       // me.title = "Ahmed"
      //  me.coordinate = CLLocationCoordinate2D(latitude: 18.932471, longitude: 41.94402)
      
       // mapView.addAnnotation(me)//
    }
    
}

//extension ViewController : MKMapViewDelegate, CLLocationManagerDelegate  {
    
  //  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
      //  guard let lastLocations: [CLLocation]) {
       //
      //  }
  //  }
    
    
    
//}
