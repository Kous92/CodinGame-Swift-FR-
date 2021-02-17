import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/*
L: the power of the light from the candle, the radius range
N: Number of rows and columns, the bounds of the room
*/
let N = Int(readLine()!)!
let L = Int(readLine()!)!
var room = [[Int]](repeating: [Int](repeating: 0, count: N), count: N)

func spreadLight(line: Int, column: Int) {
    // Radius in line: -L+1 = right of candle, L-1 = left of the candle
    for i in -L+1 ..< L {
        // Radius in column: -L+1 = bottom of candle, L-1 = top of the candle
        for j in -L+1 ..< L {
            // From the spot at the given coordinates, i and j are in the range of the light of the candle
            let l = line + i
            let c = column + j

            // If the light is not spread out of the room bounds, +1 to light intensity on room spot
            if (l >= 0 && l < N) && (c >= 0 && c < N) {
                room[l][c] += 1
            }
        }
    }
}

if N > 0 {
    for i in 0 ..< N {
        var j = 0
        for cell in ((readLine()!).split(separator: " ").map(String.init)) {
            // Cell have a candle
            if cell == "C" {
                spreadLight(line: i, column: j)
            }

            j += 1
        }
    }
}

var darkPlaces = 0

// After the light spread operations, check if any spot is dark
for i in 0 ..< N {
    for j in 0 ..< N {
        // 0 = no light
        if room[i][j] == 0 {
            darkPlaces += 1
        }
    }
}

print(darkPlaces)