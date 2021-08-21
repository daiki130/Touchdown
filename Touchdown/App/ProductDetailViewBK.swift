//
//  ProductDetailViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/14.
//

import SwiftUI

struct ProductDetailViewBK: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            NavigationBarDetailViewBK()
                .padding()
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            
            // HEADER
            HeaderDetailViewBK()
                .padding(.horizontal, 20)
            
            TopPartDetailViewBK()
                .padding(.horizontal, 20)
                .zIndex(1)
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
                RatingSizesDetailViewBK()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                }) //: SCROLL
                
                QuanityFavouriteDetailViewBK()
                    .padding(.vertical, 10)
                
                AddToCartDetailViewBK()
                    .padding(.bottom, 20)
                
            }) //: VSTACK
            
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        }) //: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        ).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailViewBK_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailViewBK()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
