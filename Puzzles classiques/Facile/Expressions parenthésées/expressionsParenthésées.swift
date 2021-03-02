import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

func isBalanced(_ expression: String) -> Bool {
    var bracketBalance = 0

    for c in expression {
        switch c {
            case "(":
            bracketBalance += 1
            case ")":
            bracketBalance += -1
            case "[":
            bracketBalance += 2
            case "]":
            bracketBalance += -2
            case "{":
            bracketBalance += 3
            case "}":
            bracketBalance += -3
            default:
            bracketBalance += 0
        }

        if (bracketBalance < 0) {
            return false
        }
    }

    return bracketBalance == 0
}


let expression = readLine()!
print(isBalanced(expression))