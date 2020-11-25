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

let N = Int(readLine()!)!
var listeChevaux = [Int]()
var diff = Int.max

if N > 0 {
    for i in 0...(N-1) {
        let pi = Int(readLine()!)!

        listeChevaux.append(pi)
    }
}

listeChevaux.sort()

/*
1) Remplir le tableau des entrées (chaque cheval)
2) Initialiser la différence à la valeur max de Int
3) Trier par ordre croissant le tableau
4) Boucle for de 0 à n - 2
4.1) Plus petite différence = minimum entre la plus petite différence et la différence entre le cheval suivant et le cheval actuel
*/

for i in 0 ..< listeChevaux.count - 1 {
    diff = min(diff, listeChevaux[i + 1] - listeChevaux[i])
}

print(diff)
