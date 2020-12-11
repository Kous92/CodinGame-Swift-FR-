import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

func translate7segmentToDigit(_ line1: String, _ line2: String, _ line3: String) -> String {
    /*
    print(">>> Converting the following digit: ", to: &errStream)
    print("\(line1): \(line1.count)", to: &errStream)
    print("\(line2): \(line2.count)", to: &errStream)
    print("\(line3): \(line3.count)", to: &errStream)
    */

    // 0, 2, 3, 5, 6, 7, 8 or 9
    if line1 == " _ " {
        // 8 or 9
        if line2 == "|_|" {
            if line3 == "|_|" {
                return "8"
            } else {
                return "9"
            }
        } else if line2 == " _|" {
            // 2 or 3
            if line3 == "|_ " {
                return "2"
            } else {
                return "3"
            }
        } else if line2 == "|_ " {
            // 5 or 6
            if line3 == " _|" {
                return "5"
            } else {
                return "6"
            }
        } else if line2 == "  |" {
            // 7 or 0
            return "7"
        } else {
            return "0"
        }
    } else {
        // 1 or 4
        if line2 == "  |" && line3 == "  |" {
            return "1"
        } else {
            return "4"
        }
    }
} 

let line1 = readLine()!
let line2 = readLine()!
let line3 = readLine()!
var solution = ""

// Each 7-segment digit have 3 characters
/* It's not easy at the beginning on Swift to extract a substring:
    -> Swift is type-safe and strongly typed
    -> You cannot use Int as index, there is a dedicated type called Index.
    -> You have to use the index method from String
    -> To extract a substring between 2 indices:
    1) Get the index of the first character of the substring (use startIndex then i for the start position)
    2) Get the index of the last character of the substring (use the extracted start index then add 3 for the end position)
    3) Use the range operator ..< (range = start ..< end)
    4) Get the substring (type Substring) with [] and range: substr = str[range]
    5) You must convert it to String
*/
for i in stride(from: 0, to: line1.count, by: 3) {
    let start = line1.index(line1.startIndex, offsetBy: i)
    let end = line1.index(start, offsetBy: 3)
    let range = start ..< end

    /*
    print(">>> Digit to translate: ", to: &errStream)
    print(line1[range], to: &errStream)
    print(line2[range], to: &errStream)
    print(line3[range], to: &errStream)
    */
    solution += translate7segmentToDigit(String(line1[range]), String(line2[range]), String(line3[range]))
}

print(solution)