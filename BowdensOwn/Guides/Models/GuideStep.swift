//
//  GuideStep.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 20/11/2022.
//

import Foundation

struct GuideStep: Identifiable, Codable, Hashable {
    var id = UUID()
    let title: String
    let paragraph: [String]
    let video: String
}
