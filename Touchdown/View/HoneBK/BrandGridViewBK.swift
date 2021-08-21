//
//  BrandGridViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/11.
//

import SwiftUI

struct BrandGridViewBK: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: Array(repeating: GridItem(.flexible(), spacing: 10), count: 2), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                ForEach(brands) { brand in
                    BrandItemViewBK(brand: brand)
                } //: LOOP
            })
            .frame(height: 200)
            .padding(15)
        }) //: SCROLL
    }
}

struct BrandGridViewBK_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridViewBK()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
