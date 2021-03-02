import Foundation

enum SumExceptions: Error {
    case NilNumber
    case NegativeNumber(firstNumber: Int, secondNumber: Int)
}

func sum(a numerOne: Int?, b numberTwo: Int?) throws -> Int {
    if numerOne == nil || numberTwo == nil {
        throw SumExceptions.NilNumber
    } else if numerOne! < 0 || numberTwo! < 0 {
        throw SumExceptions.NegativeNumber(firstNumber: numerOne!, secondNumber: numberTwo!)
    }

    return numerOne! + numberTwo!
}

do {
    print(try sum(a: nil, b: 10))
} catch SumExceptions.NilNumber {
    print("Nil number")
} catch SumExceptions.NegativeNumber(let numberOne, let numberTwo) {
    print("Negative number one \(numberOne) two \(numberTwo)")
}


enum DivisionExceptions: Error {
    case NilNumber
    case NegativeNumber(numberOne: Int, numberTwo: Int)
    case DivisionByZero(number: Int)
}

func division(numberOne: Int?, numberTwo: Int?) throws -> Int {
    if numberOne == nil || numberTwo == nil {
        throw DivisionExceptions.NilNumber
    } else if numberOne! < 0 || numberTwo! < 0 {
        throw DivisionExceptions.NegativeNumber(numberOne: numberOne!, numberTwo: numberTwo!)
    } else if numberTwo == 0 {
        throw DivisionExceptions.DivisionByZero(number: numberTwo!)
    }
    return numberOne! / numberTwo!
}

do {
    try print(division(numberOne: nil, numberTwo: 0))
} catch DivisionExceptions.NilNumber {
    print("Nil number")
} catch DivisionExceptions.NegativeNumber(let numberOne, let numberTwo) {
    print("Negative number \(numberOne) \(numberTwo)")
} catch DivisionExceptions.DivisionByZero(let number) {
    print("Division by zero \(number)")
}
