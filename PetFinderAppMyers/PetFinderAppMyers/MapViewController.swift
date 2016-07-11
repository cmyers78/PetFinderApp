//
//  MapViewController.swift
//  PetFinderAppMyers
//
//  Created by Christopher Myers on 7/8/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Locations"
        
        addPin(40.730459, pinLong: -111.551152, pinTitle: "The Adoption Center - Kimball Junction", pinSubtitle: "6699 N Landmark Dr, Suite B-103C, Park City, UT 84098")
        
        
        // Do any additional setup after loading the view.
    }
    
    func addPin(pinLat : Double, pinLong : Double, pinTitle : String, pinSubtitle : String) {
        let location = CLLocationCoordinate2D(latitude: pinLat, longitude: pinLong)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = pinTitle
        annotation.subtitle = pinSubtitle
        
        self.mapView.addAnnotation(annotation)
        
        self.centerMap(location)

    }
    
    func centerMap(centerCoord : CLLocationCoordinate2D) {
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        
        let region = MKCoordinateRegion(center: centerCoord, span: span)
     
        
        self.mapView.setRegion(region, animated: true)
    }

    
}
