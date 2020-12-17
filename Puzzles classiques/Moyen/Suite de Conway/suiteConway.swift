import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/

let R = Int(readLine()!)! // The seed of the Conway (the first element)
let L = Int(readLine()!)! // Line number L

// Write an answer using print("message...")
// To debug: print("Debug messages...", to: &errStream)
var previousLine = [Int]()
previousLine.append(R)

for i in 1 ..< L {
    // Create the state of the next column from the state of the previous column
    var numberToFind = previousLine[0]
    var numberFoundOccurrences = 1

    var temporaryLine = [Int]()

    for j in 1 ..< previousLine.count {
        if previousLine[j] == numberToFind {
            numberFoundOccurrences += 1
        } else {
            temporaryLine.append(numberToFind)
            temporaryLine.append(numberFoundOccurrences)

            // Now we switch to the next number (how many we will get)
            numberFoundOccurrences = 1
            numberToFind = previousLine[j]
        }
    }

    temporaryLine.append(numberToFind)
    temporaryLine.append(numberFoundOccurrences)

    // Line calculated, time for the next line
    previousLine = temporaryLine
}

// When the line is calculated, the array must be displayed in then reversed order.
print(previousLine.reversed().map{String($0)}.joined(separator: " "))