import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

func numeralToRoman(number: Int) -> String
{
    let decimals = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    let numerals = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

    var result = ""
    var number = number

    while number > 0
    {
        for (index, decimal) in decimals.enumerated()
        {
            if number - decimal >= 0 {
                number -= decimal
                result += numerals[index]
                break
            }
        }
    }

    return result
}

func romanToInt(_ s: String) -> Int {
    let characters = [Character](s)
    var result: Int = 0
    
    if let first = characters.first { // Take the first number
        result = romanCharToInt(first)
    }
    for index in 1 ..< characters.count {
        let current = romanCharToInt(characters[index])
        let previous = romanCharToInt(characters[index - 1])
        if current <= previous {
            result += current
        } else { // If it is greater than the previous number, we add the current number minus twice the previous number, so that we can subtract the multi-addition in the previous cycle.
            result = result - previous * 2 + current;
        }
    }
    return result
}
    
func romanCharToInt(_ c: Character) -> Int {
    let char = c

    switch(char) {
        case "I":
            return 1
        case "V":
            return 5
        case "X":
            return 10
        case "L":
            return 50
        case "C":
            return 100
        case "D":
            return 500
        case "M":
            return 1000
        default:
            return 0
    }
}

// Convert the 2 roman numbers in numbers then add them.
let rom1 = romanToInt(readLine()!)
let rom2 = romanToInt(readLine()!)

// Sum of the 2 converted numbers to roman number.
print(numeralToRoman(number: rom1 + rom2))