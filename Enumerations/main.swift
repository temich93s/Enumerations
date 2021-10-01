//
//  main.swift
//  Enumerations
//
//  Created by 2lup on 01.10.2021.
//

import Foundation

print("Hello, World!")


//MARK: Синтаксис перечислений
print("\n//Синтаксис перечислений")

enum CompassPoint {
    case north
    case east
    case south
    case west
}

enum Planet {
    case mercury, venus, earth, mars
}

var direction = CompassPoint.west
direction = .east

var newPlanet = Planet.mercury
newPlanet = .earth
