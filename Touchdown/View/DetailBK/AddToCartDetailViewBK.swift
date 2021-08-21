//
//  AddToCartDetailViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/14.
//

import SwiftUI

struct AddToCartDetailViewBK: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            Spacer()
        }) //: BUTTON
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailViewBK_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailViewBK()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
