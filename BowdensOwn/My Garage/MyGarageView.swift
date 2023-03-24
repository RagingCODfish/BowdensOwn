//
//  MyGarageView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 24/11/2022.
//

import SwiftUI
import WeatherKit

struct MyGarageView: View {
    @EnvironmentObject var garage: Garage
    var body: some View {
        NavigationStack {
            List (garage.myItems) { item in
                Label {
                    Text(item.name)
                } icon: {
                    Image(item.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                }
                    .swipeActions {
                        Button(role: .destructive) {
                            withAnimation {
                                garage.delete(item)
                            }
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
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
