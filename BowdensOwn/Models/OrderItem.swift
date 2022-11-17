//
//  OrderItem.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 17/11/2022.
//

import Foundation

struct OrderItem: Identifiable, Codable, Equatable {
    var id: UUID
    var name: String
    var price: Double
}
