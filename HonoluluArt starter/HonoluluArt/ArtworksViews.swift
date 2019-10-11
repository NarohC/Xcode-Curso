//
//  ArtworksViews.swift
//  HonoluluArt
//
//  Created by CCDM24 on 10/11/19.
//  Copyright © 2019 Ray Wenderlich. All rights reserved.
//

import Foundation
import MapKit

class ArtworkMarkerView: MKMarkerAnnotationView{
    override var annotation: MKAnnotation?{
        willSet{
            //1
            guard let artwork = newValue as? Artwork else { return }
            canShowCallout = true
            calloutOffset = CGPoint(x:-5, y:5)
            rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            //2
            markerTintColor = artwork.markerTintColor
            glyphText = String(artwork.discipline.first!)
        }
    }
}
