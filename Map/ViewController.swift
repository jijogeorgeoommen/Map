//
//  ViewController.swift
//  Map
//
//  Created by JIJO G OOMMEN on 07/06/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController {

    @IBOutlet weak var mApviewoutlet: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mApviewoutlet.mapType = MKMapType.satellite
        
        let location = CLLocationCoordinate2D(latitude: 8.5297, longitude: 76.9384)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05,longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mApviewoutlet.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "hai"
        annotation.subtitle = "TVM"
        mApviewoutlet.addAnnotation(annotation)
        
    }


}

