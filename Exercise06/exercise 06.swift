import Foundation

// 1. Basic arithmetic functions
func add(no1: Int, no2: Int) -> Double {
    return Double(no1 + no2)
}

func mul(no1: Int, no2: Int) -> Double {
    return Double(no1 * no2)
}

func div(no1: Int, no2: Int) -> Double {
    guard no2 != 0 else {
        print("Division by zero!")
        return 0.0
    }
    return Double(no1) / Double(no2)
}

func sub(no1: Int, no2: Int) -> Double {
    return Double(no1 - no2)
}

// 2. calcFunc accepting a function as parameter
func calcFunc(_ operation: (Int, Int) -> Double, operationName: String, no1: Int, no2: Int) -> Double {
    print("calcFunc called for \(operationName) with numbers \(no1) and \(no2)")
    return operation(no1, no2)
}

// 3. Testing calcFunc with all four operations
print("Addition Result: \(calcFunc(add, operationName: "Addition", no1: 10, no2: 20))")
print("Multiplication Result: \(calcFunc(mul, operationName: "Multiplication", no1: 10, no2: 20))")
print("Division Result: \(calcFunc(div, operationName: "Division", no1: 10, no2: 20))")
print("Subtraction Result: \(calcFunc(sub, operationName: "Subtraction", no1: 10, no2: 20))")
