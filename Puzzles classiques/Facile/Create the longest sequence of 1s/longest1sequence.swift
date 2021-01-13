import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let b = readLine()! // Bitstring

// Swift has issues with split and "0" as separator, we don't have to omit empty subsequences
// Like other languages, it must return ["1", "", "1"] after splitting "1001" instead of ["1", "1"]
var oneBitstringList = b.split(separator: "0", omittingEmptySubsequences: false)
var longestSequence = 0

// No "1" in the bitstring
if !b.contains("1") {
    print("1")
} else if !b.contains("0") {
    // No "0" in the bitstring
    print(b.count)
} else {
    for i in 0 ..< oneBitstringList.count - 1 {
        let lengthSequence = oneBitstringList[i].count + oneBitstringList[i + 1].count + 1

        if lengthSequence > longestSequence {
            longestSequence = lengthSequence
        }
    }

    print(longestSequence)
}
