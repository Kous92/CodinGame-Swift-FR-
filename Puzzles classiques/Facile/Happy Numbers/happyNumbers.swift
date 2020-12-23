import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let N = Int(readLine()!)!

if N > 0 {
    for i in 0 ..< N {
        var turns = 0 // For big numbers, we will loop at most 100 times
        var x = readLine()!
        let X = x
        var sum = 0

        while (x != "1") && (turns < 100) {
            // Sum of the square of each digit
            let y = x.map{Int(String($0))! * Int(String($0))!}
            x = String(y.reduce(0, +))

            turns += 1
        }

        if x == "1" {
            print("\(X) :)")
        } else {
            print("\(X) :(")
        }
    }
}