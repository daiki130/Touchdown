//
//  FeaturedItemViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/08.
//

import SwiftUI

struct FeaturedItemViewBK: View {
    var player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemViewBK_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemViewBK(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
