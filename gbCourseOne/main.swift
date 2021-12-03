//
//  main.swift
//  gbCourseOne
//
//  Created by Evgeniy Kolesnikov on 23.11.2021.
//

import Foundation

let carDefault = Car()
var carSportMercedes = SportCar(maxSpeed: 380,
                                upToHundred: 3.2,
                                brandAuto: "Mercedes",
                                yearOfManufacture: 2019,
                                color: "White",
                                engineDisplacement: 1200,
                                interiorTypes: .sportcar,
                                trunkState: .empty,
                                doorState: .close,
                                typeOfTransmission: .auto)

print(carSportMercedes.upToHundred)
carSportMercedes.doorState = .open
carSportMercedes.chekingForTheStart()

var carTrunkBMW = TrunkCar(powerReserve: 900,
                           brandAuto: "BMW",
                           yearOfManufacture: 2010,
                           color: "Grey",
                           engineDisplacement: 2500,
                           interiorTypes: .truck,
                           trunkState: .full,
                           doorState: .close,
                           typeOfTransmission: .manual)

print(carTrunkBMW.powerReserve)
carTrunkBMW.isEngineOn.toggle()
carTrunkBMW.isLoadingPlatformStart.toggle()
carTrunkBMW.chekingForTheStart()
