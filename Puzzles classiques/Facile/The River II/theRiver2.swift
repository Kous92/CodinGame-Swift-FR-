import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

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

let r1 = Int(readLine()!)!

// Check if 2 rivers meets r1
var r1meets2Rivers = false

for i in (0 ..< r1 - 1).reversed() {
    r1meets2Rivers = (nextRiverNumber(riverNumber: i) == r1)
    
    // No need to go far if we have found meeting points for 2 digital rivers
    if r1meets2Rivers {
        break
    }
}

// YES if 2 rivers meet r1, NO otherwise
print(r1meets2Rivers ? "YES" : "NO")