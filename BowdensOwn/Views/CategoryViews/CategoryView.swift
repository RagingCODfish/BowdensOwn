//
//  CategoryView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 28/9/2022.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var menu: Menu
    @EnvironmentObject var cart: Cart
    @State private var searchText = ""
    
    var columns: [GridItem] {
        [GridItem(.adaptive(minimum: 170, maximum: 170))]
    }

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(menu.sections) { category in
                        NavigationLink {
                            ProductListView(category: category)
                        } label: {
                            CategoryCardView(category: category)
                        }
                    }
                }
            }
            .navigationTitle("Shop")
            .searchable(text: $searchText)
        }
    }
}


struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
            .environmentObject(Menu())
            .environmentObject(Cart())
    }
}
