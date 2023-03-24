//
//  Garage.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 24/11/2022.
//

import CoreLocation
import Foundation
import WeatherKit

class Garage: ObservableObject {
    @Published private(set) var myItems: [MyItem] = []
    let savePath = FileManager.documentsDirectory.appendingPathComponent("MyItems")
    
    init() {
        do {
            let data = try Data(contentsOf: savePath)
            myItems = try JSONDecoder().decode([MyItem].self, from: data)
        } catch {
            myItems = []
        }
    }
    
    func save() {
        do {
            let data = try JSONEncoder().encode(myItems)
            try data.write(to: savePath, options: [.atomic, .completeFileProtection])
        } catch {
            print("Unable to sabe data")
        }
    }
    
    func add(_ product: Product, capacity: Int) {
        let item = MyItem(id: UUID(), name: product.name, capacity: capacity, image: product.displayImage)
        myItems.insert(item, at: 0)
        save()
    }
    
    func delete(_ item: MyItem) {
        if let index = myItems.firstIndex(of: item) {
            myItems.remove(at: index)
            save()
        }
    }
}
