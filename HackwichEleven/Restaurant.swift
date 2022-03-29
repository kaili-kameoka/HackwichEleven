//
//  Restaurant.swift
//  HackwichEleven
//
//  Created by Kaili Kameoka on 3/28/22.
//

import UIKit
import MapKit

class Restaurant: NSObject, MKAnnotation {
    let restaurantTitle: String
    let restaurantType: StringLiteralType
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return restaurantTitle
    }
}
