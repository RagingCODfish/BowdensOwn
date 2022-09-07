//
//  Product.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 6/9/2022.
//

import Foundation

struct Category: Codable {
    struct Products: Codable {

        let name: String
        let size: [Int]
        let price: [Double]
    }
    

    let category: String
    let products: [Products]
    
    static let allCategories = Bundle.main.decode([Category].self, from: "products.json")
    static let example = allCategories[0]
}


