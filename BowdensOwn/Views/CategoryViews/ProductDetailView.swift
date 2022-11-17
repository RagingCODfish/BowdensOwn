//
//  ProductDetailView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 6/9/2022.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: Product
    @EnvironmentObject var menu: Menu
    @EnvironmentObject var order: Order
    @EnvironmentObject var cart: Cart
    
    @State private var selectedSize = 0
    @State private var isShowingDetail = false
    
    var body: some View {
        ScrollView {
            VStack {
                Image("\(product.image)\(product.size[selectedSize])")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Text("\(product.image)\(product.size[selectedSize])")
                
                Text(product.name)
                    .font(.caption)
                
                Text("$\(product.price[selectedSize], specifier: "%.2f")")
                
                if product.price.count > 1 {
                    Picker("Size", selection: $selectedSize, content: {
                        ForEach(0..<product.price.count, id: \.self, content: { index in
                            Text("\(product.size[index])ml")
                        })
                    })
                    .pickerStyle(.segmented)
                    .padding()
                }
                
                
                Button {
                    cart.add(product, price: product.price[selectedSize])
                } label: {
                    APButton(title: "Add to cart", color: "Green")
                }
                
                Button {
                    isShowingDetail.toggle()
                } label: {
                    APButton(title: "Details", color: "Teal")
                }
                
                Spacer()
            }
            .sheet(isPresented: $isShowingDetail) {
                DetailView(product: product)
                
            }
        }
        .navigationTitle(product.name)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: .example)
            .environmentObject(Menu())
            .environmentObject(Order())
            .environmentObject(Cart())
    }
}
