//
//  TitleViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/09.
//

import SwiftUI

struct TitleViewBK: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
            
        } //:HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleViewBK_Previews: PreviewProvider {
    static var previews: some View {
        TitleViewBK(title: "Helmet")
            .previewLayout(.sizeThatFits)
    }
}
