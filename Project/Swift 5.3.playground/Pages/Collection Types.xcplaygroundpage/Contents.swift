import Foundation

//Arrays

//An array stores values of the same type in an ordered list. The same value can appear in an array multiple times at different positions.
var someArray: [String] = [String]()
var anotherArray: [String] = Array(repeating: " ", count: 3)
anotherArray[1] = "Some string"
anotherArray += ["value"]
anotherArray.remove(at: 0)
for item in anotherArray {
    print(item.capitalized)
}



//Sets

//A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items isn’t important, or when you need to ensure that an item only appears once.
let alphabet: Set<Character> = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
print(alphabet.symmetricDifference(vowels).sorted(by: { (a, b) -> Bool in a < b }))



//Performing Set Operations

print(alphabet.intersection(vowels).sorted(by: { (a, b) -> Bool in a < b }))
print(alphabet.intersection(vowels).sorted(by: { $0 < $1 })) //Is the same
print(vowels.isSubset(of: alphabet))



//Dictionaries

//A dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary.
var users: [UUID: String] = [UUID(): "John"]
users[UUID()] = "Charles"
for (id, name) in users {
    print("ID: \(id), name: \(name)")
}
