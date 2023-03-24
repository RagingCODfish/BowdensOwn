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
    @EnvironmentObject var garage: Garage
    
    @State private var selectedSize = 0
    @State private var isShowingQuestion = false
    @State private var isShowingDescription = false
    @State private var isShowingHowToUse = false
    @State private var isShowingVideo = false
    @State private var isShowingReviews = false
    @State private var isPressed = false
    
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Image("\(product.image[selectedSize])")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
//                        .animation(.easeInOut(duration: 0.8))
                    
                    Text("$\(product.price[selectedSize], specifier: "%.2f")")
                        .font(.largeTitle)
                        .fontDesign(.rounded)
                }
                
                Spacer()
                
                if product.price.count > 1 {
                    Picker("Size", selection: $selectedSize) {
                        ForEach(0..<product.price.count, id: \.self) { index in
                            if product.size[index] > 999 {
                                Text("\(product.size[index] / 1000)L")
                            } else {
                                Text("\(product.size[index])ML")
                            }
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding()
                } else {
                    if product.size[0] > 1 {
                        if product.size[0] > 999 {
                            Text("\(product.size[0] / 1000)L")
                        } else {
                            Text("\(product.size[0])ML")
                        }
                    }
                }
                
                VStack {
                    HStack {
                        Button {
                            isShowingDescription = true
                        } label: {
                            ExtrasButton(title: "Description", icon: "newspaper")
                        }
                        
                        Button {
                            isShowingHowToUse = true
                        } label: {
                            ExtrasButton(title: "How to use", icon: "info.circle")
                        }
                    }
                    
                    HStack {
                        Button {
                            isShowingVideo = true
                        } label: {
                            ExtrasButton(title: "Video", icon: "film")
                        }
                        
                        Button {
                            isShowingReviews = true
                        } label: {
                            ExtrasButton(title: "Reviews", icon: "star.bubble.fill")
                        }
 
                    }
                }

            }
            .sheet(isPresented: $isShowingQuestion) {
                 
            }
            .sheet(isPresented: $isShowingDescription) {
                ProductDescriptionView(product: product)
            }
            .sheet(isPresented: $isShowingHowToUse) {
                DetailView(product: product)
            }
            .sheet(isPresented: $isShowingVideo) {
                DetailView(product: product)
            }
            .sheet(isPresented: $isShowingReviews) {
                DetailView(product: product)
            }
        }
        .navigationTitle(product.name)
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            Button {
                isShowingQuestion.toggle()
            } label: {
                Image(systemName: "info.bubble")
            }
        }
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
                        Text("Added To Bag")
                    } icon: {
                        Image(systemName: "checkmark.circle.fill")
                    }
                    .transition(.asymmetric(insertion: AnyTransition.opacity.combined(with: .move(edge: .bottom)), removal: AnyTransition.opacity.combined(with: .move(edge: .top))))
                } else {
                    Label {
                        Text("Add To Bag")
                    } icon: {
                        Image(systemName: "bag")
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
		NavigationView {
			ProductDetailView(product: .example)
				.environmentObject(ProductMenu())
				.environmentObject(Cart())
		}
	}
}
