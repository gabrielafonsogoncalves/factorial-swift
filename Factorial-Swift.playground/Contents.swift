/// This Playground will explain two ways of develop factorial in Swift (there are more than 2). Our solution would be O(n)
/// Factorial is when you multiply a consecutive amount of numbers based on the entry. For instance:
/// Entry: 4
/// Process: 1 * 2 * 3 * 4
/// Result: 24
/// Note: If the value == 0 then the factorial would be 0

import Foundation

func factorial(_ value: UInt) -> UInt {
    // if the entry is equal to 0 then we return 1
    if value == 0 {
        return 1
    }
    
    // var to store the result
    var result: UInt = 1
    
    // we are going to iterate from 1 to the entry to generate the factorial
    for i in 1...value {
        result *= i
    }
    
    return result
}

factorial(4)

/// Now we are going to do the same but using recursion

func factorialUsingRecursion(_ value: UInt) -> UInt {
    // if the entry is equal to 0 then we return 1
    if value == 0 {
        return 1
    }
    
    // we are going to multiply the entry agains the next value (the next value would be the entry - 1)
    // the recursion stops when the entry is equal to 0 and the execution enter in the first validation.
    return value * factorialUsingRecursion(value - 1)
}

factorialUsingRecursion(4)
