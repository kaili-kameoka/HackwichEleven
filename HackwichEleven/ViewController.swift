//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Kaili Kameoka on 3/28/22.
//
// https://www.google.com/maps/place/885+Kamokila+Blvd,+Kapolei,+HI+96707/@21.3319302,-158.0857573,17z/data=!4m12!1m6!3m5!1s0x7c00632354c3b0a7:0xa2f857dd871e2e5c!2sKalapawai+Cafe+%26+Deli!8m2!3d21.3318085!4d-158.0835599!3m4!1s0x7c00633cba305901:0x1fc0f55c7dc41642!8m2!3d21.3327736!4d-158.0826371
import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        centerMapOnLocation(location: initialLocation)
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.3319302, longitude: -158.0857573))
        let restaurantTwo = Restaurant(title: "Brick Oven Pizza", type: "Pizza", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080008))
        mapView.addAnnotation(restaurantOne)
        mapView.addAnnotation(restaurantTwo)
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        
        mapView.setRegion(coordinateRegion, animated: true);
    }
}

