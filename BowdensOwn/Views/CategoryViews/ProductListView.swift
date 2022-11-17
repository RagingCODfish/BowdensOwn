//
//  ProductListView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 15/11/2022.
//

import SwiftUI

struct ProductListView: View {
    let category: Category
    
    var body: some View {
        List(category.products) { product in
                NavigationLink {
                    ProductDetailView(product: product)
                } label: {
                    HStack(alignment: .top, spacing: 16) {
                        Image(product.displayImage)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .mask(RoundedRectangle(cornerRadius: 20))
                        VStack(alignment: .leading) {
                            Text(product.name)
                                .font(.headline)
                        }
                    }
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.inset)

            .navigationTitle(category.name)
            .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(category: Category.exampleCategory)
            .environmentObject(Menu())
    }
}
