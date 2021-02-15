import Glibc
import Foundation

// Thanks to RoboStac for giving the solution to write efficient solution of modular multiplication and exponentiation without overflowing in Swift.
class ElGamal {
    let G: UInt // The generator
    let H: UInt // The message
    let Q: UInt // Order of the key, prime number

    init(_ G: UInt, _ H: UInt, _ Q: UInt) {
        self.G = G
        self.H = H
        self.Q = Q
    }

    /* Modular multiplication: (a * b) % m -> optimized version for big numbers, it reduces the highest value 
       needed to store to m * 2 which will always be a valid value for modular exponentiation */
    private func modularMultiplication(_ a: UInt, _ b: UInt, _ m : UInt) -> UInt {
        var res: UInt = 0      
        var a = a
        var b = b // Actual bit

        // The operations are done with binary form
        while b > 0 { 
            if (b & 1) > 0 {
                res = (res + a) % m
            }  

            a = (2 * a) % m

            // b -> Moving the bits by 1 place to the right amounts to divide the number by 2
            b >>= 1
        }   

        return res
    }

    // Optimized for big numbers to avoid overflow
    private func fastModularExponentiation(_ n: UInt,_ e: UInt,_ m: UInt) -> UInt {
        var res: UInt = 1
        var base = n % m // The range is reduced to be optimal for big numbers
        var exp = e

        // Like a thread, all
        while true {
            // Least significant bit at 1, 
            if exp & 1 == 1 {
                // res = (res * base) % m
                res = modularMultiplication(res, base, m)
            }

            if exp == 1 {
                return res
            }

            // exp /= 2 -> Moving the bits by 1 place to the right amounts to divide the number by 2
            exp >>= 1

            // base = (base * base) % m
            base = modularMultiplication(base, base, m)
        }
    }

    // This algorithm is optimized and must use optimized modular multiplication and exponentiation to avoid overflow and solve all discrete logarithm problems for the secret key.
    func babyStepGiantStep() -> UInt {
        let m = UInt(sqrt(Float(Q)))
        var table: [UInt: UInt] = [:]
        var e: UInt = 1
        
        // Baby step
        for i in 0 ... m {
            table[e] = i
            // e = e * G % Q
            e = modularMultiplication(e, G, Q)
        }

        // Giant step precomputation: f = G^(Q - m - 1) % Q
        let factor = fastModularExponentiation(G, Q - m - 1, Q)
        e = H

        // Giant step
        for i in 0 ... m {
            // G^i % Q = H, solution found    
            if let v = table[e] {
                return i * m + v
            }

            e = modularMultiplication(e, factor, Q)
        }

        // No solution found
        return 0
    }
}

let inputs = (readLine()!).split(separator: " ").map(String.init)

// The Int type and Int64 type are not suitable to solve the big number test cases in Swift. Unsigned version of 64-bit integer type is required: UInt64
// The server architecture of CodinGame is on 64 bits, so no need to precise the 64 bits, Int and UInt are by defaut at 64 bits.
let G = UInt(inputs[0])!
let H = UInt(inputs[1])!
let Q = UInt(inputs[2])!

let attack = ElGamal(G, H, Q)
print(attack.babyStepGiantStep())