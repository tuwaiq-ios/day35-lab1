//
//  ViewController.swift
//  Map
//
//  Created by Kholod Sultan on 06/04/1443 AH.
//

import UIKit
import MapKit


class ViewController: UIViewController {
    
    lazy var mapView: MKMapView = {
        let mv = MKMapView()
        mv.translatesAutoresizingMaskIntoConstraints = false
        mv.delegate = self
        return mv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mapView)
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.leftAnchor.constraint(equalTo: view.leftAnchor),
            mapView.rightAnchor.constraint(equalTo: view.rightAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
        let me = MKPointAnnotation()
        me .title="kholod"
        me.coordinate = CLLocationCoordinate2D(latitude: 18.2356, longitude: 42.784685)
        mapView.addAnnotation(me)
    }
}
    extension ViewController:MKMapViewDelegate{

}


