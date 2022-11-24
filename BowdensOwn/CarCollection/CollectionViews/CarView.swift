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
            
            GroupBox {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Engine Type").bold().underline()
                        Text("\(car.engineType)")
                        Text("Cubic Capacity").bold().underline()
                        Text(car.cubicCapacity)
                        Text("Horse Power").bold().underline()
                        Text(car.horsePower)
                        Text("Number of Gears").bold().underline()
                        Text("\(car.numberOfGears)")
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("Number of cylinders").bold().underline()
                        Text("\(car.cylinders)")
                        Text("Aspiration").bold().underline()
                        Text("\(car.aspiration)")
                        Text("Transmission Type").bold().underline()
                        Text(car.transmissionType)
                        Text("")
                        Text("")
                    }
                }
            }
            .padding(.horizontal)
            
            
            GroupBox {
                VStack(alignment: .center) {
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
            
            GroupBox {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Wheel Type").bold().underline()
                        Text(car.wheelType)
                        Text("Wheel Size").bold().underline()
                        Text(car.wheelSize)
                        if !car.tyreType.isEmpty {
                            Text("Tyre Type").bold().underline()
                            Text(car.tyreType)
                        }
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("Front Brake Type").bold().underline()
                        Text(car.frontBrakeType)
                        Text("Rear Brake Type").bold().underline()
                        Text(car.rearBrakeType)
                        
                    }
                }
            }
            .padding(.horizontal)
        }
        .navigationTitle(car.name)
        
    }
}

struct CarView_Previews: PreviewProvider {
    static var previews: some View {
        CarView(car: .carExample)
        
    }
}
