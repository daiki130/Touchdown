//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/01.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    
    let category: Category
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6) {
                Image(category.image)
                    .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            } //: HSTACK
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }) //: BUTTON
    }
}

// MARK: - PREVIEW
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
