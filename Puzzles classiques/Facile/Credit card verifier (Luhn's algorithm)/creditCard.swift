import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()


func luhnCreditCardCheck(_ cardNumber: String) -> Bool {
    var sum = 0
    
    // 1) We must to read the card number from right to left
    let reversedNumber = cardNumber.reversed().map { String($0) }

    // 2) The enumerated iterator will help with the index and his value to find the odd indices digits
    for tuple in reversedNumber.enumerated() {
        if let digit = Int(tuple.element) {
            // Check if the digit is at odd position
            let odd = tuple.offset % 2 == 1

            // Check if the digit is at odd position
            switch (odd, digit) 
            {
                // Add 9 if the digit = 9
                case (true, 9):
                    sum += 9
                // Double the digit value, divide by 9 if it's > 9 then add it to the sum
                case (true, 0...8):
                    sum += (digit * 2) % 9
                default:
                    sum += digit
            }
        } else {
            return false
        }
    }

    // The final sum is divisible by 10, card number is valid.
    return sum % 10 == 0
}

let n = Int(readLine()!)!
print("Credit card numbers to check: \(n)", to: &errStream)

/* Here, the card numbers are separated by spaces in 4 blocks of 4 digits, we have first to remove the spaces
   of the card number to check after his validity with Luhn's algorithm. We can get rid of the spaces 
   with the filter closure by using the following condition: card.filter { $0 != " "} */
if n > 0 {
    for i in 0...(n-1) {
        let card = readLine()!
        print("Card \(i + 1): \(card)", to: &errStream)

        // Each card will be checked if it's valid or not. Spaces are removed
        if luhnCreditCardCheck(card.filter { $0 != " "}) {
            print("YES")
        } else {
            print("NO")
        }
    }
}

// Write an answer using print("message...")
// To debug: print("Debug messages...", to: &errStream)
