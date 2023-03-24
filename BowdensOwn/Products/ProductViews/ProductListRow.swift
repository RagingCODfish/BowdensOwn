//
//  ProductListRow.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 6/12/2022.
//

import SwiftUI

struct ProductListRow: View {
    let product: Product
    var body: some View {
        Label {
            Text(product.name)
                .font(.headline)
                
        } icon: {
            Image(product.displayImage)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
        }
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(LinearGradient(colors: [.blue, .blue.opacity(0.6)], startPoint: .topLeading, endPoint: .bottomTrailing)))
        .padding()
    }
}

struct ProductListRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductListRow(product: .example)
    }
}
