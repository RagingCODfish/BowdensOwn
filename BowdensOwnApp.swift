//
//  BowdensOwnApp.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 6/9/2022.
//

import SwiftUI

@main
struct BowdensOwnApp: App {
    @StateObject var menu = ProductMenu()
    @StateObject var cart = Cart()
    @StateObject var guide = GuideMenu()
    @StateObject var collection = CarCollectionMenu()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(menu)
                .environmentObject(cart)
                .environmentObject(guide)
                .environmentObject(collection)
        }
    }
}
