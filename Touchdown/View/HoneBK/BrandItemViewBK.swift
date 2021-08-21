//
//  BrandItemViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/11.
//

import SwiftUI

struct BrandItemViewBK: View {
    let brand: Brand
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

struct BrandItemViewBK_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemViewBK(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
