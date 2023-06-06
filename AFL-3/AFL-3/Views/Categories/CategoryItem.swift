//
//  CategoryItem.swift
//  AFL-3
//
//  Created by MacBook Pro on 20/04/23.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark

    var body: some View {
        // put image and text together to view
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
