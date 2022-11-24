//
//  MyGarageView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 24/11/2022.
//

import SwiftUI

struct MyGarageView: View {
    var body: some View {
        NavigationView {
            VStack {
                Button {
                    EmptyView()
                } label: {
                    Text("Go to my products")
                }
            }
            .navigationTitle("My Garage")
        }
    }
}

struct MyGarageView_Previews: PreviewProvider {
    static var previews: some View {
        MyGarageView()
    }
}
