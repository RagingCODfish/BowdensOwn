//
//  Order.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 16/11/2022.
//

import SwiftUI

class Order: ObservableObject {
    @Published var items = [Product]()
    
    var total: Double {
        if items.count > 0 {
            return items.reduce(0) { $0 + $1.price[0] }
        } else {
            return 0
        }
    }
    
    func add(item: Product) {
        items.append(item)
    }
    
    func remove(item: Product) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
    
    func fetchBadgeNumber() -> Int {
        return items.count
    }
}
