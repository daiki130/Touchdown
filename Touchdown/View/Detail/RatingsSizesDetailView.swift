//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/07.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    // MARK: - PROPERTY
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL",]
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // RATINGS
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                })
            }) //: VSTACK
            
            Spacer()
            
            // SIZES
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {
                            
                        }, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        })
                    } //: LOOP
                }) //: HSTACK
            }) //: VSTACK
        }) //: HSTACK
    }
}

// MARK: - PREVIEW
struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
