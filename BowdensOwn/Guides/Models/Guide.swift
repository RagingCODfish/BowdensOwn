//
//  Guide.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 19/11/2022.
//

import Foundation

struct Guide: Identifiable, Codable {
    var id: String { name }
    var name: String
    var caption: String
    var displayImage: String
    var paragraph: [GuideStep]
    
    static let exampleGuide = Guide(
        name: "Your new car detailing guide.",
        caption: "So you’ve just bought a new car and you want to look after it using the Bowden’s Own range of products. This article will take an in-depth look at all aspects of cleaning and maintaining your new car.",
        displayImage: "newcarguide", paragraph: [
            GuideStep(id: UUID(), paragraphs: [Paragraph(title: "Test Title", text: "So you’ve just bought a new car and you want to look after it using the Bowden’s Own range of products. This article will take an in-depth look at all aspects of cleaning and maintaining your new car.So you’ve just bought a new car and you want to look after it using the Bowden’s Own range of products. This article will take an in-depth look at all aspects of cleaning and maintaining your new car.So you’ve just bought a new car and you want to look after it using the Bowden’s Own range of products. This article will take an in-depth look at all aspects of cleaning and maintaining your new car.", video: "https://youtu.be/571rkMymBn0")])
        ]
    )
}


