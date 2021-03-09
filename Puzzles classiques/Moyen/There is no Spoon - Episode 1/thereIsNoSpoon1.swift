import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

func getNeighbors(_ y: Int, _ x: Int, _ height: Int, _ width: Int, _ matrix: [[Character]])
{
    let x0 = x
    let y0 = y
    var x1 = -1
    var y1 = -1
    var x2 = -1
    var y2 = -1
    
    // Right neighbor
    for j in x + 1 ..< width {
        // Empty cell
        if matrix[y][j] == "0" {
            x1 = j
            y1 = y
            break
        }
    }

    // Down
    for i in y + 1 ..< height {
        // Empty cell
        if matrix[i][x] == "0" {
            x2 = x
            y2 = i
            break
        }
    }

    // Three coordinates: a node, its right neighbor, its bottom neighbor
    print("\(x0) \(y0) \(x1) \(y1) \(x2) \(y2)")
}

/**
 * Don't let the machines win. You are humanity's last hope...
**/
let width = Int(readLine()!)! // the number of cells on the X axis
let height = Int(readLine()!)! // the number of cells on the Y axis
var matrix = [[Character]]()

if height > 0 {
    for i in 0 ..< height {
        let line = [Character](readLine()!) // width characters, each either 0 or .
        matrix.append(line)

        for j in 0 ..< width {
            matrix[i][j] = line[j]
        }
    }

    for i in 0 ..< height {
        for j in 0 ..< width {
            if matrix[i][j] == "." {
                continue
            }
            getNeighbors(i,j, height, width, matrix)
        }
    }
}