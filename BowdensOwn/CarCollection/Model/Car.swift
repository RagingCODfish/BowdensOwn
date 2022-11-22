//
//  Car.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 21/11/2022.
//

import Foundation

struct Car: Identifiable, Codable, Hashable {
    var id = UUID()
    let name: String
    let detail: String
    let caption: String
    let engineType: String
    let cylinders: Int
    let cubicCapacity: String
    let aspiration: String
    let horsePower: String
    let transmissionType: String
    let numberOfGears: Int
    let frontSuspensionType: String
    let rearSuspensionType: String
    let frontBrakeType: String
    let rearBrakeType: String
    let wheelType: String
    let wheelSize: String
    let tyreType: String
    let images: [String]
    
    static let carExample = Car(name: "The Sandman", detail: "1976 Holden Sandman Panelvan", caption: "A 70's icon renowned for loving a good time.", engineType: "Holden V8", cylinders: 8, cubicCapacity: "308", aspiration: "Rochester Quadrajet", horsePower: "216", transmissionType: "M21 close ratio manual", numberOfGears: 4, frontSuspensionType: "Independent with wishbones, coil springs, tubular shocks and anti-roll bar", rearSuspensionType: "Live axle with leaf springs", frontBrakeType: "Powered discs.", rearBrakeType: "Drums.", wheelType: "GTS Rally Wheels", wheelSize: "14\" x 6\"", tyreType: "Sticky", images: ["sandman1", "sandman2", "sandman3"])
}
