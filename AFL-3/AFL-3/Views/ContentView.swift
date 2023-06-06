//
//  ContentView.swift
//  AFL-3
//
//  Created by MacBook Pro on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured

    //give bottom nav bar
    enum Tab {
        case featured
        case list
    }

    var body: some View {
        TabView(selection: $selection) {
            //call category home struct & give icon & connect to correct Tab
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            //call landmark list struct & give icon & connect to correct Tab
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}

