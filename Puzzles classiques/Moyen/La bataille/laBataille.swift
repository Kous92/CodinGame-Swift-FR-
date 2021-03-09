import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

var deck1 = [String]()
var deck2 = [String]()
var cardValues: [String:Int] = [
    "1": 1,
    "2": 2,
    "3": 3,
    "4": 4,
    "5": 5,
    "6": 6,
    "7": 7,
    "8": 8,
    "9": 9,
    "10": 10,
    "J": 11,
    "Q": 12,
    "K": 13,
    "A": 14
]

var war = false // War in progress or not
var draw = false // No winner

let n = Int(readLine()!)! // The number of cards for player 1
if n > 0 {
    for _ in 0 ..< n {
        let cardp1 = readLine()! // the n cards of player 1
        
        // Color does not matter, we take a substring by excluding the last character
        let index = cardp1.index(cardp1.startIndex, offsetBy: cardp1.count - 1)
        deck1.append(String(cardp1[..<index]))
    }
}

let m = Int(readLine()!)! // the number of cards for player 2
if m > 0 {
    for _ in 0 ..< m {
        let cardp2 = readLine()! // the m cards of player 2

        // Color does not matter, we take a substring by excluding the last character
        let index = cardp2.index(cardp2.startIndex, offsetBy: cardp2.count - 1)
        deck2.append(String(cardp2[..<index]))
    }
}

var turns = 0
var discardP1 = [String]()
var discardP2 = [String]()

// While players have cards to play
while deck1.count > 0 && deck2.count > 0 && !draw {
    // Draw: Get the card on the top of the deck
    let card1 = deck1.removeFirst()
    let card2 = deck2.removeFirst()

    // Card values.
    let c1 = cardValues[card1] ?? 0
    let c2 = cardValues[card2] ?? 0

    // If the card value of player 1 is higher than the card of player 2
    if c1 > c2 {
        // For the cards: player 1 first (discard then card 1) then player 2 (discard then card 2)
        deck1 += discardP1
        deck1.append(card1)
        deck1 += discardP2
        deck1.append(card2)
        turns += 1

        // Discard piles must to be empty
        discardP1.removeAll()
        discardP2.removeAll()
    } else if c2 > c1 {
        // For the cards: player 1 first (discard then card 1) then player 2 (discard then card 2)
        deck2 += discardP1
        deck2.append(card1)
        deck2 += discardP2
        deck2.append(card2)
        turns += 1

        // Discard piles must to be empty
        discardP1.removeAll()
        discardP2.removeAll()
    } else {
        if deck1.count < 4 || deck2.count < 4 {
            draw = true
        } else {
            discardP1.append(card1)
            discardP1.append(deck1.removeFirst())
            discardP1.append(deck1.removeFirst())
            discardP1.append(deck1.removeFirst())
            discardP2.append(card2)
            discardP2.append(deck2.removeFirst())
            discardP2.append(deck2.removeFirst())
            discardP2.append(deck2.removeFirst())
        }
    }
}

if draw {
    print("PAT")
} else {
    print(deck2.count == 0 ? "1 \(turns)" : "2 \(turns)")
}