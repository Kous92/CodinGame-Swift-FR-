import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let N = Int(readLine()!)!

if N > 0 {
    for i in 0 ..< N {
        var F = Int(readLine()!)!

        while (F % 5 == 0) || (F % 3 == 0) || (F % 2 == 0) {
            if F % 5 == 0 {
                F /= 5
            } else if F % 3 == 0 {
                F /= 3
            } else {
                F /= 2
            }
        }

        if F == 1 {
            print("VICTORY")
        } else {
            print("DEFEAT")
        }
    }
}