//
//  CarTypes.swift
//  gbCourseOne
//
//  Created by Evgeniy Kolesnikov on 09.12.2021.
//

import Foundation

 enum CarTypes {
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
     case truck
     case sportcar

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
         case .truck:
             return "Salon type Truck"
         case .sportcar:
             return "Salon type Truck"
         }
     }
 }
