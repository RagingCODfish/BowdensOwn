//
//  ProductListView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 15/11/2022.
//

import SwiftUI

struct ProductListView: View {
    let category: Category
    @State private var searchText = ""
    
    var body: some View {
            List(searchResults) { product in
            NavigationLink {
                ProductDetailView(product: product)
            } label: {
                HStack(alignment: .center, spacing: 16) {
                    Image(product.displayImage)
                        .resizable()
                        .frame(width: 80, height: 80)
                        .mask(RoundedRectangle(cornerRadius: 20))
                    VStack(alignment: .leading) {
                        Text(product.name)
                            .font(.headline)
                        Text(product.caption)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.inset)
        .navigationTitle(category.name)
        .navigationBarTitleDisplayMode(.inline)
        .searchable(text: $searchText)
    }

    var searchResults: [Product] {
        if searchText.isEmpty {
            return category.products
        } else {
            return category.products.filter { $0.name.contains(searchText) }
        }
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(category: Category.exampleCategory)
            .environmentObject(ProductMenu())
    }
}
