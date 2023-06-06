//
//  LandmarkDetail.swift
//  AFL-3
//
//  Created by MacBook Pro on 13/04/23.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    //save ladnmark data
    var landmarkIndex: Int {
            modelData.landmarks.firstIndex(where: { $0.id == landmark.id
            })!
        }

    var body: some View {
        ScrollView {
            //put data to maps
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            //put data to image
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .frame(width: 50)
                .padding(.bottom, -130)
            //place title, name, park, state description
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.red)
                    
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)

                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            Spacer()
        }
        //nav bar
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
            .environmentObject(modelData)
    }
}
