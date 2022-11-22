//
//  GuidesView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 6/9/2022.
//

import SwiftUI

struct GuidesView: View {
    
    @EnvironmentObject var guideMenu: GuideMenu

    var body: some View {
        NavigationView {
            VStack {
                ForEach(guideMenu.sections) { guide in
                    NavigationLink {
                        GuideListView(guideCategory: guide)
                    } label: {
                        VStack(alignment: .leading) {
                            Text(guide.name)
                                .fontWeight(.semibold)
                                .layoutPriority(1)
                                .foregroundColor(.primary)
                            
                            Group {
                                if guide.guides.count == 1 {
                                    Text("\(guide.guides.count) guide")
                                } else {
                                    Text("\(guide.guides.count) guides")
                                }
                            }
                            .foregroundColor(.secondary)
                            .font(.caption)
                            
                            Image(systemName: "\(guide.displayImage)")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 250)
                                .foregroundColor(.primary)
                        }
                        
                    }
                }
            }
            .navigationTitle("Guides")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct GuidesView_Previews: PreviewProvider {
    static var previews: some View {
        GuidesView()
            .environmentObject(GuideMenu())
    }
}
