import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let N = Int(readLine()!)!
var C = Int(readLine()!)!
var budget = [Int]()
var sum = 0

if N > 0 {
    for _ in 0 ..< N {
        let B = Int(readLine()!)!
        budget.append(B)
        sum += B
    }
}

if sum < C {
   print("IMPOSSIBLE")
} else {
    budget.sort(by: <)

    for i in 0 ..< N {
        let p = Int(floor(Double(C) / Double(N - i)))
        let m = min(budget[i], p)

        print(m)
        C -= m
    }
}