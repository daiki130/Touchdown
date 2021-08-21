//
//  CategoryGridViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/09.
//

import SwiftUI

struct CategoryGridViewBK: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: Array(repeating: GridItem(.flexible(), spacing: 10), count: 2), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                Section(
                    header: SectionViewBK(rotateClockwise: false),
                    footer: SectionViewBK(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            })
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }) //: SCROLL
    }
}

struct CategoryGridViewBK_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridViewBK()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
