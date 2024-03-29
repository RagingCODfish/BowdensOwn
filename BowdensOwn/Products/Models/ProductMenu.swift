//
//  ProductMenu.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 14/11/2022.
//

import Foundation

class ProductMenu: ObservableObject, Codable {
    let sections: [Category]

    init() {
        do {
            let url = Bundle.main.url(forResource: "productMenu", withExtension: "json")!
            let data = try Data(contentsOf: url)
            let jsonData = try JSONDecoder().decode(ProductMenu.self, from: data)
            
            sections = jsonData.sections
            
            
        } catch {
            fatalError("\(error)")
        }
    }
}
