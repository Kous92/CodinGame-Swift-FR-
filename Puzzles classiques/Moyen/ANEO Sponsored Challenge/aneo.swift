import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

struct LightTraffic {
    let distance: Int
    let duration: Int

    init(distance: Int, duration: Int) {
        self.distance = distance
        self.duration = duration
    }
}

func isEveryLightGreen(lights: [LightTraffic], speed: Int) -> Bool {
    for light in lights {
        // Time to travel: distance / (speed / 3.6). km/h to m/s = km/h / 3.6
        let travelTime = Float(light.distance) / (Float(speed) / 3.6)

        // Round to integer, no digits for the float part
        let travelTimeRounded = roundf(travelTime)

        // Checking float precision
        let isRounded = travelTimeRounded - travelTime < 0.01
        let totalTravelTime = isRounded ? travelTimeRounded : travelTime

        // Green light is even number: If total travel time / light duration is dividable by 2
        let ratioWithLightDuration = floorf(totalTravelTime / Float(light.duration))
        
        // Odd: red light, even: green light
        if Int(ratioWithLightDuration) % 2 != 0 {
            return false
        }
    }

    return true
}

let maxSpeed = Int(readLine()!)! // Speed limit
let lightCount = Int(readLine()!)! // Number of lights
var lightsTraffic = [LightTraffic]()

// Fill the array of each light
if lightCount > 0 {
    for _ in 0 ..< lightCount {
        let inputs = (readLine()!).split(separator: " ").map(String.init)
        lightsTraffic.append(LightTraffic(distance: Int(inputs[0])!, duration: Int(inputs[1])!))
    }
}

// Starting by the max speed, the decrease by 1 until all tested lights are green.
for speed in (0 ... maxSpeed).reversed() {
    // If all lights are green, speed is perfect
    if isEveryLightGreen(lights: lightsTraffic, speed: speed) {
        print(speed)
        break
    }
}