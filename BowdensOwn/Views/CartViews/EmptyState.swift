//
//  EmptyState.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 17/11/2022.
//

import SwiftUI

struct EmptyState: View {
    let message: String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                Image(systemName: "bag")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -100.0)
        }
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(message: "Your cart is empty")
    }
}
