import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

var landingPoints = 0
// Position components
var x = 0
var y = 0
// Landing coordinates
var X = 0 
var Y = 0
// Speed components
var sX = 0
var sY = 0

var lastLandY = 0
var lastLandX = 0

let surfaceN = Int(readLine()!)! // The number of points used to draw the surface of Mars.

// Compute the landing position
if surfaceN > 0 {
    for _ in 0 ..< surfaceN {
        let inputs = (readLine()!).split(separator: " ").map(String.init)
        let x = Int(inputs[0])! // X coordinate of a surface point. (0 to 6999)
        let y = Int(inputs[1])! // Y coordinate of a surface point. By linking all the points together in a sequential fashion, you form the surface of Mars.

        if y == lastLandY {
            X = (lastLandX + x) / 2
            Y = lastLandY
        }

        lastLandX = x; 
        lastLandY = y;
    }
}

// game loop
while true {
    let inputs = (readLine()!).split(separator: " ").map(String.init)
    x = Int(inputs[0])!
    y = Int(inputs[1])!
    let hSpeed = Int(inputs[2])! // the horizontal speed (in m/s), can be negative.
    let vSpeed = Int(inputs[3])! // the vertical speed (in m/s), can be negative.
    let fuel = Int(inputs[4])! // the quantity of remaining fuel in liters.
    var rotate = Int(inputs[5])! // the rotation angle in degrees (-90 to 90).
    var power = Int(inputs[6])! // the thrust power (0 to 4).

    // Calculate the rotation if the difference between landing and position Y coordinates is higher than 100
    if ((y - Y) > 100) {
        rotate = ((x - X) / 100) + Int(Double(hSpeed) * 0.64)
    } else {
        // No rotation
        rotate = 0
    }
    
    // More power if the vertical speed is under -20m/s and the square of horizontal speed is over 1,600 m/s
    if ((vSpeed < -20) || (hSpeed * hSpeed > 1600)) {
        power = 4
    } else {
        power = 2
    }

    // rotate power. rotate is the desired rotation angle. power is the desired thrust power.
    print("\(rotate) \(power)")
}