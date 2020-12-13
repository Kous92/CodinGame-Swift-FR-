import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let K = Int(readLine()!)!
var result = [Float]()

for i in ((readLine()!).split(separator: " ").map(String.init)) {
    let A = Float(i)!
    var Z: Float = 0
    var smallest: Float = 1

    while Z >= 0 {
        Z += log(A) - log(smallest)
        smallest += 1
    }

    result.append(smallest - 1)
}

print(result.map{String(Int($0))}.joined(separator: " "))