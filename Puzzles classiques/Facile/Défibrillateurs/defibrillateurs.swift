import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

func deg2rad(_ number: Double) -> Double {
    return number * .pi / 180
}

let LON = readLine()!
let LAT = readLine()!
let N = Int(readLine()!)!

var solution = ""

print("> Where we are: x = \(LON), y = \(LAT), N = \(N)", to: &errStream)
print("=========================================================\n", to: &errStream)

// 1) Replace ',' by '.' then transform to Double. Don't forget to unwrap because the casting gives an optional.
var longitude = Double(LON.replacingOccurrences(of: ",", with: "."))!
var latitude = Double(LAT.replacingOccurrences(of: ",", with: "."))!

// 2) Set the shortest distance to +infinity 
var distance = Double.infinity

print("-> x = \(longitude), y = \(latitude), N = \(N)", to: &errStream)
print("-> Initial distance of closest defibrillator: \(distance)", to: &errStream)
print("=========================================================\n", to: &errStream)

// 3) Fill the array of defibrillators
var defibrillators = [String]()

print(">>> Available defibrillators:\n", to: &errStream)

if N > 0 {
    for i in 0...(N-1) {
        let DEFIB = readLine()!
        defibrillators.append(DEFIB)
        print(defibrillators[i], to: &errStream)
    }
}

print("=========================================================\n", to: &errStream)

// 4) Get the longitude and latitude of the person in radians.
var longitudeUser = deg2rad(longitude)
var latitudeUser = deg2rad(latitude)

// 5) Iterate and determine the distance between every defibrillator
for defib in defibrillators {
    /* 5.1) Extract the coordinates of the defibrillator on the string by splitting the string into an array
    -> Then take the 5th element (index 4), convert to double value and convert to radians for longitude 
    -> Do the same for the latitude with the 6th element (index 5) */
    let defibs = defib.components(separatedBy: ";")
    var lonDefib = deg2rad(Double(defibs[4].replacingOccurrences(of: ",", with: "."))!)
    var latDefib = deg2rad(Double(defibs[5].replacingOccurrences(of: ",", with: "."))!)

    // 5.2) x = (lonDefib - longitudeUser) * cos((latDefib + latitudeUser) / 2)
    var x = (lonDefib - longitudeUser) * cos((latDefib + latitudeUser) / 2)
    var y = (latDefib - latitudeUser)

    // 5.3) Distance = sqrt(x^2 + y^2) * 6371
    var d = sqrt(pow(x, 2) + pow(y, 2)) * 6371

    // 5.4) Check if the given distance is lower than the previous (obviously the first checked will be saved)
    if d < distance {
        distance = d
        solution = defibs[1]
    }
}

print(solution)