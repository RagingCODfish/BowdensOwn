//
//  Category.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 15/11/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var products: [Product]

    
    func matches(for search: String) -> [Product] {
        let trimmed = search.trimmingCharacters(in: .whitespaces)
        if trimmed.isEmpty { return products}
        
        return products.filter { $0.name.localizedCaseInsensitiveContains(trimmed) }
    }
    
    static let exampleCategory = Category(name: "Exterior", image: "Exterior", products: [Product.example])
    
}
