import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

class UnaryEncoder {
    var plainMessage: String
    var binaryMessage: String
    var unaryMessage: String

    init(plainMessage: String) {
        self.plainMessage = plainMessage
        self.binaryMessage = ""
        self.unaryMessage = ""
        self.plainToBinary()
        self.binaryToUnary()
    }

    // Plain to binary: ASCII value then encode to binary from each character
    private func plainToBinary(){
        for c in plainMessage {
            // Encoded character in binary
            var binaryChar = String(c.asciiValue!, radix: 2)

            // To ensure that is 7 bits, add missing 0 at the top of the string.
            while binaryChar.count < 7 {
                binaryChar.insert("0", at: binaryChar.startIndex)
            }

            // Each encoded character in binary is concatenated
            binaryMessage += binaryChar
        }
    }

    func binaryToUnary() {
        let b = Array(binaryMessage)
        var currentLetter = ""
        var change = false

        currentLetter = String(b[0])
        unaryMessage += currentLetter == "1" ? "0 " : "00 "
        unaryMessage += "0"

        for i in 1 ..< b.count {
            if String(b[i]) == currentLetter {
                unaryMessage += "0"
            } else {
                currentLetter = String(b[i])
                change = true
            }
            
            if change {
                unaryMessage += currentLetter == "1" ? " 0 " : " 00 "
                unaryMessage += "0"
                change = false
            }
        }
    }
}

let MESSAGE = readLine()!
let chuckNorris = UnaryEncoder(plainMessage: MESSAGE)

print(chuckNorris.unaryMessage)