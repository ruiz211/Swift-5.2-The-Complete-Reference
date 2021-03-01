import Foundation

//Arrays

var someArray: [String] = [String]()
var anotherArray: [String] = Array(repeating: " ", count: 3)
anotherArray[1] = "Some string"
anotherArray += ["value"]
anotherArray.remove(at: 0)
for item in anotherArray {
    print(item.capitalized)
}



//Sets

let alphabet: Set<Character> = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
print(alphabet.symmetricDifference(vowels).sorted(by: { (a, b) -> Bool in a < b }))



//Performing Set Operations

print(alphabet.intersection(vowels).sorted(by: { (a, b) -> Bool in a < b }))
//print(alphabet.intersection(vowels).sorted(by: { $0 < $1 })) //Is the same
print(vowels.isSubset(of: alphabet))



//Dictionaries

var users: [UUID: String] = [UUID(): "John"]
users[UUID()] = "Charles"
for (id, name) in users {
    print("ID: \(id), name: \(name)")
}
