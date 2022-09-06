//
//  ProductsView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 6/9/2022.
//

import SwiftUI

struct ProductsView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("List of categories")
                NavigationLink {
                    ProductListView()
                } label: {
                    Text("Go to ProductListView")
                }
            }
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
    }
}
