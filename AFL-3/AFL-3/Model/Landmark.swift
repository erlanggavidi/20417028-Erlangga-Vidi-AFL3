//
//  Landmark.swift
//  AFL-3
//
//  Created by MacBook Pro on 13/04/23.
//

import Foundation
import SwiftUI
import CoreLocation

//landmark data class for landmark data
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool

    var category: Category
      enum Category: String, CaseIterable, Codable {
          case lakes = "Ground Effect"
          case rivers = "Turbo"
          case mountains = "Hybrid"
      }

    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    var featureImage: Image? {
          isFeatured ? Image(imageName + "_feature") : nil
      }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
