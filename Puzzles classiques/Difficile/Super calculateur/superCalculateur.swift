import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

var calculations = [(Int, Int)]()
var lastCalculation = 0

let N = Int(readLine()!)!
if N > 0 {
    for i in 0 ..< N {
        let inputs = (readLine()!).split(separator: " ").map(String.init)
        let start = Int(inputs[0])!
        let duration = Int(inputs[1])!
        calculations.append((start, start + duration))
        lastCalculation = max(lastCalculation, calculations[i].1)
    }

    calculations.sort(by: { $0.1 < $1.1 })

    var result = 1 // The first is always valid
    var i = 0

    for j in 1 ..< N {
        if calculations[j].0 >= calculations[i].1 {
            result += 1
            i = j
        }
    }

    print(result)
}