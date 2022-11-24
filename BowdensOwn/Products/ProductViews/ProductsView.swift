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
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView(category: Category.exampleCategory)
            .environmentObject(ProductMenu())
    }
}
