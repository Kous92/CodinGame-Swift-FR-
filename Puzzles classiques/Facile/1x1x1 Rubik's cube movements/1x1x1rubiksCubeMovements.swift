import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

func defineRotationCycle(rotation: String) -> [String] {
    if rotation.contains("x") {
        // x-axis
        return ["U", "B", "D", "F"]
    } else if rotation.contains("y") {
        // y-axis
        return ["L", "B", "R", "F"]
    } else {
        // z-axis
        return ["U", "R", "D", "L"]
    }
}

func applyRotation(side: String, rotation: String) -> String {
    // If the rotation instruction contains ', counter clockwise. Clockwise otherwise.
    let counterClockwise = rotation.contains("'")
    let rotationCycle = defineRotationCycle(rotation: rotation)

    // Check if the side is inside the rotation cyle
    if rotationCycle.contains(side) {
        // Apply the rotation then return the new side.
        if let sideIndex = rotationCycle.firstIndex(of: side) {
            if sideIndex < rotationCycle.count - 1 && !counterClockwise {
                return rotationCycle[sideIndex + 1]
            } else if sideIndex == rotationCycle.count - 1 && !counterClockwise {
                return rotationCycle[0]
            } else if sideIndex > 0 && counterClockwise {
                return rotationCycle[sideIndex - 1]
            } else if sideIndex == 0 && counterClockwise {
                return rotationCycle[rotationCycle.count - 1]
            }
        }
    }
    
    return side
}

// List of the rotations to proceed
let rotations = readLine()!.components(separatedBy: " ")

// The actual directions of Rubik's cube faces
var face1 = readLine()!
var face2 = readLine()!

for rotation in rotations {
    face1 = applyRotation(side: face1, rotation: rotation)
    face2 = applyRotation(side: face2, rotation: rotation)
}

print(face1)
print(face2)