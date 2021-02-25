import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let X = Int(readLine()!)!
let N = Int(readLine()!)!
var minimumWork: Double = 0

// Sorting the array: lightest to heaviest
var m = readLine()!.split(separator: " ").map{Int(String($0))!}.sorted(by: <)

for i in 0 ..< N {
    let L = i / X // Floor level

    // W = ((L - 1) * 6.5 / 100) * g * m => W = L * 0.65
    // The right brick is at index N-i-1 with N: total of bricks, i: actual brick, the heaviest before, the lightest at the end.
    // g = 10 m/s^2, L = level
    minimumWork += Double(L) * 0.65 * Double(m[N - i - 1])
}

// Round to 3 decimal places the result
print(String(format: "%.3f", minimumWork))