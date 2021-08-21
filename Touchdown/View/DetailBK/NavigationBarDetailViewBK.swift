//
//  NavigationBarDetailViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/14.
//

import SwiftUI

struct NavigationBarDetailViewBK: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.showingProduct = false
                    shop.selectedProduct = nil
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {
            
            }, label: {
                Image(systemName: "cart")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            })
        }
    }
}

struct NavigationBarDetailViewBK_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailViewBK()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
