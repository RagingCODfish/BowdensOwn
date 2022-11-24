//
//  CategoryCardView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 16/11/2022.
//

import SwiftUI

struct CategoryCardView: View {
    let category: Category
    var body: some View {
            VStack(alignment: .leading) {
                Text(category.name)
                    .fontWeight(.semibold)
                    .layoutPriority(1)
                    .foregroundColor(.primary)
                    .padding([.horizontal, .top])
                
                Image(category.image)
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                
            }
            
            .frame(maxWidth: 200)
            .frame(height: 260)
            
            .strokeStyle(cornerRadius: 30)
            .background(
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .fill(LinearGradient(colors: [.blue.opacity(0.6), .blue], startPoint: .topLeading, endPoint: .bottomTrailing)))
        
    }
}

struct CategoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardView(category: .exampleCategory)
            .environmentObject(ProductMenu())
    }
}
