import Foundation

// 1. Display function with Int parameter
func display(no: Int) {
    print("Function display(no: Int) called with value \(no)")
}

// 2. Display function with another Int parameter label
func display(anotherNo: Int) {
    print("Function display(anotherNo: Int) called with value \(anotherNo)")
}

// 3. Display function with Double parameter
func display(no: Double) {
    print("Function display(no: Double) called with value \(no)")
}

// 4. Display function with unnamed Double parameter
func display(_ no: Double) {
    print("Function display(_ no: Double) called with value \(no)")
}

// Testing the four functions
display(no: 10)           // Calls display(no: Int)
display(anotherNo: 20)    // Calls display(anotherNo: Int)
display(no: 3.14)         // Calls display(no: Double)
display(2.718)            // Calls display(_ no: Double)


// Checking conflict with the following function
func test(no: Double) -> Double {
    print("Function test(no: Double) called with value \(no)")
    return no * 2
}

// Testing the test function
let result = test(no: 5.0)
print("Result from test function: \(result)")
