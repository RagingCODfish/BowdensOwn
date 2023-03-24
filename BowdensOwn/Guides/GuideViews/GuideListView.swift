//
//  GuideListView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 20/11/2022.
//

import SwiftUI

struct GuideListView: View {
	let guideCategory: GuideCategory
	
	var body: some View {
		List {
			ForEach(guideCategory.guides) { guide in
				NavigationLink {
					GuideDetailView(guide: guide)
				} label: {
					HStack {
						Image(guide.displayImage)
							.resizable()
							.scaledToFit()
							.frame(width: 120)
							.cornerRadius(10)
						Text(guide.name)
					}
				}
			}
			.navigationTitle(guideCategory.name)
		}
		.listStyle(.plain)
	}
}

struct GuideListView_Previews: PreviewProvider {
	static var previews: some View {
		GuideListView(guideCategory: .exampleGuideCategory)
	}
}
