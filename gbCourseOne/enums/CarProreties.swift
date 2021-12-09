//
//  CarProreties.swift
//  gbCourseOne
//
//  Created by Evgeniy Kolesnikov on 09.12.2021.
//

import Foundation

enum EngineState {
     case start
     case stop

     var name: String {
         switch self {
         case .start:
             return "Shift the gearbox to P position and press the start button"
         case .stop:
             return "Press the start button"
         }
     }
 }

 enum CarDoorState{
     case open
     case close

     var name: String {
         switch self {
         case .open:
             return "Door is open"
         case .close:
             return "Door is closed"
         }
     }
 }
 enum TrunkState {
     case full
     case empty

     var name: String {
         switch self {
         case .full:
             return "The trunk is full"
         case .empty:
             return "The trunk is empty"
         }
     }
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

enum Color {
    case black
    case yellow
    case red
    case white
    case purple

    var name: String {
        switch self {
        case .black:
            return "Черный"
        case .yellow:
            return "Черный"
        case .red:
            return "Черный"
        case .white:
            return "Черный"
        case .purple:
            return "Черный"
        }
    }
}
