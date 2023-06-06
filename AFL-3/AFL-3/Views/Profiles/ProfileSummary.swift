//
//  ProfileSummary.swift
//  AFL-3
//
//  Created by MacBook Pro on 23/04/23.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData: ModelData
    var profile: Profile

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                //call values
                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Driver Logo: \(profile.seasonalPhoto.rawValue)")
                Text("Next Race Date: ") + Text(profile.goalDate, style: .date)

                Divider()

                VStack(alignment: .leading) {
                    Text("Awards")
                        .font(.headline)
                    
                    //call badges picture
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "Race Winner")
                            HikeBadge(name: "10 Races Completed")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Nurburgring Lap Record")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding(.bottom)
                    }
                }

                Divider()
                
                //call recent race graph
                VStack(alignment: .leading) {
                    Text("Recent Race")
                        .font(.headline)

                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
