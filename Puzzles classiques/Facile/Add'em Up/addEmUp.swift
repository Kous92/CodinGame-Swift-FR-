import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let N = Int(readLine()!)!
var cardsValue = [Int]()
var lowestCost = 0

// Fill the array of all cards values
for i in ((readLine()!).split(separator: " ").map(String.init)) {
    let x = Int(i)!
    cardsValue.append(x)
}

while cardsValue.count > 1 {
    // Sort the values: lowest to highest
    cardsValue = cardsValue.sorted(by: <)

    // Smallest possible sum: the 2 lowest
    let minSum = cardsValue[0] + cardsValue[1]

    // Add costs and reduce integer list.
    lowestCost += minSum

    // Remove the 2 lowest prices then add the calculated the smallest possible sum
    cardsValue.remove(at: 0)
    cardsValue.remove(at: 0)
    cardsValue.append(minSum)
}

// When the final array contains only one value, the lowest cost is now calculated.
print(lowestCost)