//
//  ViewController.swift
//  Mapp
//
//  Created by sara al zhrani on 06/04/1443 AH.
//

import UIKit
import MapKit

class ViewController: UIViewController {
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
        let Asir = MKPointAnnotation()
        Asir.title = "Sara 💜"
        Asir.coordinate = CLLocationCoordinate2D(latitude: 18.2497107, longitude: 42.4584669)
        mapview.addAnnotation(Asir)
    }


}
extension ViewController: MKMapViewDelegate{
    
    
}


