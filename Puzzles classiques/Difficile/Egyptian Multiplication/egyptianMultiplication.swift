import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let inputs = (readLine()!).split(separator: " ").map(String.init)
let a = Int(inputs[0])!
let b = Int(inputs[1])!

var A = 0
var B = 0

if a < b {
    A = b
    B = a
} else {
    A = a
    B = b
}

print("\(A) * \(B)")

var R = ""
var s = 0

while B > 0 {
    // B is odd
    if B % 2 != 0 {
        R += " + \(A)"
        s += A
        B -= 1
    } else {
        A *= 2
        B /= 2
    }

    print("= \(A) * \(B)\(R)")
}

print("= \(s)")