import Foundation

//Generic Functions

func swapTwoValues<T>(a: inout T, b: inout T) -> Void {
    let temp = a
    a = b
    b = temp
}

var a = 11
var b = 1

print("\(a) \(b)")
swapTwoValues(a: &a, b: &b)
print("\(a) \(b)")
