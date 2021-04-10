import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let bits = readLine()! // Message block
var data = bits.map {Int(String($0))!}
var check = 0 // Number of errors

// First bit (a) is a global parity bit, we start at the second.
for i in 1 ..< 16 {
    // Bit at 1, flip it
    if data[i] == 1 {
        check ^= i // XOR
    }
}

// Correction of the message
if check > 0 {
    data[check] ^= 1 // XOR
}

// A valid message have even number of 1s
if data.reduce(0, +) & 1 == 1 {
    print("TWO ERRORS")
} else {
    print(data.map{String($0)}.joined(separator: ""))
}