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
    @EnvironmentObject var guideMenu: GuideMenu
    
    var body: some View {
        TabView {
            CategoryView()
                .tabItem {
                    Label("Products", systemImage: "car")
                }
            CartView()
                .tabItem {
                    Label("Bag", systemImage: "bag")
                }
                .badge(cart.orderItems.count)
                
            CarCollectionView()
                .tabItem {
                    Label("Collection", systemImage: "newspaper")
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
            .environmentObject(ProductMenu())
            .environmentObject(Cart())
            .environmentObject(GuideMenu())
    }
}
