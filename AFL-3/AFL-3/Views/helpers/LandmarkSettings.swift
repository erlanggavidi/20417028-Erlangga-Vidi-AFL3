//
//  LandmarkSettings.swift
//  MacLandmarks
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

struct LandmarkSettings: View {
    //for saving data
    @AppStorage("MapView.zoom")
    private var zoom: MapView.Zoom = .medium

    var body: some View {
        //make ui for picking zoom enum
        Form {
            Picker("Map Zoom:", selection: $zoom) {
                ForEach(MapView.Zoom.allCases) { level in
                    Text(level.rawValue)
                }
            }
            .pickerStyle(.inline)
        }
        .frame(width: 300)
        .navigationTitle("Landmark Settings")
        .padding(80)
    }
}

struct LandmarkSettings_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkSettings()
    }
}
