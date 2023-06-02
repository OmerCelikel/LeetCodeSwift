import UIKit

var romanStringsAndIntegers = [
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000
]

func romanToInt(_ s: String) -> Int {
    let charsOfString = Array(s)
    var total = 0

    for countIndex in 0..<charsOfString.count {
        let currentChar = String(charsOfString[countIndex])
        let currentValue = romanStringsAndIntegers[currentChar]!

        if countIndex < charsOfString.count - 1 {
            let nextChar = String(charsOfString[countIndex + 1])
            let nextValue = romanStringsAndIntegers[nextChar]!

            if currentValue < nextValue {
                total -= currentValue
            } else {
                total += currentValue
            }
        } else {
            total += currentValue
        }
    }

    return total
}

let result = romanToInt("MCMXCIV")
print(result)
