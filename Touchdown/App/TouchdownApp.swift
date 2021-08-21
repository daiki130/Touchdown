//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by 大貴のMAC on 2021/07/31.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
