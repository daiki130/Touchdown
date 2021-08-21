//
//  CategoryModel.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/08/01.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
