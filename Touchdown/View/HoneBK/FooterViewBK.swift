//
//  FooterViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/08.
//

import SwiftUI

struct FooterViewBK: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
                .layoutPriority(/*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            Text("Copy © robert Petras \nAll right reserved")
                .font(.footnote)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }) //: VSTACK
        .padding()
    }
}

struct FooterViewBK_Previews: PreviewProvider {
    static var previews: some View {
        FooterViewBK()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
