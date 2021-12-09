//
//  main.swift
//  gbCourseOne
//
//  Created by Evgeniy Kolesnikov on 23.11.2021.
//

import Foundation

var sportCarBMW = SportCar(markCar: "BMW", topSpped: 200, color: .black, carTypes: .sportcar, typeOfTransmission: .auto)
sportCarBMW.isEngineOn = true
sportCarBMW.startStopEngine()
var trunkCarMecedes = TrunkCar(markCar: "Mercedes", topSpped: 150, color: .purple, carTypes: .truck, typeOfTransmission: .manual)
trunkCarMecedes.trunkSpaceLeft = 400
trunkCarMecedes.cargo = 200
trunkCarMecedes.cargo = 50
trunkCarMecedes.cargo = 200
trunkCarMecedes.doorStae = .open
trunkCarMecedes.startStopEngine()
print(trunkCarMecedes.id)
var trunkCarBMW = TrunkCar(markCar: "BMW", topSpped: 180, color: .red, carTypes: .truck, typeOfTransmission: .variator)
trunkCarBMW.startStopEngine()
print(trunkCarBMW.id)
