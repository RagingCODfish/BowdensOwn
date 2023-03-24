//
//  ProductButtonsView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 28/11/2022.
//

import SwiftUI

struct ProductButtonsView: View {
    var text: String
    var image: String
    var body: some View {
        HStack {
            VStack {
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                
                Text(text)
            }
            .frame(width: 100, height: 100)
            .background(.blue.opacity(0.2), in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        }
    }
}

struct ProductButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductButtonsView(text: "Description", image: "book")
    }
}
