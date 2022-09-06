//
//  Product.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 6/9/2022.
//

import Foundation

struct Sections: Codable, Identifiable {
    var id = UUID()
    var name: String
    var products: [Product]
}

struct Product: Codable, Equatable, Identifiable {
    var id = UUID()
    var name: String
    var size: [Int]
    var price: [Double]
    
    static let example = Product(id: UUID(), name: "Nanolicious", size: [1,2], price: [9.99, 49.99])
}


