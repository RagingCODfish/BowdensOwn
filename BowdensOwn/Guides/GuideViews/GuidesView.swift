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
		NavigationStack {
			VStack {
					ForEach(guideMenu.sections) { guide in
						NavigationLink {
							GuideListView(guideCategory: guide)
						} label: {
							VStack {
								Text("\(guide.name)")
									.font(.headline)
									.foregroundColor(.primary)
									.padding(.top)
								
								Image(guide.displayImage)
									.resizable()
									.aspectRatio(contentMode: .fit)
									.cornerRadius(30)
								
								Spacer()
							}
							.frame(maxWidth: .infinity)
							.background(
								RoundedRectangle(cornerRadius: 30, style: .continuous)
									.fill(LinearGradient(colors: [.blue, .blue.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
							)
							.padding()
						}
					}
				}
            NavigationLink {
                CarCollectionView()
            } label: {
                VStack {
                    Text("Bowdens Collections")
                        .font(.headline)
                        .foregroundColor(.primary)
                        .padding(.top)

                    Image(systemName: "plus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(30)

                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(LinearGradient(colors: [.blue, .blue.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
                )
                .padding()
            }
				.padding([.horizontal, .bottom])
				.navigationTitle("Guides")
				//            .navigationBarTitleDisplayMode(.automatic)
		}
    }
}

struct GuidesView_Previews: PreviewProvider {
    static var previews: some View {
        GuidesView()
            .environmentObject(GuideMenu())
			.preferredColorScheme(.dark)
    }
}
