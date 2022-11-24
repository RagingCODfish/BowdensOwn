//
//  ProductGridView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 24/11/2022.
//

import SwiftUI

struct ProductGridView: View {
    let category: Category
    @State private var searchText = ""
    
    var columns: [GridItem] {
        [GridItem(.adaptive(minimum: 170, maximum: 170))]
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(searchResults) { product in
                    NavigationLink {
                        ProductDetailView(product: product)
                    } label: {
                        VStack(alignment: .leading) {
                            Text(product.name)
                                .fontWeight(.semibold)
                                .layoutPriority(1)
                                .foregroundColor(.primary)
                                .padding([.horizontal, .top])
                            
                            Image(product.displayImage)
                                .resizable()
                                .scaledToFit()
                                .padding(.top)
                            
                        }
                        .frame(maxWidth: 200)
                        .frame(height: 260)
                        .strokeStyle(cornerRadius: 30)
                        .background(
                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .fill(LinearGradient(colors: [.blue.opacity(0.6), .blue], startPoint: .topLeading, endPoint: .bottomTrailing)))
                    }
                }
            }
        }
        .navigationTitle(category.name)
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

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView(category: Category.exampleCategory)
            .environmentObject(ProductMenu())
    }
}
