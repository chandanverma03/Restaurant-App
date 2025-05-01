//
//  location.swift
//  Restaurant_App
//
//  Created by Student on 28/04/25.
//

import UIKit
import MapKit

class location: UIViewController, CLLocationManagerDelegate {

    
    @IBOutlet weak var mapview: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 31.3422022, longitude: 75.6043793), span: MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3))
        
        mapview.setRegion(region, animated: true)
        
        let annotatin = MKPointAnnotation()
        annotatin.coordinate = CLLocationCoordinate2D(latitude: 31.3422022, longitude: 75.6043793)
        
        annotatin.title = "Lamba Pind Chownk"
        mapview.addAnnotation(annotatin)
        
    }
    
    

}
