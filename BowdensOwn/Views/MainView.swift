//
//  MainView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 6/9/2022.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var order: Order
    @EnvironmentObject var cart: Cart
    
    var body: some View {
        TabView {
            CategoryView()
                .tabItem {
                    Label("Products", systemImage: "car")
                }
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
                .badge(cart.orderItems.count)
                
            ContentView()
                .tabItem {
                    Label("Whats New", systemImage: "newspaper")
                }
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            GuidesView()
                .tabItem {
                    Label("Guides", systemImage: "info")
                }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Menu())
            .environmentObject(Cart())
    }
}
