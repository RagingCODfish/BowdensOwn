//
//  ExtrasButton.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 1/12/2022.
//

import SwiftUI

struct ExtrasButton: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
            Text(title)
                .font(.system(size: 20, weight: .regular, design: .default))
        }
        .frame(width: 180, height: 44)
        .background(.ultraThinMaterial)
        .foregroundColor(.primary)
        
        .cornerRadius(10)
    }
}

struct ExtrasButton_Previews: PreviewProvider {
    static var previews: some View {
        ExtrasButton(title: "Description", icon: "newspaper")
    }
}
