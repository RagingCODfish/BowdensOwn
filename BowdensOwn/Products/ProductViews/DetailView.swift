//
//  DetailView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 14/11/2022.
//

import SwiftUI

struct DetailView: View {
    let product: Product
    
    var body: some View {
        VStack {
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Text(product.description)
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(product: Product.example)
    }
}
