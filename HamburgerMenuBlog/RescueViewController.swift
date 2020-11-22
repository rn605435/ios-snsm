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
            
            let image = UIImage(named: "icons8-phone-50") as UIImage?
            let button = UIButton()
            button.setImage(image, for: [])
            button.frame = CGRect(x: 0, y: self.view.frame.height - 200, width: 50, height: 50)
            button.setTitle("Demandez assistance", for: .normal)
            map.addSubview(button)
            button.center.x = self.view.center.x
            button.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
            if let coor = map.userLocation.location?.coordinate{
                map.setCenter(coor, animated: true)
            }
        }
    
    override func viewDidAppear(_ animated: Bool) {
        let alertController = UIAlertController(title: "Instructions", message:
            "Alertez l'équipage \"Homme à la mer Tribord ou Babord\".\nLancez lui la bouée couronne.\nConservez en vue l'homme ou la bouée.\nNotez la position qui s'afficher sur la carte.\nManoeuvrez pour revenir au plus tôt au point de chute.", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
        @objc func buttonClicked() {
            let url = URL(string: "tel://196")!
            UIApplication.shared.open(url)
        }
        
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            let locValue:CLLocationCoordinate2D = manager.location!.coordinate
            
            map.mapType = MKMapType.standard
            
            let span = MKCoordinateSpan.init(latitudeDelta: 0.05, longitudeDelta: 0.05)
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
