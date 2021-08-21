//
//  RatingSizesDetailViewBK.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/14.
//

import SwiftUI

struct RatingSizesDetailViewBK: View {
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 3, content: {
                    ForEach(1...5, id:\.self) { item in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color(UIColor.systemGray4).cornerRadius(5))
                                .foregroundColor(.white)
                        }) //: BUTTON
                    } //: LOOP
                }) //: HSTACK
                
            }) //: VSTACK
            Spacer()
            
            //Sizes
            
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.heavy)
                    .foregroundColor(colorGray)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5, content: {
                    ForEach(sizes, id:\.self) { size in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
                    }
                }) //: HSTACK
            }) //: VSTACK
        } //: HSTACK
        
    }
}

struct RatingSizesDetailViewBK_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailViewBK()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
