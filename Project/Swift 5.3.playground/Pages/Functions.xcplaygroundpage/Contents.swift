import Foundation

//Defining and Calling Functions

//When you define a function, you can optionally define one or more named, typed values that the function takes as input, known as parameters. You can also optionally define a type of value that the function will pass back as output when it’s done, known as its return type.
func greet(forName name: String) -> String {
    return "Hi \(name)"
}

greet(forName: "String")



//Function Parameters and Return Values

//Function parameters and return values are extremely flexible in Swift. You can define anything from a simple utility function with a single unnamed parameter to a complex function with expressive parameter names and different parameter options.
func user(userData data: [UUID: String]) -> ([UUID], [String])? {
    var ids: [UUID] = [UUID]()
    var names: [String] = [String]()
    for (id, name) in data {
        ids.append(id)
        names.append(name)
        print("id: \(id), name: \(name)")
    }
    return (ids, names)
}

var users: [UUID: String] = [UUID(): "John"]
users[UUID()] = "Charles"

//print(users)

let ids = user(userData: users)?.0
let names = user(userData: users)?.1

print(names!)



//Function Argument Labels and Parameter Names

//Each function parameter has both an argument label and a parameter name. The argument label is used when calling the function; each argument is written in the function call with its argument label before it. The parameter name is used in the implementation of the function. By default, parameters use their parameter name as their argument label.


//In-Out Parameters

//Function parameters are constants by default. Trying to change the value of a function parameter from within the body of that function results in a compile-time error.
func changeValues(_ a: inout Int, _ b: inout Int) -> Void {
    let c = a
    a = b
    b = c
}

var one = 1
var two = 2
changeValues(&one, &two)
print(one)
print(two)


func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}


//Function Types

//Every function has a specific function type, made up of the parameter types and the return type of the function.
func chooseStepFunction(backward: Bool) -> ((Int) -> Int) {
    return backward ? stepBackward : stepForward
}

var currentValue = 10
let moveToZero = chooseStepFunction(backward: currentValue > 0)
while currentValue != 0 {
    print(moveToZero(currentValue))
    currentValue -= 1
}
