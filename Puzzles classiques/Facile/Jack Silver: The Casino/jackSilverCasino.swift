import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

func game(bet: Int, ball: Int, call: String, number: Int) -> Int {
    if (call == "EVEN" && ball % 2 == 0 && ball != 0) || (call == "ODD" && ball % 2 == 1) {
        return bet * 2
    } else if call == "PLAIN" && ball == number {
        return bet * 36
    } else {
        return 0
    }
}

let ROUNDS = Int(readLine()!)!
var CASH = Int(readLine()!)!

if ROUNDS > 0 {
    for _ in 0 ..< ROUNDS {
        let bet = Int(ceil(0.25 * Double(CASH)))
        CASH -= bet

        let PLAY = readLine()!.split(separator: " ")
        let BALL = Int(PLAY[0])!
        let CALL = String(PLAY[1])

        var NUMBER = 0

        if PLAY.count > 2 && CALL == "PLAIN" {
            NUMBER = Int(PLAY[2])!
        }

        // Game round
        CASH += game(bet: bet, ball: BALL, call: CALL, number: NUMBER)
    }
}

print(CASH)