//
//  ViewController.swift
//  Task Location
//
//  Created by MacBook on 06/04/1443 AH.
//

import UIKit
import MapKit


class ViewController: UIViewController,MKMapViewDelegate {

    
    lazy var mapview: MKMapView = {
    let mv = MKMapView()
    mv.translatesAutoresizingMaskIntoConstraints = false
        mv.delegate = self
    return mv
}()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mapview)
        NSLayoutConstraint.activate([
            mapview.topAnchor.constraint(equalTo:view.topAnchor),
            mapview.rightAnchor.constraint(equalTo:view.rightAnchor),
            mapview.leftAnchor.constraint(equalTo:view.leftAnchor),
            mapview.bottomAnchor.constraint(equalTo:view.bottomAnchor)
        ])
        
        let Abha = MKPointAnnotation()
        Abha.title = "Abha"
        Abha.coordinate = CLLocationCoordinate2D(latitude: 18.2497107, longitude:42.5548669)
        mapview.addAnnotation(Abha)
    }


}

//extension ViewController: MKMapViewDelegate {
//
//
//}
