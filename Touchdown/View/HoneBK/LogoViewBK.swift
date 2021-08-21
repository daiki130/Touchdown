//
//  LogoViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/08.
//

import SwiftUI

struct LogoViewBK: View {
    var body: some View {
        HStack(spacing: 4, content: {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }) //: HSTACK
    }
}

struct LogoViewBK_Previews: PreviewProvider {
    static var previews: some View {
        LogoViewBK()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
