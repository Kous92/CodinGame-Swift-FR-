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

let inputs = (readLine()!).split(separator: " ").map(String.init)
let nbFloors = Int(inputs[0])! // number of floors
let width = Int(inputs[1])! // width of the area
let nbRounds = Int(inputs[2])! // maximum number of rounds
let exitFloor = Int(inputs[3])! // floor on which the exit is found
let exitPos = Int(inputs[4])! // position of the exit on its floor
let nbTotalClones = Int(inputs[5])! // number of generated clones
let nbAdditionalElevators = Int(inputs[6])! // ignore (always zero)
let nbElevators = Int(inputs[7])! // number of elevators

print("Floors: \(nbFloors)", to: &errStream)
print("Area width: \(width)", to: &errStream)
print("Maximum rounds: \(nbRounds)", to: &errStream)
print("Floor level to exit: \(exitFloor)", to: &errStream)
print("Position to exit on the floor \(exitFloor): \(exitPos)", to: &errStream)
print("Generated clones: \(nbTotalClones)", to: &errStream)
print("Number of elevators: \(nbElevators)", to: &errStream)

// On each floor, we store the position of the elevator (size: number of elevators + 1 exit)
// Inside a dictionary, the content must be unwrapped (it's an Int?)
var elevators = [Int: Int]()

if nbElevators > 0 {
    for i in 0...(nbElevators-1) {
        let inputs = (readLine()!).split(separator: " ").map(String.init)
        let elevatorFloor = Int(inputs[0])! // floor on which this elevator is found
        let elevatorPos = Int(inputs[1])! // position of the elevator on its floor
        elevators[elevatorFloor] = elevatorPos
    }
}

// game loop
while true {
    let inputs = (readLine()!).split(separator: " ").map(String.init)
    let cloneFloor = Int(inputs[0])! // floor of the leading clone
    let clonePos = Int(inputs[1])! // position of the leading clone on its floor
    let direction = inputs[2] // direction of the leading clone: LEFT or RIGHT
    var decision = "WAIT" // action: WAIT or BLOCK

    // Here we have to take a decision. BLOCK if the position is wrong

    // This first condition block will prevent any segfaults
    if cloneFloor < 0 || cloneFloor == exitFloor {
        let directionExit: String
        if (exitPos - clonePos) > 0 {
            directionExit = "RIGHT"
        } else {
            directionExit = "LEFT"
        }

        // Compare the direction of the exit to the direction of the clone
        if directionExit != direction {
            decision = "BLOCK"
        } else {
            decision = "WAIT"
        }
    } else {
        let nextFloorElevatorPosition = elevators[cloneFloor]!
        let directionElevator: String

        // Which direction is the elevator ?
        if (nextFloorElevatorPosition - clonePos) > 0 {
            directionElevator = "RIGHT"
        } else {
            directionElevator = "LEFT"
        }

        // Clone is on elevator: DON'T MOVE
        if (nextFloorElevatorPosition - clonePos) == 0 {
            decision = "WAIT"
        } else {
            // Compare the direction of the elevator to the direction of the clone
            if directionElevator != direction {
                // Clone is on elevator: DON'T MOVE
                decision = "BLOCK"
            } else {
                decision = "WAIT"
            }
        }
    }

    print(decision)
}