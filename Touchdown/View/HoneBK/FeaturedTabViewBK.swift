//
//  FeaturedTabViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/08.
//

import SwiftUI

struct FeaturedTabViewBK: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemViewBK(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabViewBK_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabViewBK()
            .background(Color.gray)
    }
}
