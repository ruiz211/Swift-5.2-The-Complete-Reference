import Foundation

enum Planets: Int, CaseIterable {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

for planet in Planets.allCases {
    print(planet.rawValue)
}

print(Planets(rawValue: 10) ?? "No value")


indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let ten = ArithmeticExpression.number(10)
let eleven = ArithmeticExpression.number(11)
let sum = ArithmeticExpression.addition(ten, eleven)
let product = ArithmeticExpression.multiplication(sum, eleven)

func evaluate(forEvaluate expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(forEvaluate: left) + evaluate(forEvaluate: right)
    case let .multiplication(left, right):
        return evaluate(forEvaluate: left) * evaluate(forEvaluate: right)
    }
}

evaluate(forEvaluate: sum)

