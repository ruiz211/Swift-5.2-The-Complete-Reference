import Foundation

struct Celsius {
    var temperatureInCelsius: Double
    
    init(fromCelsius celsius: Double) {
        temperatureInCelsius = celsius
    }
    
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}

var temp = Celsius(fromCelsius: 12)
print(temp.temperatureInCelsius)


//Optionals ans Constants
class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}

let survey = SurveyQuestion(text: "Hi?")
survey.ask()
survey.response = "Hi"
print(survey.response!)




//Initializer Delegation for Value Types

struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}




//Class Inheritance and Initialization

class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheel(s)"
    }
    
    init() {
    }
}

class Bicycle: Vehicle {
    
    override init() {
        super.init()
        numberOfWheels = 2
    }
}

class Hoverboard: Vehicle {
    var color: String
    init(color: String) {
        self.color = color
        super.init()
    }
    override var description: String {
        return "\(super.description) in a beautiful \(color)"
    }
}


let vehicle = Vehicle()
print(vehicle.description)

let bicycle = Bicycle()
print(bicycle.description)

let hover = Hoverboard(color: "blue")
//hover.numberOfWheels = 4
print(hover.description)

//hasta aquí llegué...
