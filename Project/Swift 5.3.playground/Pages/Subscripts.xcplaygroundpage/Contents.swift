import Foundation

struct Number {
    var number: Int
    subscript(index: Int) -> Int {
        get {
            return number
        }
        set {
            number = newValue
        }
    }
    
    
}

var num = Number(number: 10)

print(num[3])



enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}
let mars = Planet[4]
print(mars)
