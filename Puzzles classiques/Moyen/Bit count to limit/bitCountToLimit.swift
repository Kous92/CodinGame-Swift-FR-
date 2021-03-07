import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

// O(log(n)) solution, source: https://geeksforgeeks.org/count-total-set-bits-in-all-numbers-from-1-to-n/, translated in Swift from Java source code. Note: using UInt instead of Int is better to avoid overflow and pass validators.
func countAllBitsSetToN(_ n: UInt) -> UInt {
    var two: UInt = 2
    var count: UInt = 0
    let n1 = n
    var n2 = n

    while n2 != 0 {
        count += (n1 / two) * (two >> 1)

        if (n1 & (two - 1)) > ((two >> 1) - 1) {
            count += (n1 & (two - 1)) - (two >> 1) + 1
        }

        two <<= 1
        n2 >>= 1
    }

    return count
}

let n = UInt(readLine()!)!
print(countAllBitsSetToN(n))