import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

class CGXIndenter {
    var cgxDataFormatted: String = ""
    var tabulations: Int = 0
    var cgxLines: [String]
    var stringStarted: Bool = false
    var lastCharacter: Character = "$"

    init(_ cgxLines: [String]) {
        self.cgxLines = cgxLines
    }

    private func checkNextLine(c: Character) {
        if lastCharacter == ")" && c != ";" && c != ")" && c != "(" {
            cgxDataFormatted += ("\n" + String(repeating: " ", count: tabulations * 4))
        } else if lastCharacter == "(" && c != ")" {
            cgxDataFormatted += ("\n" + String(repeating: " ", count: tabulations * 4))
        } else if lastCharacter == ";" {
            cgxDataFormatted += "\n" + String(repeating: " ", count: tabulations * 4)
        } else if lastCharacter == "=" && c == "(" {
            cgxDataFormatted += "\n" + String(repeating: " ", count: tabulations * 4)
        }
    }

    func formatCGXinput() -> String {
        for line in cgxLines {
            for c in line {
                if c == "\'" && !stringStarted {
                    checkNextLine(c: c)
                    stringStarted = true
                    cgxDataFormatted += "\(c)"
                }
                else if stringStarted && c == "\'" {
                    stringStarted = false
                    cgxDataFormatted += "\(c)"
                } else if stringStarted {
                    cgxDataFormatted += "\(c)"
                } else if c.isWhitespace {
                    continue
                } else {
                    checkNextLine(c: c)

                    if c == "(" {
                        cgxDataFormatted += "("
                        tabulations += 1
                    } else if c == ")" {
                        tabulations -= 1
                        cgxDataFormatted += ("\n" + String(repeating: " ", count: tabulations * 4) + ")")
                    } else {
                        cgxDataFormatted += "\(c)"
                    }
                }

                lastCharacter = c
            }
        }

        return cgxDataFormatted
    }
}

let N = Int(readLine()!)!
var cgxLines = [String]()

if N > 0 {
    for _ in 0 ..< N {
        cgxLines.append(readLine()!)
    }
}

let cgx = CGXIndenter(cgxLines)
print(cgx.formatCGXinput())