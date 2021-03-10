import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

var A1 = Int(readLine()!)!
let N = Int(readLine()!)!
var sequence = [Int:Int]()
var value = A1

for i in 1 ..< N {
    if let sequenceElement = sequence[value] {
        let tmp = value
        value = i - sequenceElement
        sequence[tmp] = i
    } else {
        sequence[value] = i
        value = 0
    }
}

print(value)