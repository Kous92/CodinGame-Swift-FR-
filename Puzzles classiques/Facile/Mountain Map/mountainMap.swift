import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let n = Int(readLine()!)! // the number of mountains
var heights = readLine()!.split(separator: " ").map{Int(String($0))!}
let maxHeight = heights.max()!
print(heights, to: &errStream)
print(maxHeight, to: &errStream)

// Parts of the mountains, in ASCII ART
var strings = [String]()

// This function allows to get rid of trailing whitespaces, that means any whitespace after the right side of mountain with "\"
extension String {
    func trimTrailingWhitespaces() -> String {
        return self.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression)
    }
}

// Start from the highest to the lowest
for i in (0 ..< maxHeight).reversed() {
    var str = ""

    for j in 0 ..< heights.count {
        // Bottom of the mountain: Spaces between / and \ = 2 * (height - 1)
        if i == 0 {
            str += ("/" + String(repeating: " ", count: 2 * (heights[j] - 1)) + "\\")
        } else {
            // Peak of the mountain
            if (heights[j] - 1) == i {
                let spaceLength = heights[j] - 1
                str += (String(repeating: " ", count: spaceLength) + "/\\" + String(repeating: " ", count: spaceLength))
            } 
            else if i > heights[j] - 1 {
                // The actual height is higher than the height of the actual mountain.
                str += String(repeating: " ", count: 2 * heights[j])
            } else {
                // Between the bottom and peak, each level have spaces before "/", after "\" and between "/" and "\"
                let spaceLengthOut = i
                let spaceLengthIn = (heights[j] * 2) - (2 * spaceLengthOut) - 2
                str += String(repeating: " ", count: spaceLengthOut) + "/" + String(repeating: " ", count: spaceLengthIn) + "\\" + String(repeating: " ", count: spaceLengthOut)
            }
        }
    }

    strings.append(str)
} 

// Display the mountains, get rid of extra trailing whitespaces
for i in 0 ..< strings.count{
    print(strings[i].trimTrailingWhitespaces())
}