import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let n = Int(readLine()!)!
var s = n * n

for i in 1 ... n {
    s -= n % i
}

print(s)