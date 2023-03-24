//
//  CategoryView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 28/9/2022.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var menu: ProductMenu
    @EnvironmentObject var cart: Cart
    @State private var allProducts = [Product.self]
    
    var columns: [GridItem] {
        [GridItem(.adaptive(minimum: 170, maximum: 170))]
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {

                    LazyVGrid(columns: columns) {
                        ForEach(menu.sections) { category in
                            NavigationLink {
                                ProductsView(category: category)
                            } label: {
                                CategoryCardView(category: category)
                        }
                    }
                }
            }
            .navigationTitle("Shop")

        }
    }
}


struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
            .environmentObject(ProductMenu())
            .environmentObject(Cart())
    }
}
