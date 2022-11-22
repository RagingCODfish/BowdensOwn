//
//  GuideCategory.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 19/11/2022.
//

import Foundation

struct GuideCategory: Codable, Identifiable {
    var id = UUID()
    var name: String
    var displayImage: String
    var guides: [Guide]
    
    static let exampleGuideCategory = GuideCategory(name: "Exterior", displayImage: "exteriorguideimage", guides: [Guide.exampleGuide])
}
