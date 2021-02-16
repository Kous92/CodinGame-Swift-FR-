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

let N = Int(readLine()!)! // Number of elements which make up the association table.
let Q = Int(readLine()!)! // Number Q of file names to be analyzed.

// Key: file extension, value: MIME type
var extensionDictionary = [String: String]()

if N > 0 {
    for i in 0...(N-1) {
        let inputs = (readLine()!).split(separator: " ").map(String.init)
        let EXT = inputs[0] // file extension
        let MT = inputs[1] // MIME type.

        // Fill the dictionary: key: file extension, value: MIME type. To avoid any confusion, extension is lowercased.
        extensionDictionary[EXT.lowercased()] = MT
    }
}
if Q > 0 {
    for _ in 0 ..< Q {
        let fileName = readLine()!.lowercased() // One file name per line. Lowercased to avoid confusion

        if !fileName.contains(".") {
            print("UNKNOWN")
        } else {
            // Substring, extension name after last index of "."
            let range = fileName.index(after: fileName.lastIndex(of: ".")!) ..< fileName.endIndex

            // fileName[range]: substring containing the file extension
            if let ext = extensionDictionary[String(fileName[range])] {
                print(ext)
            } else {
                print("UNKNOWN")
            }
        }
    }
}