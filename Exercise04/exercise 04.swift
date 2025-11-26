import Foundation

// 1. Function returning shortest and longest strings
func shortestAndLongest(strings: [String]) -> (shortest: String?, longest: String?) {
    guard !strings.isEmpty else { return (nil, nil) }

    var shortest = strings[0]
    var longest = strings[0]

    for str in strings {
        if str.count < shortest.count {
            shortest = str
        }
        if str.count > longest.count {
            longest = str
        }
    }

    return (shortest, longest)
}

// Example usage for function 1
let words1 = ["apple", "banana", "kiwi", "grapefruit"]
let result1 = shortestAndLongest(strings: words1)
print("Function 1 - Shortest: \(result1.shortest!), Longest: \(result1.longest!)")

// 2. Function using inout parameters
func findShortestAndLongest(strings: [String], shortest: inout String?, longest: inout String?) {
    guard !strings.isEmpty else {
        shortest = nil
        longest = nil
        return
    }

    shortest = strings[0]
    longest = strings[0]

    for str in strings {
        if str.count < shortest!.count {
            shortest = str
        }
        if str.count > longest!.count {
            longest = str
        }
    }
}

// Example usage for function 2
let words2 = ["strawberry", "fig", "melon", "blueberry"]
var minStr: String?
var maxStr: String?
findShortestAndLongest(strings: words2, shortest: &minStr, longest: &maxStr)
print("Function 2 - Shortest: \(minStr!), Longest: \(maxStr!)")

// 3. Function using variadic parameters
func shortestAndLongestVariadic(_ strings: String...) -> (shortest: String?, longest: String?) {
    return shortestAndLongest(strings: strings)
}

// Example usage for function 3
let result3 = shortestAndLongestVariadic("orange", "apple", "grape", "watermelon")
print("Function 3 - Shortest: \(result3.shortest!), Longest: \(result3.longest!)")
