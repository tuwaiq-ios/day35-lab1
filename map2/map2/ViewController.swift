//
//  ViewController.swift
//  map2
//
//  Created by sara saud on 11/11/21.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    //MARK:- Variable Declarations

    @IBOutlet weak var mMapView: MKMapView!
  
    
        var locationManager:CLLocationManager!
        var currentLocationStr = "Current location"

        //MARK:- ViewController LifeCycle Methods

        override func viewDidLoad() {
            super.viewDidLoad()
            
            let me = MKPointAnnotation()
                    me.title = "sara"
                    me.coordinate = CLLocationCoordinate2D(latitude: 18.2497107, longitude: 42.5584669)
            mMapView.addAnnotation(me)
                }
        }

