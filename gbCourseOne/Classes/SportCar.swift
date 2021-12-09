//
//  SportCar.swift
//  gbCourseOne
//
//  Created by Evgeniy Kolesnikov on 09.12.2021.
//

import Foundation

final class SportCar: CarProtocol {

    // MARK: - Public Properties

    let id: Int = CarUid.uid
    let topSpeed: Double
    let color: Color
    let carTypes: CarTypes
    let markCar: String

    var typeOfTransmission: Transmission = .auto
    var isEngineOn: Bool = false
    var isWindowOpen: Bool = false
    var doorStae: CarDoorState = .close
    var trunk: TrunkState = .empty
    var trunkSpaceLeft: Int = 0

    // MARK: - Computed Properties

    var cargo: Int {
        get { return trunkSpaceLeft }
        set {
            if trunkSpaceLeft - newValue < 0 {
                print("Больше не помещается")
                return
            }
            trunkSpaceLeft -= newValue
            print("Груз объемом \(newValue)в машине")
        }
    }

    //MARK: - Init

    init(markCar:String, topSpped: Double, color: Color, carTypes: CarTypes, typeOfTransmission: Transmission) {
        self.topSpeed = topSpped
        self.color = color
        self.carTypes = carTypes
        self.typeOfTransmission = typeOfTransmission
        self.markCar = markCar
        CarUid.uid = CarUid.uid + 1
    }
}


