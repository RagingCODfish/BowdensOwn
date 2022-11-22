//
//  AddToCartButton.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 18/11/2022.
//

import CoreMotion
import SwiftUI

struct AddToCartButton: View {
    @State private var isPressed = false
    var body: some View {
        HStack {
            Button {
                if !isPressed {
                    isPressed = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        isPressed = false
                    }
                }
            } label: {
                if isPressed {
                    Text("Added To Cart")
                        .transition(.asymmetric(insertion: AnyTransition.opacity.combined(with: .move(edge: .bottom)), removal: AnyTransition.opacity.combined(with: .move(edge: .top))))
                } else {
                    Text("Add To Cart")
                        .transition(.asymmetric(insertion: AnyTransition.opacity.combined(with: .move(edge: .bottom)), removal: AnyTransition.opacity.combined(with: .move(edge: .top))))
                }
                    
            }
            .animation(.spring(), value: isPressed)
            .font(.title3.bold())
            .frame(width: 350, height: 44)
            .foregroundColor(.black)
            .background(Color("Green"))
            .cornerRadius(10)
        }
    }
}

struct AddToCartButton_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartButton()
    }
}
