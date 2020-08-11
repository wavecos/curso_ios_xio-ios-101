import UIKit

var sueldo = 5000 // Se infiere como entero
var gravedad = 9.81
var saludo = "hola"
var esSabado = false

var x: Int
x = 0

saludo

print("hola")

var total = 0

for idx in 1...100 {
    total = total + idx
    print(idx)
}

total

func dummy(x: Int) {
    print(x)
}

// Opcionales

var temperature : Int?

temperature = 70

if temperature != nil {
    print(temperature!)
}

// enums
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
    case letterA = "A"
}

let carX = ASCIIControlCharacter.letterA

print("hola\(carX.rawValue)mundo")

enum Planet: Int {
    case mercury = 2, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let planeta = Planet.earth
planeta.rawValue

enum CompassPoint: String {
    case north = "norte"
    case south = "sud"
    case east = "este"
    case west = "oeste"
}

let puntoC = CompassPoint.east

puntoC.rawValue

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(name: String)
}




enum UYLNotificationRepeatInterval: String {
  case none
  case minute
  case hour
  case day
  case week

  init?(index: Int) {
    switch index {
      case 0: self = .none
      case 1: self = .minute
      case 2: self = .hour
      case 3: self = .day
      case 4: self = .week
      default: return nil
    }
  }
}


// extensions


























