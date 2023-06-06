//
//  AFL_3App.swift
//  AFL-3
//
//  Created by MacBook Pro on 12/04/23.
//

import SwiftUI

@main
struct AFL_3App: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            //call the view
            ContentView()
                .environmentObject(modelData)
        }
        
        //give command for remove or add favourite
        .commands {
            LandmarkCommands()
        }
        
        //if mac os, make preference for zoom size
    #if os(macOS)
      Settings {
          LandmarkSettings()
      }
      #endif
    }
}
