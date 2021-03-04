import Foundation

//Protocol Syntax

protocol MathOprerations {
    func addition(x: Int, y: Int) -> Int
    func rest(x: Int, y: Int) -> Int
    func product(x: Int, y: Int) -> Int
    func division(x: Int, y: Int) -> Int
}

class Operations: MathOprerations {
    func addition(x: Int, y: Int) -> Int {
        return x + y
    }
    
    func rest(x: Int, y: Int) -> Int {
        return x - y
    }
    
    func product(x: Int, y: Int) -> Int {
        return x * y
    }
    
    func division(x: Int, y: Int) -> Int {
        return x / y
    }
    
    var x: Int, y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

let ad = Operations(x: 12, y: 43)
print(ad.addition(x: ad.x, y: ad.y))



//Property Requirements

protocol Fullname {
    var fullname: String { get }
}

struct Person: Fullname {
    var fullname: String {
        return "\(name) \(surname)"
    }
    
    var name: String
    var surname: String
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
}

let person = Person(name: "Charles", surname: "Xavier")
print(person.fullname)



//Method Requirements

protocol StaticProtocol {
    static func message(message: String) -> String
}

class Message: StaticProtocol {
    static func message(message: String) -> String {
        return "The message is: \(message)"
    }
}



//Mutating Method Requirements

protocol Togglable {
    mutating func toggle()
}

enum OnOff: Togglable {
    case On, Off
    
    mutating func toggle() {
        switch self {
        case .On:
            self = .Off
        case .Off:
            self = .On
        }
    }
}

var lightSwitch: OnOff = OnOff.Off
print(lightSwitch)
lightSwitch.toggle()
print(lightSwitch)
lightSwitch.toggle()
print(lightSwitch)



//Initializer Requirements

protocol RequireInitProtocol {
    init(number: Int)
}

class RequireInit: RequireInitProtocol {
    var number: Int
    
    required init(number: Int) {
        self.number = number
    }
}



//Protocols as Types

protocol RandomNumberGenerator {
    func random() -> Double
}

class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
        return lastRandom / m
    }
}


let roll = Dice(sides: 6, generator: LinearCongruentialGenerator())
print(roll.roll())



//Delegation

protocol DelegateProtocol {
    func call()
}

class First: DelegateProtocol {
    func call() {
        print("Back to Fisrt")
    }
    
    init() {
        print("First")
    }
    
    func callSecond() -> Void {
        let second: Second = Second()
        second.delegate = self
        second.callFirst()
    }
}

class Second {
    var delegate: DelegateProtocol?
    
    init() {
        print("Second")
    }
    
    func callFirst() -> Void {
        sleep(2)
        delegate?.call()
    }
}

let fisrt: First = First()
fisrt.callSecond()



//Adding Protocol Conformance with an Extension

protocol MathFunctions {
    func factorial(number: Int) -> Int
    
}

extension Int: MathFunctions{
    func factorial(number: Int) -> Int {
        if number < 0 { return 0 }
        else if number == 0 { return 1 }
        return number * factorial(number: number - 1)
    }
}



//Adopting a Protocol Using a Synthesized Implementation

struct Vector3D: Equatable {
    var x = 0.0, y = 0.0, z = 0.0
}

let twoThreeFour = Vector3D(x: 2.0, y: 3.0, z: 4.0)
let anotherTwoThreeFour = Vector3D(x: 2.0, y: 3.0, z: 4.0)
if twoThreeFour == anotherTwoThreeFour {
    print("These two vectors are also equivalent.")
}



//Protocol Composition

protocol Named {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

struct Birthday: Named, Aged {
    var name: String
    var age: Int
}

func wishHappyBirthday(to celebrator: Named & Aged) {
    print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
}

let birthdayPerson = Birthday(name: "Malcolm", age: 21)
wishHappyBirthday(to: birthdayPerson)



//
