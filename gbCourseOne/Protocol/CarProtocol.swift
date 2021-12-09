//
//  Car.swift
//  gbCourseOne
//
//  Created by Evgeniy Kolesnikov on 09.12.2021.
//

import Foundation

protocol CarProtocol {
    
    var id: Int { get }
    var topSpeed: Double { get }
    var color: Color { get }
    var carTypes: CarTypes { get }
    var typeOfTransmission: Transmission { get }
    var markCar: String { get }

    var cargo: Int {get set}
    var isEngineOn: Bool { get set }
    var isWindowOpen: Bool { get set}
    var doorStae: CarDoorState { get set }
    var trunk: TrunkState { get set }
    var trunkSpaceLeft: Int { get set }

    mutating func lockUnlockDoors()
    mutating func lockUnlockWindow()
    mutating func unloadCargo()
    mutating func startStopEngine()
   }

extension CarProtocol {
    
    mutating func lockUnlockWindow() {
        isWindowOpen.toggle()
        print("Окна \(isEngineOn ? "закрыты" : "открыты")")
    }
    
    mutating func lockUnlockDoors() {
        if doorStae == .open {
            doorStae = .close
        } else {
            doorStae = .open
        }
        
        print("Двери \(doorStae == .open ? "закрыты" : "открыты")")
    }
    
    mutating func startStopEngine() {
        if !isEngineOn {
            if doorStae == .open {
                print("Закройте двери")
                return
            }
        }
        isEngineOn.toggle()
        print("Двигатель \(isEngineOn ? "запущен" : "остановлен")")
        
    }
    mutating func unloadCargo() {
        if trunk == .full {
            cargo = 0
            print("Багажник разгружен")
        } else {
            print("В багажнике ничего не было")
        }
    }
}
