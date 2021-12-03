//
//  class.swift
//  gbCourseOne
//
//  Created by Evgeniy Kolesnikov on 02.12.2021.
//

import Foundation

//MARK: CarClass

class Car {

    //MARK: - Public property

    let brandAuto: String
    let color: String
    let engineDisplacement: Double
    let yearOfManufacture: Int

    var interiorTypes: CarTypes
    var trunkState: TrunkState
    var doorState: CarDoorState
    var typeOfTransmission: Transmission
    var isWindowOpen = false
    var isEngineOn = false


    //MARK: - Init

    init(_ brandAuto: String = "BMW",
         _ yearOfManufacture: Int = 2021,
         _ color: String = "Red",
         _ engineDisplacement: Double = 500,
         _ interiorTypes: CarTypes = .sportcar,
         _ trunkState: TrunkState = .empty,
         _ doorState: CarDoorState = .close,
         _ typeOfTransmission: Transmission = .auto)
    {
        self.brandAuto = brandAuto
        self.color = color
        self.engineDisplacement = engineDisplacement
        self.yearOfManufacture = yearOfManufacture
        self.interiorTypes = interiorTypes
        self.doorState = doorState
        self.trunkState = trunkState
        self.typeOfTransmission = typeOfTransmission
    }

    //MARK: - Public methods

    func chekingForTheStart() {
        if doorState == .close {
            if isEngineOn {
                print("You can go!")
            } else {
                print("Press start to start the engine")
            }
        } else {
            print("Close the door!")
        }
    }

    func openDoors() {
        doorState = .open
    }

    func closeDoors() {
        doorState = .close
    }

    func openWindow() {
        if isWindowOpen {

            print("Close the window for a comfortable ride")
        }
    }
    func closeWindow(){
    }
}






