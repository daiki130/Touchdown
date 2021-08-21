//
//  Shop.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/08.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
