import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let N = Int(readLine()!)!
var fraudulent = false
var benfordLawPercentages: [Int: (low: Double, high: Double)] = [
    1: (low: 20.1, high: 40.1),
    2: (low: 7.6, high: 27.6),
    3: (low: 2.5, high: 22.5),
    4: (low: 0, high: 19.7),
    5: (low: 0, high: 17.9),
    6: (low: 0, high: 16.7),
    7: (low: 0, high: 15.8),
    8: (low: 0, high: 15.1),
    9: (low: 0, high: 14.6)
]

var numbers: [Int: Int] = [1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0, 7: 0, 8: 0, 9: 0]

if N > 0 {
    for _ in 0 ..< N {
        let transaction = [Character](readLine()!)
        var i = 0

        while !transaction[i].isNumber || transaction[i] == "0" {
            i += 1
        }

        numbers[Int(String(transaction[i]))!]! += 1
    }
}

print(numbers, to: &errStream)
var percentage = 0.0

for i in 1 ..< 10 {
    percentage = (Double(numbers[i]!) / Double(N)) * 100

    if !(benfordLawPercentages[i]!.low < percentage && benfordLawPercentages[i]!.high > percentage) {
        fraudulent = true
        break
    }
}

print(fraudulent)