//
//  ViewController.swift
//  map
//
//  Created by ibrahim asiri on 06/04/1443 AH.
//

import UIKit
 import MapKit

 class ViewController: UIViewController {

     let mapV : MKMapView = {
         let map = MKMapView()
         map.overrideUserInterfaceStyle = .dark
         return map
     }()
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         mapV.delegate = self

         let myLoc = MKPointAnnotation()
         myLoc.title = "IBRAHIM"
         myLoc.coordinate = CLLocationCoordinate2D(
            latitude: 18.2497107,
            longitude: 42.5584669)
         mapV.addAnnotation(myLoc)
         
         view.addSubview(mapV)
         mapV.translatesAutoresizingMaskIntoConstraints = false
         NSLayoutConstraint.activate([
            mapV.topAnchor.constraint(equalTo: view.topAnchor),
            mapV.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mapV.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mapV.trailingAnchor.constraint(equalTo: view.trailingAnchor)
         ])
        }
     }

 extension ViewController: MKMapViewDelegate, CLLocationManagerDelegate {

 }
