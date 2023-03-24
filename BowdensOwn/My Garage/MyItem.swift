//
//  MyItem.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 24/11/2022.
//

import Foundation

struct MyItem: Identifiable, Codable, Equatable {
    var id: UUID
    var name: String
    var capacity: Int
    var image: String
}
