//
//  SectionViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/09.
//

import SwiftUI

struct SectionViewBK: View {
    @State var rotateClockwise: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        } //: VSTACK
        .background(Color.gray).cornerRadius(12)
        .frame(width: 85)
    }
}

struct SectionViewBK_Previews: PreviewProvider {
    static var previews: some View {
        SectionViewBK(rotateClockwise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
        
        
    }
}
