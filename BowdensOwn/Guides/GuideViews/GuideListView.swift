//
//  GuideListView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 20/11/2022.
//

import SwiftUI

struct GuideListView: View {
    let guideCategory: GuideCategory
    @State private var showingGuide = false
    

    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(guideCategory.guides) { guide in
                    NavigationLink {
                            GuideDetailView(guide: guide)
                    }label: {
                        GuideCardView(guide: guide)
                    }
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

struct GuideListView_Previews: PreviewProvider {
    static var previews: some View {
        GuideListView(guideCategory: .exampleGuideCategory)
    }
}
