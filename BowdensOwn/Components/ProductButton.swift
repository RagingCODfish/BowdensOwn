//
//  ProductButton.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 28/11/2022.
//

import Foundation

struct ProductButton: Hashable {
    var text: String
    var image: String
}

var allButtons = [
    ProductButton(text: "Description", image: "info"),
    ProductButton(text: "How to use", image: "text.bubble.fill"),
    ProductButton(text: "Video", image: "film.fill"),
    ProductButton(text: "Reviews", image: "exclamationmark.bubble.fill"),
    ProductButton(text: "Got a question?", image: "questionmark.circle.fill"),
    ProductButton(text: "Recommended Products", image: "bag.fill"),
                  ]

