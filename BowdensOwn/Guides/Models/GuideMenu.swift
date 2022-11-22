//
//  GuideMenu.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 19/11/2022.
//

import Foundation

class GuideMenu: ObservableObject, Codable {
    let sections: [GuideCategory]
    
    init() {
        do {
            let url = Bundle.main.url(forResource: "guideMenu", withExtension: "json")!
            let data = try Data(contentsOf: url)
            let jsonData = try JSONDecoder().decode(GuideMenu.self, from: data)
            
            sections = jsonData.sections
        } catch {
            fatalError("Guides had an error\(error)")
        }
    }
}
