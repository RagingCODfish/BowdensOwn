//
//  CarCollectionView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 21/11/2022.
//

import SwiftUI

struct CarCollectionView: View {
    @EnvironmentObject var collection: CarCollectionMenu
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(collection.collection, id: \.self) { car in
                    NavigationLink {
                        CarView(car: car)
                    } label: {
                        HStack {
                            Image(car.images[0])
                                .resizable()
                                .scaledToFit()
                                .frame(width: 180)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            VStack(alignment: .leading) {
                                Text(car.name)
                                    .font(.callout)
                                Text(car.caption)
                                    .font(.caption2)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Bowdens Collection")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
        }
    }
}

struct CarCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CarCollectionView()
            .environmentObject(CarCollectionMenu())
    }
}
