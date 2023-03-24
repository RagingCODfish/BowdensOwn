//
//  ProductsView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 24/11/2022.
//

import SwiftUI

struct ProductsView: View {
    let category: Category
    @AppStorage("showingGrid") private var showingGrid = false
    @State private var searchText = ""
    
    var columns: [GridItem] {
        [GridItem(.adaptive(minimum: 170, maximum: 170))]
    }
    
    var body: some View {
         
        VStack {
            VStack {
                if showingGrid {
                    ProductGridView(category: category)
                } else {
                    ProductListView(category: category)
                }
            }
            .toolbar {
                Button {
                    showingGrid.toggle()
                } label: {
                    if showingGrid {
                        Label("Show as table", systemImage: "list.dash")
                    } else {
                        Label("Show as list", systemImage: "square.grid.2x2")
                    }
                }
            }
            .navigationTitle("Shop")
            .navigationViewStyle(.stack)
        }
    }
    
    var searchResults: [Product] {
        if searchText.isEmpty {
            return category.products
        } else {
            return category.products.filter { $0.name.contains(searchText) }
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView(category: Category.exampleCategory)
            .environmentObject(ProductMenu())
    }
}
