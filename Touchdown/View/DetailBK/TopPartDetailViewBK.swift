//
//  TopPartDetailViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/14.
//

import SwiftUI

struct TopPartDetailViewBK: View {
    @EnvironmentObject var shop: Shop
    @State var isAnimating: Bool = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }) //: VSTACK
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        } //: HSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

struct TopPartDetailViewBK_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailViewBK()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
