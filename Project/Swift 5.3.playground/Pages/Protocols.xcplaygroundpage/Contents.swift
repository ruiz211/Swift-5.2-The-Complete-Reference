import Foundation

//Protocol Syntax

protocol MathOprerations {
    func addition(x: Int, y: Int) -> Int
    func rest(x: Int, y: Int) -> Int
    func product(x: Int, y: Int) -> Int
    func division(x: Int, y: Int) -> Int
}

class Operations: MathOprerations {
    var x: Int, y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
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
}

let ad = Operations(x: 12, y: 43)
print(ad.addition(x: ad.x, y: ad.y))



