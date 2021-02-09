import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let n = Int(readLine()!)!
var res = 0
var copy = n
var p = 2

while p <= copy {
    // p not prime
    while copy % p == 0 {
        copy /= p
        res += (n / p)
    }

    p += 1
}

print(res)