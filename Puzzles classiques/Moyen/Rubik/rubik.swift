import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let N = Int(readLine()!)! - 1

// Formula: visible sides = 6 * N * (N + 2)
print(N > 0 ? 6 * N * N + 2 : 1)