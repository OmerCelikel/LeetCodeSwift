import UIKit


//Given an integer x, return true if x is a palindrome, and false otherwise.

func isPalindrome(_ x: Int) -> Bool {
    let intArray = intToArr(x)
    print("intArray: \(intArray)")
    return false
}

func intToArr(_ x: Int) -> Array<Int> {
    let array = String(x).compactMap({$0.wholeNumberValue})
    return array
}


isPalindrome(123)

//let num = 12345
//let array = String(num).compactMap({$0.wholeNumberValue})
//print("\(array), \(type(of: array))")
