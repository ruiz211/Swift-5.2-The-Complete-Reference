import Foundation

class Grandfather {
    var name: String
    var surname: String?
    
    init(name: String) {
        self.name = name
    }
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
    
    func printName() -> Void {
        print(self.name)
    }
    
    func printFullName() -> Void {
        print("\(name) \(surname ?? "No Surname provided")")
    }
}

class Father: Grandfather {
    
    func sayHi() -> String {
        return "Hi! My name is \(name)"
    }
}

class Son: Father {
    
    override func sayHi() -> String {
        super.printName()
        return "Hi! I'm the son. My name is \(name)"
    }
}

let gf = Grandfather(name: "Jose I")
//gf.printName()

let f = Father(name: "Jose II")
//f.printName()
//print(f.sayHi())


let s = Son(name: "Jose III")
//s.printName()
print(s.sayHi())
