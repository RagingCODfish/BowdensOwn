//
//  AllProductsListView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 21/11/2022.
//

import SwiftUI

struct AllProductsListView: View {
    @EnvironmentObject var menu: ProductMenu
    @State private var allProducts: [Product] = []
    
    var body: some View {
        ScrollView {
            List(allProducts) { product in
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
            }
        }
    }
}

struct AllProductsListView_Previews: PreviewProvider {
    static var previews: some View {
        AllProductsListView()
            .environmentObject(ProductMenu())
    }
}
