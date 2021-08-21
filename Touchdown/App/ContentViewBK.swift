//
//  ContentViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/11.
//

import SwiftUI

struct ContentViewBK: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarViewBK()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeaturedTabViewBK()
                                .frame(minHeight: 256)
                                .padding(.vertical, 20)
                            
                            CategoryGridViewBK()
                            
                            TitleViewBK(title: "Helmet")
                            
                            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 10), count: 2), spacing: 15, content: {
                                ForEach(products) { product in
                                    ProductItemViewBK(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                                
                                            }
                                        }
                                } //: LOOP
                            })
                            .padding(15)
                            
                            TitleViewBK(title: "Brands")
                            
                            BrandGridViewBK()
                            
                            FooterViewBK()
                                .padding(.horizontal)
                        } //: VSTACK
                    }) //: SCROLL
                } //: VSTACK
                .background(
                    colorBackground.ignoresSafeArea(.all, edges: .top)
                )
            } else {
                ProductDetailView()
            }
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentViewBK_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewBK()
            .environmentObject(Shop())
    }
}
