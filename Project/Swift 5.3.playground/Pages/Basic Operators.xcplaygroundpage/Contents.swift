import Foundation

//Assignment Operator

//The assignment operator (a = b) initializes or updates the value of a with the value of b
var a = 10
let b = -a
let c = (a, b)



//Arithmetic Operators

//Addition (+)
1 + 2       // equals 3

//Subtraction (-)
5 - 3       // equals 2

//Multiplication (*)
2 * 3       // equals 6

//Division (/)
10.0 / 2.5  // equals 4.0



//Compound Assignment Operators

//Swift provides compound assignment operators that combine assignment (=) with another operation. One example is the addition assignment operator (+=)
a += 2



//Comparison Operators

//Equal to (a == b)
1 == 1   // true because 1 is equal to 1

//Not equal to (a != b)
2 != 1   // true because 2 is not equal to 1

//Greater than (a > b)
2 > 1    // true because 2 is greater than 1

//Less than (a < b)
1 < 2    // true because 1 is less than 2

//Greater than or equal to (a >= b)
1 >= 1   // true because 1 is greater than or equal to 1

//Less than or equal to (a <= b)
2 <= 1   // false because 2 is not less than or equal to 1



//Ternary Conditional Operator

//The ternary conditional operator is a special operator with three parts, which takes the form question ? answer1 : answer2. It’s a shortcut for evaluating one of two expressions based on whether question is true or false. If question is true, it evaluates answer1 and returns its value; otherwise, it evaluates answer2 and returns its value.
let contentHeight = 40
let hasHeader = true
let rowHeight: Int
if hasHeader {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 20
}



//Nil-Coalescing Operator

//The nil-coalescing operator (a ?? b) unwraps an optional a if it contains a value, or returns a default value b if a is nil. The expression a is always of an optional type. The expression b must match the type that is stored inside a.
let defaultColorName: String = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName



//Range Operators

//The closed range operator (a...b)
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

//The half-open range operator (a..<b)
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}

//One-Sided Ranges
for name in names[2...] {
    print(name)
}

for name in names[...2] {
    print(name)
}

let range = ...5



//Logical Operators

//Logical operators modify or combine the Boolean logic values true and false. Swift supports the three standard logical operators found in C-based languages

//Logical NOT (!a)
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}

//Logical AND (a && b)
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

//Logical OR (a || b)
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

//Explicit Parentheses
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
