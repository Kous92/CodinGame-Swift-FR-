import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/

// Calculate the next following river number (7 -> 14 -> 19 -> 29 -> 40)
func nextRiverNumber(riverNumber: Int) -> Int
{
    var riverNumber = riverNumber
    var nextRiverNumber = riverNumber
    
    // Next river number = actual + sum of the digits of actual number
    while riverNumber > 0
    {
        /* Base 10 is used for each digit
        -> 1) The digit = actual number % 10, add it to the next river number
        -> 2) Remove the digit of actual number: actual number - (actual number % 10)
        -> 3) Divide by 10 the actual number to finish the digit removal
        -> 4) Repeat steps 1, 2, 3 until the actual number is at 0
        */
        nextRiverNumber += riverNumber % 10
        riverNumber -= riverNumber % 10
        riverNumber /= 10
    }
    
    return nextRiverNumber
}

var r1 = Int(readLine()!)!
var r2 = Int(readLine()!)!

// Find meeting point: when the actual river number of the sequence of r1 is the same as sequence of r2
while r1 != r2
{
    // If the value r1 is lower than the value of r2, calculate the next river number of r1
    // If the value r2 is lower than the value of r1, calculate the next river number of r2
    if r1 < r2
    {
        r1 = nextRiverNumber(riverNumber: r1)
    }
    else
    {
        r2 = nextRiverNumber(riverNumber: r2);
    }
}

// Output meeting point: river number of r1 = river number of r2
print(r1)