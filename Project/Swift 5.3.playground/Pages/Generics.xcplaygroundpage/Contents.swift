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



//Generic Types

struct Stack<T> {
    var items: [T] = [T]()
    
    mutating func push(item: T) -> Void {
        items.append(item)
    }
    
    mutating func pop() -> T {
        items.removeLast()
    }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push(item: "uno")
stackOfStrings.push(item: "dos")
stackOfStrings.push(item: "tres")
stackOfStrings.push(item: "cuatro")

for item in stackOfStrings.items {
    print(item)
}


