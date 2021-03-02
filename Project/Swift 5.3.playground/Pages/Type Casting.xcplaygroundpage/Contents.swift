import Foundation

class Person {
    var name: String!
    var age: Int!
}

var person: Person = Person()
person.name = "Charles"
person.age = 11

var number: Int = 11
var isAlive: Bool = true

var types: [Any] = [person, number, isAlive]
types.append(37.73)

for item in types {
    if item is Person {
        let value = item as! Person
        print("Person name \(value.name!)")
    } else if item is String {
        let value = item as! String
        print("String \(value)")
    } else if item is Int {
        let value = item as! Int
        print("Int \(value)")
    } else if item is Double {
        let value = item as! Double
        print("Double \(value)")
    } else if item is Bool {
        let value = item as! Bool
        print("Bool \(value)")
    }
}
