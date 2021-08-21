//
//  a.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/08.
//

import SwiftUI

struct a: View {
    var body: some View {
        HStack {
            Text("This is a moderately long string.")
                .font(.largeTitle)
                .border(Color.gray)

            Spacer()

            Text("This is a higher priority string1.")
                .font(.largeTitle)
                .layoutPriority(1)
                .border(Color.gray)
            
            Spacer()
            
            Text("This is a higher priority string2.")
                .font(.largeTitle)
                .layoutPriority(1)
                .border(Color.gray)
        }
    }
}

struct a_Previews: PreviewProvider {
    static var previews: some View {
        a()
    }
}
