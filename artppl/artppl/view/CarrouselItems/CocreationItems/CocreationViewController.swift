//
//  CocreationViewController.swift
//  artppl
//
//  Created by ivan cardenas on 12/10/2022.
//

import UIKit
import MapKit
import CoreLocation

final class CocreationViewController: UIViewController, MKMapViewDelegate {
    
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Maquillaje y emoción: obra de teatro en creación"
        
        mapView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setLocation()
    }
    
    private func setLocation(){
        let pLat = 40.410786
        let pLong = -3.707373
        let center = CLLocationCoordinate2D(latitude: pLat, longitude: pLong)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        self.mapView.setRegion(region, animated: true)
        
        let marker = MKPointAnnotation()
        marker.coordinate = center
        marker.title = "Maquillaje y emoci ..."
        mapView.addAnnotation(marker)
    }
    
    @IBAction func btnParticipar(_ sender: Any) {
        let requestPage = CocreationRequestViewController()
        requestPage.modalPresentationStyle = .fullScreen
        present(requestPage, animated: true)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard !(annotation is MKUserLocation) else {return nil}
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "customMark")
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customMark")
            annotationView?.canShowCallout = true
        } else {
            annotationView?.annotation = annotation
        }
        
        annotationView?.image = UIImage(named: "customMark")
        return annotationView
    }
}
