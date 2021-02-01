import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let n = Int(readLine()!)! // the number of temperatures to analyse

var closest = 5526; // On prend par défaut la plus haute température comme différence

if n < 1
{
    print("Rien à analyser", to: &errStream)
    print(0)
}
else
{
    for i in ((readLine()!).split(separator: " ").map(String.init)) 
    {
        let t = Int(i)!
        
        // Est-elle plus proche de 0
        if (abs(t) < abs(closest)) || ((0 < t) && (-closest == t))
        {
            closest = t
        }
    }
    
    print(closest)
}
