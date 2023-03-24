//
//  GuideStep.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 20/11/2022.
//

import Foundation

struct Paragraph: Codable, Hashable, Equatable {
    let title: String
    let text: String
    let video: String
}

struct GuideStep: Identifiable, Codable {
    var id = UUID()
    let paragraphs: [Paragraph]
}
