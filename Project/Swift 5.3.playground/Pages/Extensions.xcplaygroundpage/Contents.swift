import Foundation

extension Int {
    static func factorial(number: Int) -> Int {
        if number < 0 { return 0 }
        else if number == 0 { return 1 }
        return number * factorial(number: number - 1)
    }
    
     mutating func square() {
        self = self * self
    }

}

print(Int.factorial(number: 3))
var number = 3
number.square()
print(number)
