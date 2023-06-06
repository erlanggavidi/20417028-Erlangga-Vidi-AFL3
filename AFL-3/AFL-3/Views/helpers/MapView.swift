//
//  MapView.swift
//  AFL-3
//
//  Created by MacBook Pro on 13/04/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    //save coordinate & zoom default
    var coordinate: CLLocationCoordinate2D
    
    @AppStorage("MapView.zoom")
    private var zoom: Zoom = .medium
    
    //zoom enum values
    enum Zoom: String, CaseIterable, Identifiable {
        case near = "Near"
        case medium = "Medium"
        case far = "Far"
        
        var id: Zoom {
            return self
        }
    }
    //map zoom size according to enum
    var delta: CLLocationDegrees {
        switch zoom {
        case .near: return 0.02
        case .medium: return 0.2
        case .far: return 2
        }
    }
    
    //put on display
    var body: some View {
        Map(coordinateRegion: .constant(region))
    }

    var region: MKCoordinateRegion {
        //if user change region, set new region
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        //pass coordinate in parameter
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
