//
//  CartView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 6/9/2022.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cart: Cart
    
    var body: some View {
        NavigationView {
            if cart.paymentSuccess {
                Text("Thanks for your order")
            } else {
                if cart.orderItems.isEmpty {
                    EmptyState(message: "Your cart is empty")
                } else {
                    List {
                        ForEach(cart.orderItems) { item in
                            HStack {
                                Text(item.name)
                                Spacer()
                                Text("$\(item.price, specifier: "%.2f")")
                            }
                            .swipeActions {
                                Button(role: .destructive) {
                                    withAnimation {
                                        cart.delete(item)
                                    }
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                        }
                        
                        Spacer()
                        
                        
                        Button {
                            cart.pay()
                        } label: {
                            APButton(title: "Order $\(cart.totalPrice, specifier: "%.2f")", color: "Green")
                        }
                        .disabled(cart.orderItems.isEmpty)
                    }
                    .padding()
                    .navigationTitle("Order")
                    .listStyle(InsetListStyle())
                    .onDisappear {
                        if cart.paymentSuccess {
                            cart.paymentSuccess = false
                        }
                    }
                }
            }
        }
        
        .environmentObject(cart)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(Cart())
    }
}
