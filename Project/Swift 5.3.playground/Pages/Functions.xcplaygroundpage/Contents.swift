import Foundation

func greet(forName name: String) -> String {
    return "Hi \(name)"
}

greet(forName: "String")

func user(userData data: [UUID: String]) -> ([UUID], [String])? {
    var ids: [UUID] = [UUID]()
    var names: [String] = [String]()
    for (id, name) in data {
        ids.append(id)
        names.append(name)
//        print("id: \(id), name: \(name)")
    }
    return (ids, names)
}

var users: [UUID: String] = [UUID(): "John"]
users[UUID()] = "Charles"

//print(users)

let ids = user(userData: users)?.0
let names = user(userData: users)?.1

print(names!)


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

func chooseStepFunction(backward: Bool) -> ((Int) -> Int) {
    return backward ? stepBackward : stepForward
}

var currentValue = 10
let moveToZero = chooseStepFunction(backward: currentValue > 0)
while currentValue != 0 {
    print(moveToZero(currentValue))
    currentValue -= 1
}
