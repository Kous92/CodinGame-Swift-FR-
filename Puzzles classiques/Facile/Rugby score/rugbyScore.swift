import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let N = Int(readLine()!)!
var scoreList = [(i: Int, j: Int, k: Int)]()
var i = 0
var j = 0
var k = 0

// Testing combinations: i = tries
while i * 5 <= N {
    j = 0

    // Testing combinations: j = transformations
    while j <= i && ((i * 5 + j * 2) <= N) {
        k = 0

        // Testing combinations: k = penalties/drops
        while i * 5 + j * 2 + k * 3 <= N {
            // Score is reached, add the combination in the list.
            if i * 5 + j * 2 + k * 3 == N {
                scoreList.append((i: i, j: j, k: k))
            }

            k += 1
        }

        j += 1
    }

    i += 1
}

for score in scoreList {
    print("\(score.i) \(score.j) \(score.k)")
}