import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

struct Zone {
    var low: Int
    var high: Int

    init(low: Int, high: Int) {
        self.low = low
        self.high = high
    }

    mutating func update(zone: Zone) {
        self.low = zone.low
        self.high = zone.high
    }

    mutating func update(low: Int, high: Int) {
        self.low = low
        self.high = high
    }
}

class Batman {
    var current: Zone
    var cold: Zone
    var warm: Zone
    var lastX: Int
    var lastY: Int
    var x: Int
    var y: Int
    var foundX: Bool
    var firstChance: Bool
    var outside: Bool
    let width: Int
    let height: Int

    init(width: Int, height: Int, x: Int, y: Int) {
        self.width = width
        self.height = height
        current = Zone(low: 0, high: width - 1) // Actual bomb detector status (COLDER, WARMER, SAME or UNKNOWN)
        cold = Zone(low: 0, high: width - 1)
        warm = Zone(low: 0, high: width - 1)
        lastX = 0
        lastY = 0
        self.x = x
        self.y = y
        foundX = false
        firstChance = true
        outside = false
    }

    private func bombFound() -> Bool {
        let tmpX = x
        let tmpY = y

        if foundX {
            // Binary search, zone reduced by half on the height of the building
            y = (current.low + current.high) / 2
        } else {
            // Binary search, zone reduced by half on the width of the building
            x = (current.low + current.high) / 2
            foundX = true
            current.update(low: 0, high: height - 1)
            warm.update(zone: current)
            cold.update(zone: current)
        }

        firstChance = true

        // No changes on x and y positions after binary search: Bomb found
        return x == tmpX && y == tmpY
    }

    private func getNextPosition(value: Int, limit: Int) -> Int {
        let low = current.low;
        let high = current.high;
        var give = low + high - value;

        if outside {
            if value == 0 {
                give = (give-0)/2;
            }
            else if value == limit {
                give = (limit + give) / 2
            }
        }

        outside = false

        if give == value { 
            give = value + 1
        }

        if give < 0 { 
            give = 0
            outside = true
        }

        else if give > limit {
            give = limit 
            outside = true
        }

        // Binary search
        let lower = (give + value - 1) / 2
        let higher = (give + value + 1) / 2

        if give > value {
            warm.update(low: higher, high: high)
            cold.update(low: low, high: lower)
        }
        else if give < value {
            warm.update(low: low, high: lower)
            cold.update(low: higher, high: high)
        }

        return give
    }

    func nextJumpMove(_ bombDir: String) {
        let tmpX = x;
        let tmpY = y;

        switch bombDir {
            // Batman is closer to the bomb
            case "WARMER":
            current.update(zone: warm)
            break

            // Batman is farther to the bomb
            case "COLDER":
            current.update(zone: cold)
            break

            // Same position of the bomb, time to save the hostages.
            case "SAME":
            // Of course it won't be on the first jump
            if !firstChance {
                // No bomb found, no more operations to do?
                if !bombFound() {
                    return
                }
            }
            break

            default:
            break
        }

        // Actual search zone
        if current.low >= current.high {
            if !bombFound() {
                return
            }
        }

        firstChance = false

        // Finding next position
        if foundX {
            y = getNextPosition(value: y, limit: height - 1)
        } else {
            x = getNextPosition(value: x, limit: width - 1)
        }

        lastX = tmpX
        lastY = tmpY
    }
}

let inputs = (readLine()!).split(separator: " ").map(String.init)
let W = Int(inputs[0])! // width of the building.
let H = Int(inputs[1])! // height of the building.
let N = Int(readLine()!)! // maximum number of turns before game over.

// Batman starting position
let inputs2 = (readLine()!).split(separator: " ").map(String.init)
let X0 = Int(inputs2[0])!
let Y0 = Int(inputs2[1])!

var batman = Batman(width: W, height: H, x: X0, y: Y0)

// game loop
while true {
    let bombDir = readLine()! // Current distance to the bomb compared to previous distance (COLDER, WARMER, SAME or UNKNOWN)

    // Apply the binary search with the bomb direction
    batman.nextJumpMove(bombDir)

    print("\(batman.x) \(batman.y)")
}