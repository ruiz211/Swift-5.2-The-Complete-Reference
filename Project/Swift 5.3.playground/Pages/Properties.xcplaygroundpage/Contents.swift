struct Point {
    var x: Int = 0
    var y: Int = 0
}

struct Size {
    var width: Int = 0
    var height: Int = 0
}

struct Rect {
    var origin: Point = Point(x: 0, y: 0)
    var size: Size = Size()
    var center: Point {
        get{
            return Point(x: origin.x + Int(size.width / 2), y: origin.y + Int(size.height / 2))
        }
        set(newValue) {
            origin.x = newValue.x - Int(size.width / 2)
            origin.y = newValue.y - Int(size.height / 2)
        }
    }
}


var square = Rect(origin: Point(x: 10, y: -10), size: Size(width: 10, height: 10))
print(square.center)
//print("square.origin is at (\(square.origin.x), \(square.origin.y))")

let initialSquareCenter = square.center
square.center = Point(x: 15, y: 15)
//print("square.origin is now at (\(square.origin.x), \(square.origin.y))")

square.center = Point(x: 30, y: 30)
//print("square.origin is now at (\(square.origin.x), \(square.origin.y))")



struct NewRect {
    var origin: Point
    var size: Size
    var center: Point {
        get {
            return Point(x: origin.x + Int(size.width / 2), y: origin.y + Int(size.height / 2))
        }
        set {
            origin.x = newValue.x
            origin.y = newValue.y
            //            size.width = newValue.x * 2
            //            size.height = newValue.y * 3
        }
    }
}

var newSquare = NewRect(origin: Point(x: 10, y: 10), size: Size(width: 1000, height: 1000))
//print(newSquare.center)



//Property Wrappers

@propertyWrapper
struct CheckAdult {
    private var age: Int
    init() {
        self.age = 0
    }
    var wrappedValue: Int {
        get {
            return age
        }
        set {
            age = max(newValue, 18)
        }
    }
}

struct Validate {
    @CheckAdult var check: Int
    
    func isAdult(_ age: Int) -> Bool {
        if age > 18 { return true } else { return false }
    }
}

var validate: Validate = Validate(check: CheckAdult())
//print(validate.isAdult(validate.check))
validate.check = 50
//print(validate.isAdult(validate.check))


var new: Int {
    return 1
}



@propertyWrapper
struct SmallNumber {
    var number: Int
    var wrapper: Int
    
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, wrapper) }
    }
    
    init() {
        self.wrapper = 11
        self.number = 2
    }
    
    //extra code
    init(wrappedValue: Int) {
        self.wrapper = 11
        self.number = min(wrappedValue, self.wrapper)
    }
    
    init(wrappedValue: Int, wrapper: Int) {
        self.wrapper = wrapper
        self.number = min(wrappedValue, self.wrapper)
    }
}

struct SomeStruct {
    @SmallNumber(wrappedValue: 1000, wrapper: 999) var value: Int
    @SmallNumber var nValue: Int
}

var someValue: SomeStruct = SomeStruct()
print(someValue.value)
someValue.value = 99
print(someValue.value)

print(someValue.nValue)
someValue.nValue = 13
print(someValue.nValue)
