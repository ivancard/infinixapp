//
//  CocreationViewController.swift
//  artppl
//
//  Created by ivan cardenas on 12/10/2022.
//

import UIKit
import MapKit
import CoreLocation

class CocreationViewController: UIViewController {
    
    let locationManager = CLLocationManager()

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Maquillaje y emoción: obra de teatro en creación"
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor(named: "colorMain") ?? UIColor.purple]
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        
        mapView.showsUserLocation = true
    }
    @IBAction func btnParticipar(_ sender: Any) {
        let requestPage = CocreationRequestViewController()
        requestPage.modalPresentationStyle = .fullScreen
        present(requestPage, animated: true)
    }
}
