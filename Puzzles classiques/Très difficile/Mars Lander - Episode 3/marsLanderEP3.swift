import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let surfaceN = Int(readLine()!)! // the number of points used to draw the surface of Mars.
var land = [(x: Int, y: Int)]()
var ground = -1
var high = 0
var testCase = -1
var offTheMark = false

if surfaceN > 0 {
    for i in 0 ..< surfaceN {
        let inputs = (readLine()!).split(separator: " ").map(String.init)
        let landX = Int(inputs[0])! // X coordinate of a surface point. (0 to 6999)
        let landY = Int(inputs[1])! // Y coordinate of a surface point. By linking all the points together in a sequential fashion, you form the surface of Mars.
        land.append((x: landX, y: landY))
        high = max(high, landY)
        
        if i == 0 {
            continue
        }
        
        if land[i].y == land[i-1].y {
            ground = i - 1
        }
    }
}

// game loop
while true {
    let inputs = (readLine()!).split(separator: " ").map(String.init)
    let X = Int(inputs[0])!
    let Y = Int(inputs[1])!
    let hSpeed = Int(inputs[2])! // the horizontal speed (in m/s), can be negative.
    let vSpeed = Int(inputs[3])! // the vertical speed (in m/s), can be negative.
    let fuel = Int(inputs[4])! // the quantity of remaining fuel in liters.
    let rotate = Int(inputs[5])! // the rotation angle in degrees (-90 to 90).
    let power = Int(inputs[6])! // the thrust power (0 to 4).

    if testCase == -1 {
        if (hSpeed == 0) {
            testCase = 1
        } else {
            testCase = 0
        }
    }

    // RULES FOR TEST 1
    if testCase == 0 {
        if Y - land[ground].y < 800 {
            if vSpeed <= -39 {
                print("0 4") 
            }
            else { 
                print("0 3")
            }

            continue
        }
        else if X <= land[ground + 1].x {
            print("-45 4")
            continue
        }
        else if vSpeed <= -20 {
            print("0 4")
            continue
        }
        else if vSpeed <= -12 
        {
            print("0 2")
            continue
        }
        else {
            print("45 4") 
            continue
        }
    }

    // RULES FOR TEST 2
    if testCase == 1 {
        print(offTheMark, to: &errStream)
        if vSpeed < -45 || Y <= 1135 {
            print("0 4") 
            continue
        }
        else if X <= land[ground].x {
            print("-32 3") 
            continue
        }
        else if vSpeed == 0 && Y > high {
            print("0 3")
            continue
            }
        else if vSpeed < 0 || Y < high {
            print("0 4")
            continue
        }
        else if vSpeed >= 12 || offTheMark {
            offTheMark = true
            print("45 4")
            continue
        }
        else {
            print("0 4")
            continue
        }
    }
}