//
//  Products.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 14/11/2022.
//

import Foundation

class Menu: ObservableObject, Codable {
    let sections: [Category]

    init() {
        do {
            let url = Bundle.main.url(forResource: "menu", withExtension: "json")!
            let data = try Data(contentsOf: url)
            let jsonData = try JSONDecoder().decode(Menu.self, from: data)
            
            sections = jsonData.sections
            
        } catch {
            fatalError("I got an error \(error)")
        }
    }
}
