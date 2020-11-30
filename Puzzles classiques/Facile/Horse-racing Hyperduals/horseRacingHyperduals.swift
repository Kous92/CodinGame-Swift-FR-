import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

// Ici, on va créer une structure sous forme d'objet
struct Horse {
    var speed: Int
    var elegance: Int

    init(speed: Int, elegance: Int) {
        self.speed = speed
        self.elegance = elegance
    }
}

let N = Int(readLine()!)!
var closestDistance = Int.max
var horses = [Horse]() // Tableau de chevaux avec 2 critères (vitesse et élégance)

if N > 0 {
    for i in 0...(N-1) {
        let inputs = (readLine()!).split(separator: " ").map(String.init)
        let V = Int(inputs[0])!
        let E = Int(inputs[1])!
        horses.append(Horse(speed: V, elegance: E))
    }
}

print(horses, to: &errStream)

for i in 0 ..< horses.count {
    // Pour la comparaison, on commence avec le suivant (pour j) et l'intervalle se réduit à chaque itération
    for j in (i + 1) ..< horses.count {
        // Distance = abs(V2 - V1) + abs(E2 - E1)
        let distance = abs(horses[i].speed - horses[j].speed) + abs(horses[i].elegance - horses[j].elegance)

        if distance < closestDistance {
            closestDistance = distance
        }
    }
}

print(closestDistance)