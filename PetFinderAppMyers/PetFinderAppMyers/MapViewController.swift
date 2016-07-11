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
        
        addCustomPin(40.730459, pinLong: -111.551152, pinTitle: "The Adoption Center - Kimball Junction", pinSubtitle: "6699 N Landmark Dr, Suite B-103C, Park City, UT 84098")
        
        addCustomPin(40.732895, pinLong: -111.383897, pinTitle: "Rescue Ranch - Brown's Canyon", pinSubtitle: "6466 N Highview Road, Peoa, Utah 84061")
        
        let latitude = (40.732895 + 40.730459) / 2
        
        let longitude = (-111.551152 + -111.383897) / 2
        
        let location = CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude
        )
        
        self.centerMap(location)
        // Do any additional setup after loading the view.
    }
    
    func addPin(pinLat : Double, pinLong : Double, pinTitle : String, pinSubtitle : String) {
        let location = CLLocationCoordinate2D(latitude: pinLat, longitude: pinLong)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = pinTitle
        annotation.subtitle = pinSubtitle
        
        self.mapView.addAnnotation(annotation)

    }
    
    func addCustomPin(pinLat : Double, pinLong : Double, pinTitle : String, pinSubtitle : String) {
        
        let location = CLLocationCoordinate2D(latitude: pinLat, longitude: pinLong)
        
        let annotation = CustomMKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = pinTitle
        annotation.subtitle = pinSubtitle
        
        self.mapView.addAnnotation(annotation)
    }
    
    func centerMap(centerCoord : CLLocationCoordinate2D) {
        let span = MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25)
        
        let region = MKCoordinateRegion(center: centerCoord, span: span)
     
        
        self.mapView.setRegion(region, animated: true)
    }

    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        
        if annotation.isKindOfClass(CustomMKPointAnnotation) {
            
            print("Got a custom point annotation!")
            
            // 1. Create a reuse identifier
            let identifer = "MapPin"
            
            // 2. Create annotation view
            
            let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: identifer)
            
            //3. allow the annotation to show a custom pin
            annotationView.canShowCallout = true
            
            //4. create an imageView for the custom pin
            
            let imageView = UIImageView(frame: CGRectMake(0, 0, 44, 44))
            imageView.contentMode = .ScaleAspectFit
            
            //5. assign the imageView an image from our assets library
            imageView.image = UIImage(named: "nuzzPin")
            
            //6. set the annotationView's image property to be equal to the image from our asset library
            annotationView.image = imageView.image
            
            //7. return the annotationView
            return annotationView
            
            
        }

        return nil
      
    }
    
}
