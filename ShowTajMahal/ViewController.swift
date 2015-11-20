//
//  ViewController.swift
//  ShowTajMahal
//
//  Created by Sanjay Noronha on 2015/10/03.
//  Copyright © 2015 funza Academy. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet var myMapView: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        mapTajMahal()

    }
    
   func mapTajMahal()
   {
    //Taj Mahal Coordinates: 27.175015, 78.042139
    
    // Coordinates
    let tajLat:CLLocationDegrees = 27.175015
    let tajLong:CLLocationDegrees = 78.042139
    
    let tajCoordinate = CLLocationCoordinate2D(latitude: tajLat, longitude: tajLong)
    
    //Span
    let latDelta:CLLocationDegrees = 0.01
    let longDelta:CLLocationDegrees = 0.01
    let tajSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
    
    let tajRegion = MKCoordinateRegion(center: tajCoordinate, span: tajSpan)
    
    
    myMapView.setRegion(tajRegion, animated: true )
    
    let tajAnnotation = MKPointAnnotation()
    tajAnnotation.title = "Taj Mahal"
    tajAnnotation.subtitle = "She walks in beauty"
    tajAnnotation.coordinate = tajCoordinate
    
    myMapView.addAnnotation(tajAnnotation)
    
    
    
    
    
    
    
    
    }

    

}

