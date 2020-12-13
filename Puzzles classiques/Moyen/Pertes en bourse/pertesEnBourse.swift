import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let n = Int(readLine()!)!

// These variable will check the maximum value and the huge loss
var maxValue = 0
var maxLoss = 0

for i in ((readLine()!).split(separator: " ").map(String.init)) {
    let v = Int(i)!

    // For each value (investment), if it's higher than the actual highest value
    if v > maxValue {
        maxValue = v // Save the new highest
    } else if v < maxValue{
        // For each value, if it's lower than the actual lowest value, loss to compare is the highest value - the actual investment (v)
        let loss = maxValue - v

        // Huge loss, save the new one
        if loss > maxLoss {
            maxLoss = loss
        }
    }
}

// The loss in stock is negative
print(-maxLoss)
