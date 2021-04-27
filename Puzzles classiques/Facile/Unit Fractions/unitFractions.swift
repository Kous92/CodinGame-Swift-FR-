import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let n = Int(readLine()!)!
let N = n * n

for i in 1 ..< (N / 2) + 1 {
    let x = n + (N / i)
    let y = n + i

    if x < y {
        break
    }

    if N % i == 0 {
        print("1/\(n) = 1/\(x) + 1/\(y)")
    }
}