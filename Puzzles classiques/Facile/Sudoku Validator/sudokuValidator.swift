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

var sudokuGrid = [[Int]]()
var sudokuGrid2 = [[Character]]()

func isValidSudoku(_ grid: [[Character]]) -> Bool {
    var rows = Array(repeating: Set<Character>(), count: 9)
    var columns = Array(repeating: Set<Character>(), count: 9)
    var blocks = Array(repeating: Set<Character>(), count: 9) // 3x3 grid block set

    for (i, row) in grid.enumerated() {
        for (j, char) in row.enumerated() where char != "." {
            if !rows[i].insert(char).inserted {
                return false
            }
            if !columns[j].insert(char).inserted {
                return false
            }
            
            let block = (i / 3) + 3 * (j / 3)
            if !blocks[block].insert(char).inserted {
                return false
            }
        }
    }

    return true
}

// This way is better and more efficient to fill the sudoku grid
for i in 0...8 {
    let array = ((readLine()!).split(separator: " ").map(String.init))
    sudokuGrid.append(array.map { Int($0)! })
    sudokuGrid2.append(array.map { Character($0) })
}

print(isValidSudoku(sudokuGrid2))