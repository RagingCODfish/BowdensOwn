//
//  ProductDetailView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 6/9/2022.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: Product
    @EnvironmentObject var menu: ProductMenu
    @EnvironmentObject var order: Order
    @EnvironmentObject var cart: Cart
    
    @State private var selectedSize = 0
    @State private var isShowingDetail = false
    @State private var isPressed = false
    
    var body: some View {
        ScrollView {
            VStack {
                Image("\(product.image[selectedSize])")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Text("\(product.image[selectedSize])")
                
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
        .safeAreaInset(edge: .bottom) {
            Button {
                cart.add(product, image: product.image[selectedSize], price: product.price[selectedSize])
                if !isPressed {
                    isPressed = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        isPressed = false
                    }
                }
            } label: {
                if isPressed {
                    Label {
                        Text("Added To Cart")
                    } icon: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .transition(.asymmetric(insertion: AnyTransition.opacity.combined(with: .move(edge: .bottom)), removal: AnyTransition.opacity.combined(with: .move(edge: .top))))
                } else {
                    Label {
                        Text("Add To Cart")
                    } icon: {
                        Image(systemName: "cart.fill")
                    }
                    .transition(.asymmetric(insertion: AnyTransition.opacity.combined(with: .move(edge: .bottom)), removal: AnyTransition.opacity.combined(with: .move(edge: .top))))
                }
            }
            .animation(.spring(), value: isPressed)
            .font(.title2.bold())
            .frame(width: 350, height: 44)
            .foregroundColor(.black)
            .background(Color("Green"))
            .cornerRadius(10)
            .padding()
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: .example)
            .environmentObject(ProductMenu())
            .environmentObject(Cart())
    }
}
