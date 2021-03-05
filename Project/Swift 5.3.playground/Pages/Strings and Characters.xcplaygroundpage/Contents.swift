import Foundation

//String Literals

//You can include predefined String values within your code as string literals. A string literal is a sequence of characters surrounded by double quotation marks (").
let name: String = "Charles" //simple string
let multilineString: String = """
    This
    is
        a (with a tab)
    multiline
    String
"""
let dollarSign = "\u{24}"
print(dollarSign)
let iconDollarSign: Character = "$"
print(iconDollarSign)



//String Mutability

//You indicate whether a particular String can be modified (or mutated) by assigning it to a variable.
var mutableString: String = "house "
mutableString += "string"

let unMutableString: String = "Some string" //can't be used with '+='



//Strings Are Value Types

//??



//Working with Characters

//You can access the individual Character values for a String by iterating over the string with a for-in loop:
let sorry: String = "Lo siento 🥺 @"
for character in sorry {
    print(character.asciiValue ?? character.isASCII)
}



//Concatenating Strings and Characters

//String values can be added together (or concatenated) with the addition operator (+) to create a new String value:
let surname: String = "Xavier"
var fulname: String = name + " "
fulname += surname



//String Interpolation

//tring interpolation is a way to construct a new String value from a mix of constants, variables, literals, and expressions by including their values inside a string literal.
let usefullString: String = "Hello there! It's \(Calendar.current.component(.hour, from: Date())) hours"
print(usefullString)



//Unicode

//Swift’s String and Character types are fully Unicode-compliant, as described in this section.
let eAcute: Character = "\u{E9}"
let precomposed: Character = "\u{D55C}"



//Counting Characters

//To retrieve a count of the Character values in a string, use the count property of the string.
print("In 'multilineString' are: \(multilineString.count) characters")



//Accessing and Modifying a String

//Each String value has an associated index type, String.Index, which corresponds to the position of each Character in the string.
let greet: String = "Guten Tag!"
greet[greet.startIndex] //'G'
greet[greet.index(before: greet.endIndex)] //'!'
greet[greet.index(after: greet.startIndex)] //'u'
let index = greet.index(greet.startIndex, offsetBy: 10)
