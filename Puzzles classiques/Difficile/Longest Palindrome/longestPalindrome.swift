import Glibc
import Foundation

public struct StderrOutputStream: TextOutputStream {
    public mutating func write(_ string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

// Using characters array in Swift will be optimal to get efficiently the 2 bounds in String.Index type then returning the substring result in O(1) complexity.
func findPalindrome(_ array: [Character], left: Int, right: Int) -> String {
    // Bounds to start the research of palindrome
    var leftIndex = left
    var rightIndex = right

    /* For the research:
    -> On each iteration on loop, the substring will be larger.
    1) Check at the beginning of the loop if the character at the left bound is the same at right bound. Otherwise, exit the loop
    2) Decrement by 1 the left bound of research
    3) Increment by 1 the right bound of research
    4) If the loop is exited, extract the substring with left bound + 1 as the beginning and right bound - 1 as the end.
       -> With a Character array, the substring is a subarray with the range leftIndex + 1 ..< rightIndex, then convert to String.
    */
    while leftIndex >= 0 && rightIndex < array.count {
        if array[leftIndex] != array[rightIndex] {
            break
        }

        leftIndex -= 1
        rightIndex += 1
    }

    // Return a palindrome substring, thanks to character array, complexity is O(1), very important to pass all tests.
    return String(array[leftIndex + 1 ..< rightIndex])
}

// The goal here is to give a list of the longest palindromes substrings at the same length, in the same order as they appear in the string.
// Time Complexity: O(n^2), Space Complexity: O(1), the best for this puzzle.
func longestPalindromesList(_ s: String) -> [String] {
    var result = String()
    var palindrome = String()

    /* To optimize the complexity due to String.Index constraint, we will convert the string to an array of character.
    - When we are targetting a character at a specific index, it will be O(1)
    - Using this method directly from a string: index(self.startIndex, offsetBy: i), it's not good, it's O(n) complexity, CodinGame test won't pass.
    - Also, convert the string to a character array only one time, O(n) complexity.
    */
    let arr: [Character] = Array(s)

    // Do not use Set<String>, the order can't be kept. Array<String> will keep the order, it's very important to pass the tests.
    var longestPalindromeSubstrings = [String]()

    // Use a manual index as iterator
    var index = 0

    while index < arr.count {
        // Exit the loop if the actual palindrome found is longer than the double of the length of the string - actual index
        if result.count >= (arr.count - index) * 2 {
            break
        }

        // Find a palindrome substring with same index with left bound and right bound.
        palindrome = findPalindrome(arr, left: index, right: index)

        // New palindrome found is longer than the previous, empty the list then add the new one. Same length, add to the list.
        if palindrome.count > result.count {
            result = palindrome
            longestPalindromeSubstrings.removeAll()
            longestPalindromeSubstrings.append(palindrome)
        } else if palindrome.count == result.count {
            longestPalindromeSubstrings.append(palindrome)
        }

        // Find a palindrome substring with left bound at actual index and right bound at actual index + 1
        palindrome = findPalindrome(arr, left: index, right: index + 1)

        // New palindrome found is longer than the previous, empty the list then add the new one. Same length, add to the list.
        if palindrome.count > result.count {
            result = palindrome
            longestPalindromeSubstrings.removeAll()
            longestPalindromeSubstrings.append(palindrome)
        } else if palindrome.count == result.count {
            longestPalindromeSubstrings.append(palindrome)
        }

        // End of the loop, +1 to the iterator.
        index += 1
    }
    return longestPalindromeSubstrings
}

let s = readLine()!
let a = longestPalindromesList(s)
print(a.joined(separator: "\n"))