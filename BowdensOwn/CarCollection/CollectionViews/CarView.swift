//
//  CarView.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 21/11/2022.
//

import SwiftUI

struct CarView: View {
    let car: Car
    
    @State var hasScrolled = false
    @State var show = false
    
    var body: some View {
        ScrollView {

                Text(car.name)
                    .font(.largeTitle)
                Text(car.detail)
                Text(car.caption)
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(car.images, id: \.self) { image in
                            Image(image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 160)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding()
                        }
                    }
                }
                
                VStack {
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {

                            
                            HStack {
                                Text("Engine Type:").bold()
                                Text("\(car.engineType)")
                            }
                            
                            HStack {
                                Text("Number of cylinders:").bold()
                                Text("\(car.cylinders)")
                            }
                            
                            HStack {
                                Text("Cubic Capacity:").bold()
                                Text(car.cubicCapacity)
                            }
                            
                            HStack {
                                Text("Aspiration:").bold()
                                Text("\(car.aspiration)")
                            }
                            
                            HStack {
                                Text("Horse Power:").bold()
                                Text(car.horsePower)
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Transmission Type").bold()
                                Text(car.transmissionType)
                            }
                            
                            HStack {
                                Text("Number of Gears:").bold()
                                Text("\(car.numberOfGears)")
                            }
                        }
                    }
                    
                    Divider()
                    
                    VStack(alignment: .center) {
                        VStack {
                            Text("Front Suspension Type").bold().underline()
                            Text(car.frontSuspensionType)
                                .multilineTextAlignment(.center)
                        }
                        
                        VStack {
                            Text("Rear Suspension Type").bold().underline()
                            Text(car.rearSuspensionType)
                        }
                    }
                    .padding(.horizontal)
                    
                    Divider()
                    
                    VStack(alignment: .center) {
                        HStack {
                            VStack {
                                Text("Front Brake Type").bold().underline()
                                Text(car.frontBrakeType)
                            }
                            Spacer()
                            
                            VStack {
                                Text("Rear Brake Type").bold().underline()
                                Text(car.rearBrakeType)
                            }
                        }
                        
                        HStack {
                            VStack {
                                Text("Wheel Type").bold().underline()
                                Text(car.wheelType)
                            }
                            Spacer()
                            
                            VStack(alignment: .leading) {
                                Text("Wheel Size").bold().underline()
                                Text(car.wheelSize)
                            }
                        }

                        
                        if !car.tyreType.isEmpty {
                            VStack {
                                Text("Tyre Type").bold().underline()
                                Text(car.tyreType)
                            }
                        }
                    }
                    .padding(.horizontal)
                    
                }
            }
            .navigationTitle(car.name)
//        }
    }
}

struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView(car: .carExample)
            
    }
}
