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



