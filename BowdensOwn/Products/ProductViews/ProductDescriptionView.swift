//
//  ProductDescriptionView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 17/1/2023.
//

import SwiftUI

struct ProductDescriptionView: View {
	let product: Product
	var body: some View {
		ScrollView {
			VStack {
				Text("Description")
					.font(.largeTitle)
				Text(product.description)
					.font(.headline)
			}
			.padding()
		}
	}
}

struct ProductDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
		ProductDescriptionView(product: .example)
    }
}
