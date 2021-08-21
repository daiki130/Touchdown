//
//  ProductItemViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/09.
//

import SwiftUI

struct ProductItemViewBK: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: VSTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }) //: ZSTACK
    }
}

struct ProductItemViewBK_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemViewBK(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
    }
}
