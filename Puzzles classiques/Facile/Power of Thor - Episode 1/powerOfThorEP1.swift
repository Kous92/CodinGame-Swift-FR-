import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 * ---
 * Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.
 **/

let inputs = (readLine()!).split(separator: " ").map(String.init)
let lightX = Int(inputs[0])! // the X position of the light of power
let lightY = Int(inputs[1])! // the Y position of the light of power
let initialTx = Int(inputs[2])! // Thor's starting X position
let initialTy = Int(inputs[3])! // Thor's starting Y position

print("Thunder: \(lightX)\(lightY)", to: &errStream)
print("Initial: \(initialTx)\(initialTy)", to: &errStream)

var x = initialTx
var y = initialTy

// game loop
while true {
    let _ = Int(readLine()!)! // The remaining amount of turns Thor can move. Do not remove this line.
    var directions = ""

    if lightY < y {
        directions += "N"
        y -= 1
    } 
    
    if lightY > y {
        directions += "S"
        y += 1
    }

    if lightX < x {
        directions += "W"
        x -= 1
    } 
    
    if lightX > x {
        directions += "E"
        x += 1
    }

    print(directions)
}