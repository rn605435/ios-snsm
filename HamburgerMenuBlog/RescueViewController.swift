//
//  RescueViewController.swift
//  HamburgerMenuBlog
//
//  Created by Dazinieras on 16/12/2018.
//  Copyright © 2018 Erica Millado. All rights reserved.
//

import UIKit
import MapKit

class RescueViewController: UIViewController, CLLocationManagerDelegate {
        
    @IBOutlet weak var map: MKMapView!
    
        var locationManager = CLLocationManager()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.locationManager.requestWhenInUseAuthorization()
            
            if CLLocationManager.locationServicesEnabled() {
                locationManager.delegate = self
                locationManager.desiredAccuracy = kCLLocationAccuracyBest
                locationManager.startUpdatingLocation()
            }
            
            map.mapType = .standard
            map.isZoomEnabled = true
            map.isScrollEnabled = true
            
            if let coor = map.userLocation.location?.coordinate{
                map.setCenter(coor, animated: true)
            }
        }
        
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            let locValue:CLLocationCoordinate2D = manager.location!.coordinate
            
            map.mapType = MKMapType.standard
            
            let span = MKCoordinateSpanMake(0.05, 0.05)
            let region = MKCoordinateRegion(center: locValue, span: span)
            map.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = locValue
            annotation.title = coordinateString(locValue.latitude, locValue.longitude)
            annotation.subtitle = "position actuelle"
            map.addAnnotation(annotation)
        }
        func coordinateString(_ latitude: Double,_ longitude: Double) -> String {
            var latSeconds = Int(latitude * 3600)
            let latDegrees = latSeconds / 3600
            latSeconds = abs(latSeconds % 3600)
            let latMinutes = latSeconds / 60
            latSeconds %= 60
            var longSeconds = Int(longitude * 3600)
            let longDegrees = longSeconds / 3600
            longSeconds = abs(longSeconds % 3600)
            let longMinutes = longSeconds / 60
            longSeconds %= 60
            return String(format:"%d°%d'%d\"%@ %d°%d'%d\"%@",
                          abs(latDegrees),
                          latMinutes,
                          latSeconds, latDegrees >= 0 ? "N" : "S",
                          abs(longDegrees),
                          longMinutes,
                          longSeconds,
                          longDegrees >= 0 ? "E" : "W" )
        }
}
