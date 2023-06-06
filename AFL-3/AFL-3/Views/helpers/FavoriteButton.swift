//
//  FavoriteButton.swift
//  AFL-3
//
//  Created by MacBook Pro on 13/04/23.
//

import SwiftUI

struct FavoriteButton: View {
    //to save data , we bind
    @Binding var isSet: Bool

    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            //icon set
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
