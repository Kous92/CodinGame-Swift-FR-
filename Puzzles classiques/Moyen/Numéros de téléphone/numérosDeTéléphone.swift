import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

extension String {
    // Similar to charAt in Java. Warning O(n) complexity.
    func charAt(_ idx: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: idx)]
    }

    // Similar to substring in Java. Warning O(n) complexity.
    func substring(start: Int, end: Int) -> String {
        let b = self.index(self.startIndex, offsetBy: start)
        let e = self.index(self.startIndex, offsetBy: end)

        return String(self[b..<e])
    }
}

let N = Int(readLine()!)!
var numbers = Set<String>() // No duplicates

if N > 0 {
    for _ in 0 ..< N {
        let telephone = readLine()!

        for i in 1 ... telephone.count {
            numbers.insert(telephone.substring(start: 0, end: i))
        }
    }
}

print(numbers.count)
