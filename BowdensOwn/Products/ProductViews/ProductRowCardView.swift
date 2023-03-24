//
//  ProductRowCardView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 18/11/2022.
//

import SwiftUI

struct ProductRowCardView: View {
    let product: Product
    
    var body: some View {
        HStack  {
            Image(product.displayImage)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(product.caption)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
            }
            .padding()
            .frame(maxHeight: .infinity)
            .background(.lightBackGround)
            
        }
        .frame(height: 100)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(.lightBackGround)
                 )
    }
}

struct ProductRowCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductRowCardView(product: .example)
    }
}
