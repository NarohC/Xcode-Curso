//
//  Artwork.swift
//  HonoluluArt
//
//  Created by CCDM24 on 10/11/19.
//  Copyright © 2019 Ray Wenderlich. All rights reserved.
//

import Foundation
import MapKit
import Contacts

class Artwork: NSObject, MKAnnotation {
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
   
    
    //markerTintColor for disciplines: Sculpture, Plaque, Mural, Monument, other
    
            
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        super.init()
    }
    
    var markerTintColor: UIColor  {
        switch discipline {
        case "Monument":
            return .red
        case "Mural":
            return .cyan
        case "Plaque":
            return .blue
        case "Sculpture":
            return .purple
        default:
            return .green
        }
    }
    
    init?(json: [Any]){
        // 1
        self.title = json[16] as? String ?? "No Title"
        self.locationName = json[12] as! String
        self.discipline = json[15] as! String
        //2
        if let latitude = Double(json[18] as! String), let longitude = Double(json[19] as! String){
            self.coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        }else{
            self.coordinate = CLLocationCoordinate2D()
        }
        
    }
    
    
    
    // Annotation right callout accessory opens this mapItem in Maps app
    func mapItem() -> MKMapItem{
        let addressDict = [CNPostalAddressStreetKey: subtitle]
        let placemark = MKPlacemark(coordinate: coordinate, addressDictionary: addressDict)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = title
        return mapItem
    }
    
    var subtitle: String?{
        return locationName
    }
    
}
