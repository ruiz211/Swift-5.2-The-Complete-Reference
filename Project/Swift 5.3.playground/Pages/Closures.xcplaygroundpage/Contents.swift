import Foundation

//Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages.


//Closure Expressions

//Nested functions, as introduced in Nested Functions, are a convenient means of naming and defining self-contained blocks of code as part of a larger function.
var names: [String] = ["Charles", "Eric", "Hank", "Eve"].sorted { (s1, s2) -> Bool in
    s1 < s2
}

names.sorted { (a, b) -> Bool in
    a < b
}

names.filter { (a) -> Bool in
    a.hasPrefix("E")
}



//Trailing Closures

//If you need to pass a closure expression to a function as the function’s final argument and the closure expression is long, it can be useful to write it as a trailing closure instead.




