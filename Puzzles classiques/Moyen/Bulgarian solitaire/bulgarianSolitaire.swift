import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

extension String {
    func removeLeadingCharacters(characters: Set<Character>) -> String {
        if let index = self.firstIndex(where: {!characters.contains($0)}) {
            return String(self[index...])
        } else {
            return ""
        }
    }
}

let N = Int(readLine()!)!
var cards = [Int]()
var values = [String]()

for i in ((readLine()!).split(separator: " ").map(String.init)) {
    cards.append(Int(i)!)
}

var value = cards.map{String($0)}.joined(separator: " ")
var position = -1

repeat {
    values.append(value)

    while cards[0] == 0 {
        cards.removeFirst()
    }

    var result = 0
    var r = ""
    
    for v in 0 ..< cards.count {
        if cards[v] > 0 {
            cards[v] -= 1
            result += 1
        }

        r += "\(cards[v])"
    }

    r += "\(result)"
    cards.append(result)
    
    let turns = r
    
    value = turns.removeLeadingCharacters(characters: ["0"])
    position = (values.firstIndex(of: value) ?? -1)
} while position <= 0

// Number of iterations
print(values.count - position)