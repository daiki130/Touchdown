//
//  NavigationBarViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/08.
//

import SwiftUI

struct NavigationBarViewBK: View {
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
            }) //: BUTTON
            
            Spacer()
            
            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(x: 0, y: isAnimating ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimating.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(x: 13, y: -10)
                } //: ZSTACK
            })
        } //: HSTACK
    }
}

struct NavigationBarViewBK_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarViewBK()
    }
}
