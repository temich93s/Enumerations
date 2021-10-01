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


//MARK: Использование перечислений с инструкцией switch
print("\n//Использование перечислений с инструкцией switch")

switch direction {
case .east:
    print("east")
case .west:
    print("west")
default:
    print("another")
}


//MARK: Итерация по кейсам перечисления
print("\n//Итерация по кейсам перечисления")

enum Planet2: CaseIterable {
    case mercury, venus, earth, mars
}

print(Planet2.allCases.count)

for currentPlanet in Planet2.allCases {
    print(currentPlanet)
}


//MARK: Ассоциативные значения
print("\n//Ассоциативные значения")

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
print(productBarcode)

productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .upc(let number1, let number2, let number3, let number4):
    print("UPC: \(number1), \(number2), \(number3), \(number4)")
case .qrCode(let code):
    print("QR code: \(code)")
}

productBarcode = .upc(8, 85909, 51226, 3)

switch productBarcode {
case let .upc(number1, number2, number3, number4):
    print("UPC: \(number1), \(number2), \(number3), \(number4)")
case let .qrCode(code):
    print("QR code: \(code)")
}


//MARK: Исходные значения
print("\n//Исходные значения")

enum someEnum: Character {
    case numberZero = "0"
    case numberOne = "1"
}

var someNumber: someEnum = .numberOne
print(someNumber)
print(someNumber.rawValue)


//MARK: Неявно установленные исходные значения
print("\n//Неявно установленные исходные значения")

enum Planet3: String {
    case mercury, venus, earth, mars
}

var somePlanet3: Planet3 = .earth
print(somePlanet3.rawValue)

enum Planet4: Int {
    case mercury, venus, earth, mars
}

var somePlanet4: Planet4 = .earth
print(somePlanet4.rawValue)

enum Planet5: Int {
    case mercury = 2, venus, earth, mars
}

var somePlanet5: Planet5 = .earth
print(somePlanet5.rawValue)


//MARK: Инициализация через исходное значение
print("\n//Инициализация через исходное значение")

let myPlanet1 = Planet4(rawValue: 5)
print(myPlanet1)

let myPlanet2 = Planet4(rawValue: 2)
print(myPlanet2)
print(myPlanet2!)
