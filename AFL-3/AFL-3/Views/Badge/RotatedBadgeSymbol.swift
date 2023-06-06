//
//  RotatedBadgeSymbol.swift
//  AFL-3
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    //simply rotate the badge
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
