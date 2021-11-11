//
//  ViewController.swift
//  mappp
//
//  Created by PC on 06/04/1443 AH.
//

import UIKit
import MapKit

class ViewController: UIViewController
,MKMapViewDelegate{

    
       
    // Do any additional setup after loading the view.
        lazy var mapppview: MKMapView = {
            let mv = MKMapView()
            mv.translatesAutoresizingMaskIntoConstraints = false
            mv.delegate = self
           
            return mv
            
        }()
        override func viewDidLoad() {
            
            super.viewDidLoad()
            view.addSubview(mapppview)
            NSLayoutConstraint.activate([
                mapppview.topAnchor.constraint(equalTo: view.topAnchor),
                mapppview.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                mapppview.leftAnchor.constraint(equalTo: view.leftAnchor),
                mapppview.rightAnchor.constraint(equalTo: view.rightAnchor)
                
                
            ])
            let mm = MKPointAnnotation()
            mm.title = "munirah"
                
                mm.coordinate = CLLocationCoordinate2D(latitude: 18.2497107, longitude: 42.5584669)
            mapppview.addAnnotation(mm)
              }
        }
        


        



    




