import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

var o = 0 // Number of operations
var s = 0

let n = Int(readLine()!)!
let a = readLine()!.split(separator: " ").map{Int($0)}

// Pre-compute by having all "1"
for i in 0 ..< n {
    if a[i] == 1 {
        o += 1
    }
}

// With the "1"s counter, check if in the interval there are "0"s, the swaps to group the "1"s in the head of the list
for i in 0 ..< o {
    if a[i] == 0 {
        s += 1
    }
}

print(s)