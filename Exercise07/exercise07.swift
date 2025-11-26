import Foundation

// 1. Function that returns a closure
func makeIncreament(_ amount: Int) -> () -> Int {
    // This variable is captured by the closure
    var runningTotal = 0
    
    // Nested function (closure) that increments runningTotal by amount
    func increment() -> Int {
        runningTotal += amount
        return runningTotal
    }
    
    // Return the nested function
    return increment
}

// 2. Using the closure

// Create a closure that increments by 10
var incrementByTen = makeIncreament(10)
print(incrementByTen()) // 10
print(incrementByTen()) // 20
print(incrementByTen()) // 30

// Create a separate closure that increments by 5
var incrementByFive = makeIncreament(5)
print(incrementByFive()) // 5
print(incrementByFive()) // 10
