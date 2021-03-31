import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let N = Int(readLine()!)!
var buildings = [(x: Int, y: Int)]()

if N > 0 {
    for _ in 0 ..< N {
        let inputs = (readLine()!).split(separator: " ").map(String.init)
        let X = Int(inputs[0])!
        let Y = Int(inputs[1])!

        buildings.append((x: X, y: Y))
    }
}

var minimalCableLength = 0

// Sort building by Y axis positions
buildings.sort { (position1, position2) -> Bool in
    return position1.y < position2.y
}

let median = Int(ceil(Double(buildings.count) / 2.0)) - 1
var y = buildings[median].y;

// We need the average y and the x range
var minX = buildings[0].x;
var maxX = buildings[0].x;

for i in 0 ..< buildings.count {
    let building = buildings[i];
    
    if building.x < minX {
        minX = building.x;
    } else if building.x > maxX {
        maxX = building.x;        
    }
}

minimalCableLength = maxX - minX;

// All cables
for i in 0 ..< buildings.count {
    minimalCableLength += abs(buildings[i].y - y)
}

print(minimalCableLength)