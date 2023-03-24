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
    @Environment(\.dynamicTypeSize) var sizeCategory
    let guide: Guide
    @State private var pageIndex = 0
    @State private var videoString = ""
    var body: some View {

        VStack {
            ForEach(guide.paragraph) { step in
                if videoString.isEmpty {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 195)
                        .foregroundColor(.blue)
                        .padding(.horizontal, 24)
                } else {
                    VideoView(videoID: videoString)
                        .frame(maxHeight: 195.0)
                        .cornerRadius(12)
                        .padding(.horizontal, 24)
                }

                TabView(selection: $pageIndex) {
                    ForEach(step.paragraphs.indices, id: \.self) { index in
                        ScrollView {
                            VStack {
                                Text(step.paragraphs[index].text)
                                    .dynamicTypeSize(...DynamicTypeSize.accessibility2)
                            }
                            .tag(index)
                        }
                        .padding(.bottom, 45)
                    }
                }
                .padding()
                .onAppear {
                    if pageIndex == 0 {
                        videoString = step.paragraphs[0].video
                    }
                }
                .onChange(of: pageIndex) { newValue in
                    videoString = step.paragraphs[newValue].video
                    print("\(pageIndex): \(videoString)")
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
            .navigationTitle(guide.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}




struct GuideDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GuideDetailView(guide: .exampleGuide)
            .preferredColorScheme(.dark)
    }
}
