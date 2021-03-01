import Foundation

//Optional Chaining as an Alternative to Forced Unwrapping

class Person {
    var residence: Residence?
    var house: House?
}

class Residence {
    var numberOfRooms: Int = 10
    
}

let john: Person = Person()

if let rooms = john.residence?.numberOfRooms { print("John's residence has \(rooms) rooms") }
else { print("John has no residence") }

john.residence = Residence()

if let rooms = john.residence?.numberOfRooms { print("John's residence has \(rooms) rooms") }
else { print("John has no residence") }



//Defining Model Classes for Optional Chaining

class Room {
    let name: String
    init(name: String) { self.name = name }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}

class House {
    var rooms: [Room] = [Room]()
    var numberOfRooms: Int { return rooms.count }
    var address: Address?
    
    subscript(index: Int) -> Room {
        get { return rooms[index] }
        set { rooms[index] = newValue }
    }
    
    func printNumberOfRooms() -> Void {
        print("The number of rooms is \(numberOfRooms)")
    }
    
    func createAddress() -> Address {
        print("Function was called.")
        let someAddress = Address()
        someAddress.buildingName = "Baker Street"
        someAddress.buildingNumber = "29"
        someAddress.street = "Acacia Road"

        return someAddress
    }
}



//Accessing Properties Through Optional Chaining

let charles: Person = Person()
if let rooms = charles.house?.numberOfRooms { print("Charles's house has \(rooms) rooms") }
else { print("Charles has no rooms") }

charles.house = House() // Charles creates a house

charles.house?.rooms.append(Room(name: "Golden Room"))
charles.house?.rooms.append(Room(name: "Blue Room"))
charles.house?.rooms.append(Room(name: "Red Room"))
charles.house?.rooms.append(Room(name: "Dark Room"))

if let rooms = charles.house?.numberOfRooms { print("Charles's house has \(rooms) rooms") }
else { print("Charles has no rooms") }



//Calling Methods Through Optional Chaining

charles.house?.createAddress()



//Accessing Subscripts Through Optional Chaining

print(charles.house!.rooms[2].name)
if let firstRoomName = charles.house?[0].name {
    print("The first room name is \(firstRoomName).")
} else {
    print("Unable to retrieve the first room name.")
}



//Linking Multiple Levels of Chaining

if let charlesAddressName = charles.house?.address?.buildingName {
    print("Charles's street name is \(charlesAddressName).")
} else {
    print("Unable to retrieve the building name.")
}
