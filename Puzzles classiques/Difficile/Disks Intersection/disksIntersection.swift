import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

struct Disk {
    var x: Int
    var y: Int
    var r: Int

    init(x: Int, y: Int, r: Int) {
        self.x = x
        self.y = y
        self.r = r
    }
}

func intersectionArea(A: Disk, B: Disk) -> Double {
    let d = sqrt(pow(Double(B.x - A.x), 2) + pow(Double(B.y - A.y), 2))

    // Intersection
    if (d < Double(A.r + B.r)) {
        let a = A.r * A.r
        let b = B.r * B.r

        let x = (Double(a - b) + (d * d)) / (2 * d)
        let y = sqrt(Double(a) - Double(x * x))

        if y.isNaN {
            // One circle contains the other
            return Double.pi * Double(min(a, b))
        } else {
            // Normal intersection calculation
            return Double(a) * asin(y / Double(A.r)) + Double(b) * asin(y / Double(B.r)) - x * y - sqrt(Double(b - a) + Double(x * x)) * y
        }
    }

    // No intersection
    return 0
}

let inputs = (readLine()!).split(separator: " ").map(String.init)
let x1 = Int(inputs[0])!
let y1 = Int(inputs[1])!
let r1 = Int(inputs[2])!
let disk1 = Disk(x: x1, y: y1, r: r1)

let inputs2 = (readLine()!).split(separator: " ").map(String.init)
let x2 = Int(inputs2[0])!
let y2 = Int(inputs2[1])!
let r2 = Int(inputs2[2])!
let disk2 = Disk(x: x2, y: y2, r: r2)

print(String(format: "%.2f", intersectionArea(A: disk1, B: disk2)))