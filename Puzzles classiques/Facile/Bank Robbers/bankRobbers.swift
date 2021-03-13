import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let R = Int(readLine()!)!
let V = Int(readLine()!)!

var robbers = Array(repeating: 0, count: R)
var vaults = Array(repeating: 0, count: V).map({ (x: Int) -> Int in
    let inputs = (readLine()!).split(separator: " ").map(String.init)
    let C = Int(inputs[0])!
    let N = Int(inputs[1])!

    return Int(pow(10.0, Double(N)) * pow(5.0, Double(C - N)))
})

for i in 0 ..< V {
    let min = robbers.min()
    let index = robbers.firstIndex{ $0 == min }!
    robbers[index] += vaults[i]
}

print(robbers.max()!)