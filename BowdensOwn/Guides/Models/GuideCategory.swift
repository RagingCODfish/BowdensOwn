//
//  GuideCategory.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 19/11/2022.
//

import Foundation

struct GuideCategory: Codable, Identifiable {
    var id: String { name }
    var name: String
    var displayImage: String
    var guides: [Guide]
    
    static let exampleGuideCategory = GuideCategory(name: "Exterior", displayImage: "newcarimage1", guides: [Guide.exampleGuide])
}
