//
//  CartView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 6/9/2022.
//

import PassKit
import SwiftUI

struct CartView: View {
    @EnvironmentObject var cart: Cart
    @State private var showingAlert = false
    
    var body: some View {
        NavigationStack {
            if cart.paymentSuccess {
                Text("Thanks for your order")
            } else {
                if cart.orderItems.isEmpty {
                    EmptyState(message: "Your bag is empty")
                } else {
                        List (cart.orderItems) { item in
                            Label {
                                HStack {
                                    Spacer()
                                    VStack(alignment: .trailing) {
                                        Text(item.name)
                                        HStack {
                                            
                                            Text("$\(item.price, specifier: "%.2f")")
                                        }
                                        
                                    }
                                }
                                
                            } icon: {
                                Image(item.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100)
                            }
                            .padding(.horizontal, 20)
                            
                            .swipeActions {
                                Button(role: .destructive) {
                                    withAnimation {
                                        cart.delete(item)
                                    }
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                            .listRowSeparator(.hidden)
                    }
                    .listStyle(InsetListStyle())
                    
                    .toolbar {
                        Button("Empty") {
                            showingAlert = true
                        }
                        .alert("Are you sure you want to remove all items?", isPresented: $showingAlert) {
                            Button("Yes", role: .destructive) { cart.deleteAll() }
                            Button("No", role: .cancel) {}
                        }
                    }
                    .safeAreaInset(edge: .bottom) {
                        PaymentButton(action: cart.pay)
                            .disabled(cart.orderItems.isEmpty)
                            .padding()
                    }
                    .onDisappear {
                        if cart.paymentSuccess {
                            cart.paymentSuccess = false
                        }
                    }
                    .navigationTitle("Total: $\(cart.totalPrice, specifier: "%.2f")")
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
