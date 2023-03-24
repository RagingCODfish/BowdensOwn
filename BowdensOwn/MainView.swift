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
    
    @AppStorage("tabSelection") private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryView()
                .tabItem {
                    if selection == 0 {
                        Label("Shop", systemImage: "car")
                    } else {
                        Label("Shop", systemImage: "car.side")
                    }
                }
                .tag(0)
            
            CartView()
                .tabItem {
                    if cart.orderItems.count > 49 {
                        Label("Evergreen", systemImage: "ferry")
                    } else if cart.orderItems.count > 29 {
                        Label("Cargo Plane", systemImage: "airplane")
                    } else if cart.orderItems.count > 19 {
                        Label("Truck", systemImage: "box.truck")
                    } else if cart.orderItems.count > 9 {
                        Label("Cart", systemImage: "cart")
                    } else if cart.orderItems.count > 4  {
                        Label("Basket", systemImage: "basket")
                    } else {
                        Label("Bag", systemImage: "bag")
                    }
                }
                .badge(cart.orderItems.count)
                .tag(1)
                
            MyGarageView()
                .tabItem {
                    if selection == 2 {
                        Label("My Garage", systemImage: "door.garage.open")
                    } else {
                        Label("My Garage", systemImage: "door.garage.closed")
                    }
                }
                .tag(2)
            
            CarCollectionView()
                .tabItem {
                        if selection == 3 {
                            Label("Collection", systemImage: "book")
                        } else {
                            Label("Collection", systemImage: "book.closed")
                        }
                }
                .tag(3)
            
            GuidesView()
                .tabItem {
                    if selection == 4 {
                        Label("Guides", systemImage: "doc.text.magnifyingglass")
                    } else {
                        Label("Guides", systemImage: "doc.plaintext")
                    }
                }
                .tag(4)
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
