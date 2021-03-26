import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

// Time in "HH:MM:SS" is converted in seconds
func parseTime(timeString: String) -> Int {
    let t = timeString.split(separator: ":").map{Int(String($0))!}

    return 3600 * t[0] + 60 * t[1] + t[2]
}

let N = Int(readLine()!)!

var fastest = ""
var lowestTime = Int.max

if N > 0 {
    for _ in 0 ..< N {
        let t = readLine()! // Runner time
        let n = parseTime(timeString: t)

        if n < lowestTime {
            fastest = t
            lowestTime = n 
        }
    }
}

print(fastest)