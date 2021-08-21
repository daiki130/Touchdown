//
//  CategoryItemViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/09.
//

import SwiftUI

struct CategoryItemViewBK: View {
    let category: Category
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6) {
                Image(category.image)
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            } //: HSTACK
            .padding()
            .background(
                Color.white.cornerRadius(12)
            )
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }) //: BUTTON
    }
}

struct CategoryItemViewBK_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemViewBK(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
