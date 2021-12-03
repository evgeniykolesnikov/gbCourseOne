//
//  TrankCar.swift
//  gbCourseOne
//
//  Created by Evgeniy Kolesnikov on 03.12.2021.
//

import Foundation

final class TrunkCar: Car {

    //MARK: - Public property

    let powerReserve: Double
    var isLoadingPlatformStart = true

    //MARK: - Init

    init(powerReserve: Double,
         brandAuto: String,
         yearOfManufacture: Int,
         color: String,
         engineDisplacement: Double,
         interiorTypes: CarTypes,
         trunkState: TrunkState,
         doorState: CarDoorState,
         typeOfTransmission: Transmission)
    {
        self.powerReserve = powerReserve
        super.init(brandAuto, yearOfManufacture, color, engineDisplacement, interiorTypes, trunkState, doorState, typeOfTransmission)
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
                if !isLoadingPlatformStart {
                    print("You can go!")
                } else {
                    print("Lower the load platform")
                }
            } else {
                print("Press start to start the engine")
            }
        } else {
            print("Close the door!")
        }
    }
}
