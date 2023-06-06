//
//  Profile.swift
//  AFL-3
//
//  Created by MacBook Pro on 23/04/23.
//

import Foundation

struct Profile {
    //model data for profile
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Profile(username: "hagen kwik")
    
    //choices for profile / driver logo
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🏎️"
        case summer = "🪖"
        case autumn = "🍾"
        case winter = "❶"

        var id: String { rawValue }
    }
}
