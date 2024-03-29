//
//  APButton.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 18/11/2022.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    let color: String
    let width: CGFloat
    let height: CGFloat
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: width, height: height)
            .foregroundColor(.black)
            .background(Color(color))
            .cornerRadius(10)
    }
}

struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(title: "Test Title", color: "Green", width: 350, height: 50)
    }
}
