//
//  CarCollectionMenu.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 21/11/2022.
//

import Foundation

class CarCollectionMenu: ObservableObject, Codable {
    let collection: [Car]
    
    init() {
        do {
            let url = Bundle.main.url(forResource: "carCollection", withExtension: "json")!
            let data = try Data(contentsOf: url)
            let jsonData = try JSONDecoder().decode(CarCollectionMenu.self, from: data)
            
            collection = jsonData.collection
            
        } catch {
            fatalError("I got an error \(error)")
        }
    }
}
