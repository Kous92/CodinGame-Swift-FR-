import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

var P = Int(readLine()!)! // Encoded value of message
let C = [Character](readLine()!) // Alphabet of the message.
var decoded = ""
var size = C.count // Warning: O(n) complexity. Do it once to reuse in O(1) on loop, tests will fail otherwise.

while P >= 0 {
    decoded.append(C[P % size]) // With Character array, O(1)
    P /= size // Do not proceed with P / size - 1, execution will be too long.
    P -= 1 // Divide P by the size of the alphabet then substract 1.
}

print(decoded)