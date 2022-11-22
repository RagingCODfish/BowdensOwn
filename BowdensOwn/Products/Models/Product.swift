//
//  Product.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 15/11/2022.
//

import Foundation

struct Product: Identifiable, Codable, Equatable {
    var id = UUID()
    var name: String
    var caption: String
    var description: String
    var size: [Int]
    var price: [Double]
    var image: [String]
    var displayImage: String
    var contents: [String]
    

    static let example = Product(id: UUID(), name: "Nanolicious Wash", caption: "Our dream wash, created for the fussiest fanatics", description: "A couple of years ago we sat down with our chemists and began the wish list for a dream wash. This wash needed to be super lubricating, have amazing cleaning power, gentle on delicate modern paints and hands, be a true protective wash suitable for the Aussie environmental conditions and work with modern nano based paint protection coatings. It took a couple of years to get right, but what we created is one of the best and most unique washes on the planet.", size: [125, 500, 2000, 5000, 20000], price: [7.99, 22.99, 64.99, 134.99, 429.99], image: ["BOSNOW1000"], displayImage: "BOSNOW1000", contents: [""])
}
