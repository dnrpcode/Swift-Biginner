import Foundation


// Struct diubah tidak akan mempengaruhi yang lain
struct Resolution {
    var width = 0
    var height = 0
    
//    init() {
//        height = 32.0
//    }
}

let someResolution = Resolution()

let vga = Resolution(width: 640)
vga.width
someResolution.width

// class diubah akan mempengaruhi yang lain
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    
//    init() {
//        frameRate= 10
//    }
}

let someVideoMode = VideoMode()

someVideoMode.name = "dani"
someVideoMode.name

let someVideoMode2 = VideoMode()
someVideoMode2.name

struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    
    init(_ celsius: Double) {
            temperatureInCelsius = celsius
        }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
let bodyTemperature = Celsius(37.0)

struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)
