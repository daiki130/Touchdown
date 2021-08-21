//
//  BrandGridView.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/05.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - PROPERTIY
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { item in
                    BrandItemView(brand: item)
                }
            }) //: GRID
            .frame(height: 200)
            .padding(15)
        }) //: SCROLL
    }
}

// MARK: - PREVIEW
struct BrandGridsView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
