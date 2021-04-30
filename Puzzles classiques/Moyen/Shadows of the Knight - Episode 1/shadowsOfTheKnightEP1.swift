import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let inputs = (readLine()!).split(separator: " ").map(String.init)
let W = Int(inputs[0])! // width of the building.
let H = Int(inputs[1])! // height of the building.
let N = Int(readLine()!)! // maximum number of turns before game over.
let inputs2 = (readLine()!).split(separator: " ").map(String.init)
var x = Int(inputs2[0])! // Replaces X0
var y = Int(inputs2[1])! // Replaces Y0

// If test failed with -1, change xMin and yMin to 0.
// If test failed with 0, change xMin and yMin to -1.
var xMin = -1 // Minimum width
var xMax = W // Maximum width
var yMin = -1 // Minimum height
var yMax = H// Maximum height

/*
- Before applying binary search: change yMin and yMax as height, xMin and xMax as width
-> UP: -1 to yMax
-> DOWN: +1 to yMin
-> LEFT: -1 to xMax
-> RIGHT: +1 to xMin
*/

// game loop
while true {
    let bombDir = readLine()! // the direction of the bombs from batman's current location (U, UR, R, DR, D, DL, L or UL)

    print("Bomb: \(bombDir)", to: &errStream)

    // Check and apply the formula to give the bomb coordinates to Batman: 8 possible directions
    if bombDir == "U" {
        // UP position: -1 to actual y position
        yMax = y - 1
        xMax = x
        xMin = x
    } else if bombDir == "D" {
        // DOWN position: +1 to actual y position
        yMin = y + 1
        xMax = x
        xMin = x
    } else if bombDir == "L" {
        // LEFT position: -1 to actual x position
        xMax = x - 1
        yMin = y
        yMax = y
    } else if bombDir == "R" {
        // RIGHT position: +1 to actual x position
        xMax = x + 1
        yMin = y
        yMax = y
    } else if bombDir == "UR" {
        // UP-RIGHT position
        xMin = x + 1
        yMax = y - 1
    } else if bombDir == "UL" {
        // UP-LEFT position
        xMax = x - 1
        yMax = y - 1
    } else if bombDir == "DR" {
        // DOWN-RIGHT position
        xMin = x + 1
        yMin = y + 1
    } else if bombDir == "DL" {
        // DOWN-LEFT position
        xMax = x - 1
        yMin = y + 1
    }

    // Binary search
    x = (xMin + xMax) / 2
    y = (yMin + yMax) / 2

    print("\(x) \(y)")
}