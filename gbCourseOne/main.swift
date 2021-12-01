//
//  main.swift
//  gbCourseOne
//
//  Created by Evgeniy Kolesnikov on 23.11.2021.
//

import Foundation

//print("Hello, World!")

enum EngineState {
    case start
    case stop
}

enum WindowsState {
    case open
    case close
}

enum TrunkState {
    case full
    case empty
}

enum Transmission {
    case auto
    case manual
    case variator

    var name: String {
        switch self {
        case .auto:
            return "Automatic transmission"
        case .manual:
            return "Manual transmission"
        case .variator:
            return "Variator transmission"
        }
    }
}

enum CarInteriorTypes {
    case sedan
    case hatchback
    case universal
    case liftback
    case coupe
    case convertible
    case roadster
    case targa
    case limousine
    case stretch
    case suv
    case crossover
    case pickup
    case van
    case minivan
    case minibus
    case bus

    var name: String {
        switch self {
        case .sedan:
            return "Salon type Sedan"
        case .hatchback:
            return "Salon type Hatchback"
        case .universal:
            return "Salon type Universal"
        case .liftback:
            return "Salon type Liftback"
        case .coupe:
            return "Salon type Coupe"
        case .convertible:
            return "Salon type Convertible"
        case .roadster:
            return "Salon type Roadster"
        case .targa:
            return "Salon type Targa"
        case .limousine:
            return "Salon type Limousine"
        case .stretch:
            return "Salon type Stretch"
        case .suv:
            return "Salon type SUV"
        case .crossover:
            return "Salon type Crossover"
        case .pickup:
            return "Salon type Pickup"
        case .van:
            return "Salon type Van"
        case .minivan:
            return "Salon type Minivan"
        case .minibus:
            return "Salon type Minibus"
        case .bus:
            return "Salon type Bus"
        }
    }
}

struct Car {
    let brandAuto: String
    var color: String
    mutating func paintingCar(c:String) {
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "gray":
            self.color = "gray"
        case "blue":
            self.color = "blue"
        case "yellow":
            self.color = "yellow"
        case "purple":
            self.color = "purple"
        case "green":
            self.color = "green"
        default:
            print("Input error.")
        }
    }
    let yearOfManufacture: Int
    let typeOfTransmission: Transmission
    let engineDisplacement: Double
    let interiorTypes: CarInteriorTypes
    var trunkVolume: Double {
        willSet {
            if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("\(brandAuto) trunk free: \(space)")
            } else { print("Input error or \(brandAuto) trunk is full.")}
        }
    }
    var engineState: EngineState {
        willSet {
            if newValue == .start {
                print ("\(brandAuto) engine is on")
            } else {print("\(brandAuto) engine is off")}
        }
    }
    var windowsState: WindowsState {
        willSet {
            if newValue == .open {
                print("\(brandAuto) windows are open")
            } else { print("\(brandAuto) windows are close") }
        }
    }
    var trunkState: TrunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brandAuto) trunck is empty")
    }
}

struct Truck {
    let brandTruck: String
    var color: String
    mutating func paintingCar(c:String) {
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "red":
            self.color = "red"
        case "blue":
            self.color = "blue"
        default:
            print("Input error.")
        }
    }
    let yearOfManufacture: Int
    let typeOfTransmission: Transmission
    let engineDisplacement: Double
    var trunkVolume: Double {
        willSet {
            if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("\(brandTruck) trunk free: \(space)")
            } else { print("Input error or \(brandTruck) trunk is full.")}
        }
    }
    var engineState: EngineState {
        willSet {
            if newValue == .start {
                print ("\(brandTruck) engine is on")
            } else {print("\(brandTruck) engine is off")}
        }
    }
    var windowsState: WindowsState {
        willSet {
            if newValue == .open {
                print("\(brandTruck) windows are open")
            } else { print("\(brandTruck) windows are close") }
        }
    }
    var trunkState: TrunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brandTruck) trunck is empty")
    }
}

var car1 = Car(brandAuto: "Lada", color: "Grey", yearOfManufacture: 1986, typeOfTransmission: .manual, engineDisplacement: 150, interiorTypes: .sedan, trunkVolume: 300, engineState: .start, windowsState: .close, trunkState: .empty)
var car2 = Car(brandAuto: "Porsche", color: "Red", yearOfManufacture: 2020, typeOfTransmission: .auto, engineDisplacement: 1200, interiorTypes: .roadster, trunkVolume: 300, engineState: .start, windowsState: .close, trunkState: .full)


var truck1 = Truck(brandTruck: "Ford", color: "Blue", yearOfManufacture: 2010, typeOfTransmission: .manual, engineDisplacement: 600, trunkVolume: 5000, engineState: .start, windowsState: .open, trunkState: .empty)
var truck2 = Truck(brandTruck: "Mercedes", color: "White", yearOfManufacture: 2018, typeOfTransmission: .auto, engineDisplacement: 1000, trunkVolume: 6000, engineState: .stop, windowsState: .open, trunkState: .empty)
//var truck1 = Truck(brandTruck: "Mercedes",  color: "clear", yearOfManufacture: 2012, trunkVolume: 100000.0, engineState: .start, windowsState: .open, trunkState: .full)
//var truck2 = Truck(brandTruck: "Chevrolet",  color: "clear", yearOfManufacture: 2013, trunkVolume: 150000.0, engineState: .start, windowsState: .close, trunkState: .empty)
//
//
car1.engineState = .start
car1.paintingCar(c: "red")
car1.trunkVolume = 30.0
car2.trunkVolume = 99.0
car2.trunkVolume = 254.9
car2.emptyTrunck()
car2.windowsState = .open
car2.paintingCar(c: "black")

truck1.engineState = .start
truck1.windowsState = .close
truck2.windowsState = .open
truck2.engineState = .stop
truck2.trunkVolume = 5500
truck2.paintingCar(c: "white")

print(car1)
print(car2)
print(truck1)
print(truck2)


