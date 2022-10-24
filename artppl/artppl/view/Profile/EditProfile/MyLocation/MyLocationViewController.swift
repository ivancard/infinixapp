//
//  MyLocationViewController.swift
//  artppl
//
//  Created by ivan cardenas on 17/10/2022.
//

import UIKit
import MapKit
import CoreLocation

class MyLocationViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLocation()
    }
    private func setLocation(){
        let pLat = 41.394434
        let pLong = 2.176109
        let center = CLLocationCoordinate2D(latitude: pLat, longitude: pLong)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        self.mapView.setRegion(region, animated: true)
        
        let marker = MKPointAnnotation()
        marker.coordinate = center
        mapView.addAnnotation(marker)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    @IBAction func btnClose(_ sender: Any) {
        dismiss(animated: true)
    }
    @IBAction func btnConfirm(_ sender: Any) {
        dismiss(animated: true)
    }
    @IBAction func btncancel(_ sender: Any) {
        dismiss(animated: true)
    }
}
