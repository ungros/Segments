//
//  ViewController.swift
//  CustomMapPin
//
//  Created by Roman on 03.07.2022.
//

import UIKit
import MapKit
//import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate {
    
    let map = MKMapView()
    
    // Location coordinate
   
    let coordinates = CLLocationCoordinate2D(latitude: 49.039478, longitude: 3.386138)
    
    // 49.039478, 3.386138
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(map)
        map.frame = view.bounds
        map.delegate = self
        
        map.setRegion(MKCoordinateRegion(
            center: coordinates,
            latitudinalMeters: 66,
            longitudinalMeters: 66),
            animated: false)
        
        //      map.setRegion(MKCoordinateRegion(
        //                 center: coordinate,
        //                 span: MKCoordinateSpan(
        //                 latitudeDelta: 0.1,
        //                 longitudeDelta: 0.1)),
        //                 animated: false)
   
    addCustomPin()
    }
    
    private func addCustomPin() {
        
        let pin_1 = MKPointAnnotation()
        
        pin_1.coordinate = coordinates
        pin_1.title = "Good Vine"
        pin_1.subtitle = "Here is you can to taste some good vine."
       
        map.addAnnotation(pin_1)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        // make sure that is not current user location
        guard !(annotation is MKUserLocation) else {return nil}
    
        var annotationView = map.dequeueReusableAnnotationView(withIdentifier: "custom")
        
        if annotationView == nil {
            // Create the veiw
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "custom")
            annotationView?.canShowCallout = true
           // + annotationView?.rightCalloutAccessoryView
        }else{
            annotationView?.annotation = annotation
        }
        
        annotationView?.image = UIImage(named: "vine")
        
        return annotationView
    }
}
   


