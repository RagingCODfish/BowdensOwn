//
//  GuideDetailView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 20/11/2022.
//

import AVKit
import SwiftUI
import WebKit

struct GuideDetailView: View {
    let guide: Guide
    var body: some View {
            ScrollView {
                ForEach(guide.paragraph, id: \.self) { step in
                    VStack(alignment: .leading) {
                        Text(step.title)
                            .font(.title).bold()
                            .padding(.horizontal)
                            
                        ForEach(step.paragraph, id: \.self) { paragraph in
                                    Text(paragraph)
                                        .font(.body)
  
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .multilineTextAlignment(.leading)
                            .background(Color(.systemTeal).opacity(0.3))
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
                            .padding(.horizontal)
                        

//                        if !step.video.isEmpty {
//                            VideoView(videoID: step.video)
//                                .frame(width: 360, height: 300)
//                                .cornerRadius(12)
//                                .padding(.horizontal, 24)
//                        }
                    }
                    .padding()
                }
            }
            .navigationTitle(guide.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct GuideDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GuideDetailView(guide: .exampleGuide)
    }
}
