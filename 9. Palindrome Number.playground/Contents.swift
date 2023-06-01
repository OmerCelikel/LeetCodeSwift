import UIKit


//Given an integer x, return true if x is a palindrome, and false otherwise.

func isPalindrome(_ x: Int) -> Bool {
    
    // minus ones will not be palindrome -121 != 121-
    if x < 0 {
        return false
    }
    
    let intArray = intToArr(x)
    let count = intArray.count
    
    print("3/2 \(3/2)")
    
    // checks until middle of count
    // look first and last
    for i in 0..<count/2 {
        /*
         FOR 0
         
         checks firsts and lasts
         check: 987
         count 3
         index 0 = 9
         index 3-0-1 -> 2: Gives last =  7
        
         FOR 1
         index 1: 8
         index 3-1-1 ->: 1 = 8
         
         
         */
        if intArray[i] != intArray[count - i - 1] {
            return false
        }
    }
    return true
}

func intToArr(_ x: Int) -> Array<Int> {
    let array = String(x).compactMap({$0.wholeNumberValue})
    return array
}


isPalindrome(121)

//let num = 12345
//let array = String(num).compactMap({$0.wholeNumberValue})
//print("\(array), \(type(of: array))")
