import Foundation

class Counter {
     var counter: Int = 0
    
    func increment() -> Void {
        counter += 1
    }
    
    func increment(by amount: Int) -> Void {
        counter += amount
    }
    
    func reset() -> Void {
        counter = 0
    }
}

var counter: Counter = Counter()
counter.increment()
print(counter.counter)
counter.increment(by: 10)
print(counter.counter)
counter.reset()
print(counter.counter)



struct Point {
    var x = 0, y = 0
    
    mutating func move(x deltaX: Int, y deltaY: Int) -> Void {
        x += deltaX
        y += deltaY
    }
}

var point = Point(x: 10, y: 20)
point.move(x: 30, y: 40)
print(point)




//Type Methods


