//
//  SporctCar.swift
//  gbCourseOne
//
//  Created by Evgeniy Kolesnikov on 03.12.2021.
//

import Foundation

final class SportCar: Car {

    //MARK: - Public property

    let maxSpeed: Int
    let upToHundred: Double
    let isSportModeOn = false

    //MARK: - Init

    init(maxSpeed: Int,
         upToHundred: Double,
         brandAuto: String,
         yearOfManufacture: Int,
         color: String,
         engineDisplacement: Double,
         interiorTypes: CarTypes,
         trunkState: TrunkState,
         doorState: CarDoorState,
         typeOfTransmission: Transmission)
    {
        self.maxSpeed = maxSpeed
        self.upToHundred = upToHundred
        super.init(brandAuto,
                   yearOfManufacture,
                   color,
                   engineDisplacement,
                   interiorTypes,
                   trunkState,
                   doorState,
                   typeOfTransmission)

    }

    //MARK: - Public methods

    override func closeWindow() {
        if isWindowOpen {
            isWindowOpen.toggle()
        }
    }
    override func chekingForTheStart() {
        if doorState == .close {
            if isEngineOn {
                if !isSportModeOn {
                    print("You can go!")
                } else {
                    print("Turn Sport mod ON")
                }
            } else {
                print("Press start to start the engine")
            }
        } else {
            print("Close the door!")
        }
    }    
}
