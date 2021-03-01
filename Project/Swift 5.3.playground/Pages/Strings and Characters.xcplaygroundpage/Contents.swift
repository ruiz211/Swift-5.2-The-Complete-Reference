import Foundation

//String Literals

let name: String = "Charles" //simple string
let multilineString: String = """
    This
    is
        a (with a tab)
    multiline
    String
"""



//String Mutability

var mutableString: String = "house "
mutableString += "string"

let unMutableString: String = "Some string" //can't be used with '+='


//Strings Are Value Types

//



//Working with Characters

for character in "Dog 🐕!" {
    print(character.asciiValue ?? character.isASCII)
}



//String Interpolation

let usefullString: String = "Hello there! It's \(Calendar.current.component(.hour, from: Date())) hours"
print(usefullString)



//Unicode





//Counting Characters

print("In 'multilineString' are: \(multilineString.count) characters")



//Accessing and Modifying a String

let greet: String = "Guten Tag!"
greet[greet.startIndex] //'G'
greet[greet.index(before: greet.endIndex)] //'!'
greet[greet.index(after: greet.startIndex)] //'u'
let index = greet.index(greet.startIndex, offsetBy: 10)


