import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

class Letter {
    let c: Character
    var isUsed: Bool = false

    init(c: Character) {
        self.c = c
    }

    func toPoints() -> Int {
        var points = 1

        switch c {
            case "d", "g":
            points = 2
            case "b", "c", "m", "p":
            points = 3
            case "f", "h", "v", "w", "y":
            points = 4
            case "k":
            points = 5
            case "j", "x":
            points = 8
            case "q", "z":
            points = 10
            default:
            break
        }

        return points
    }
}

func calculateScore(_ letters: [Letter]) -> Int {
    var score = 0

    for letter in letters {
        // Letter is used, points are added
        if letter.isUsed {
            score += letter.toPoints()
        }
    }

    return score
}

func resetLetters(_ letters: [Letter]) {
    for letter in letters {
        letter.isUsed = false
    }
}

let N = Int(readLine()!)!
var dictionary = [String]()

if N > 0 {
    for _ in 0 ..< N {
        dictionary.append(readLine()!)
    }
}

let LETTERS = readLine()!
var letters = [Letter]()

for l in LETTERS {
    letters.append(Letter(c: l))
}

var bestScore = 0
var bestWord = dictionary[N - 1]
var indexOfBest = N - 1
var letterFound = false
var currentIndex = 0

for word in dictionary {
    for c in word {
        letterFound = false

        for letter in letters {
            if letter.c == c && !letter.isUsed {
                letter.isUsed = true
                letterFound = true
                break
            }
        }

        if !letterFound {
            break
        }
    }

    if letterFound {
        let score = calculateScore(letters)

        if (currentIndex < indexOfBest && score == bestScore) || (score > bestScore) {
            bestScore = score
            bestWord = word
            indexOfBest = currentIndex
        }
    }

    // Before next iteration, reset all letters
    resetLetters(letters)
    currentIndex += 1
}

print(bestWord)