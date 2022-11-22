//
//  GuideCardView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 20/11/2022.
//

import SwiftUI

struct GuideCardView: View {
    var guide: Guide
    
    let colors = [UIColor.systemRed,
                  UIColor.systemBlue,
                  UIColor.systemCyan,
//                  UIColor.systemGray,
                  UIColor.systemMint,
                  UIColor.systemPink,
                  UIColor.systemTeal,
//                  UIColor.systemBrown,
                  UIColor.systemGreen,
                  UIColor.systemIndigo,
                  UIColor.systemOrange,
                  UIColor.systemPurple,
                  UIColor.systemYellow
    ]
    
    var body: some View {
        let color1 = colors[Int.random(in: 0...colors.count - 1)]
//        let color2 = colors[Int.random(in: 0...colors.count - 1)]
        VStack(alignment: .center, spacing: 8) {
            Image(guide.displayImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140)
                .cornerRadius(20)
            Spacer()
                Text(guide.name)
                    .fontWeight(.semibold)
                    .layoutPriority(1)
                    .multilineTextAlignment(.leading)
                    .lineLimit(4)
                
        }
        .padding()
        .frame(maxWidth: 160)
        .frame(height: 230)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .background(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .fill(LinearGradient(colors: [Color(color1).opacity(01), Color(color1)], startPoint: .topLeading, endPoint: .bottomTrailing))
                .rotation3DEffect(.degrees(10), axis: (x: 0, y: 1, z: 0), anchor: .bottomTrailing)
                .rotationEffect(.degrees(180))
                .padding(.trailing, 40)
        )
        .padding(.vertical, 10)
    }
}

struct GuideCardView_Previews: PreviewProvider {
    static var previews: some View {
        GuideCardView(guide: .exampleGuide)
    }
}
