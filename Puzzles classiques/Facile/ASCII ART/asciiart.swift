import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/

let L = Int(readLine()!)!
let H = Int(readLine()!)!
var T = readLine()!

// 1) Create a full string concatenated of all rows from input
var ROWS = ""

if H > 0 {
    for i in 0...(H-1) {
        let ROW = readLine()!
        // print(ROW, to: &errStream)
        ROWS += ROW
    }
}

// 2) Ensure that the text to convert to ASCII ART is uppercased
T = T.uppercased()
var solution = ""

// 3) Convert the string to an array of characters
var array = Array(T)
// print(T, to: &errStream)

// 4) Iterate through the height of the letter
for row in 0 ..< H {
    // 5) Iterate through each character of the text
    for c in array {
        // 6) Convert each character to ASCII value, it's not automatic in Swift
        let ascii = c.asciiValue!
        /* 7) Get the ascii value position from the 27 available characters (A to Z and ?)
        -> If ASCII code < 65 or > 90: ASCII value is set to 26
        -> Else: Actual value - 65
        */
        let position = ascii < 65 || ascii > 90 ? 26 : ascii - 65

        // 8) Prepare the cursor to extract the substring in "ROWS" variable with the position, iterator of height and length
        let start = (L * 27) * row + Int(position) * L
        // print(start, to: &errStream)

        // 9) Extract the range of the substring between start and start + L positions
        let startSub = ROWS.index(ROWS.startIndex, offsetBy: start)
        let endSub = ROWS.index(ROWS.startIndex, offsetBy: start + L)
        let range = startSub ..< endSub

        // 10) Extract the substring (ROW) with the range and concatenate
        solution += ROWS[range]
    }
    // 11) Don't forget for the next line.
    solution += "\n"
}

print(solution);