# CodinGame: Longest Palindrome

## Puzzle de la communauté proposé par Maurice_Moss

**ORIGINAL TEXT (ENGLISH)**

## Goal

A palindrome is a sequence of letters which reads the same backward as forward, like “madam” for example.

For a given input string `S`, you have to return the longest palindrome found within. If multiple substrings qualify, print them all in the same order as they appear in `S`.

### Input
- **Line 1:** A string `S` (only alphanumeric)

### Output
- **N lines:** Every longest palindrome contained in `S`

### Constraint
- 0 < length of `S` < 10000

### Example

Input | Output
------------ | -------------
madam | madam

**TRADUCTION (FRANÇAIS)**

## Objectif

Un palindrome est une séquence de lettres qui se lit aussi bien de droite à gauche que de gauche à droite, comme "madam" par exemple.

Pour une chaîne de caractères `S` donnée en entrée, vous avez à retourner le plus long palindrome trouvé dedans. Si plusieurs sous-chaînes sont éligibles, affichez-les tous dans le même ordre où il sont apparus dans `S`.

### Entrée
- **Ligne 1:** Une chaîne de caractères `S`

### Sortie
- **Ligne 1:** Chaque palindrome le plus long contenu dans `S`

### Contrainte
- 0 < longueur de `S` < 10000

### Exemple

Entrée | Sortie
------------ | -------------
madam | madam

### IMPORTANT:

Le langage Swift impose quelques contraintes concernant les caractères de `String`, ils sont encodés en UTF-16 et ne sont pas tous encodés de la même taille en octets, on ne peut donc pas utiliser directement un `Int` pour cibler le caractère à la position voulue. Il faut donc utiliser `String.Index`. De plus, obtenir l'index d'un élément avec un `Int` n'est pas optimal dans ce problème avec ceci:
```swift
let string = "abcde"
let i = string.index(self.startIndex, offsetBy: 3) // Il faut faire 3 opérations pour cibler le 4ème caractère de la chaîne

// Pour cibler le caractère voulu, i doit être de type String.Index. Affiche "d".
print(string[i])
```

De même pour extraire la sous-chaîne (type `Substring`) aux bornes données, comme ceci:
```swift
let string = "abcdefghijklmnopqrstuvwxyz"
let start = self.index(self.startIndex, offsetBy: 2)
let end = self.index(start, offsetBy: 6)

// La sous-chaîne est un Subtring, à convertir en String pour éviter la fuite de mémoire. Aussi, l'intervalle doit être composée de String.Index
let substring = String(self[start..<end]) // "cdefgh"

print(string[i])
```

Cette méthode est de complexité O(n) avec n la position du caractère ciblé. Et cela posera problème au niveau temps d'exécution à chaque itération. La seule solution est donc de convertir la chaîne de caractères en tableau de caractères, comme ceci:
```swift
let arr: [Character] = Array(s)
```
À ne faire qu'une seule fois, étant de complexité O(n), puis le réutiliser pour ensuite cibler chaque caractère en O(1). Pour la sous-chaîne, cela se fait comme ceci:
```swift
let s = "abcmadamyui"
let arr: [Character] = Array(s)

// Sous-chaîne
print(String(arr[3 ..< 8]) // madam
```
La sous-chaîne avec un tableau de caractères est en fait un sous-tableau (type `ArraySlice<Character>`) avec une intervalle de type `Range<Int>` qu'on peut donner directement avec des entiers, et c'est de complexité O(1), qui est capital pour passer tous les tests de ce puzzle en temps raisonnable.

Au final, la solution est de complexité O(n^2) au niveau temporel, et de complexité spatiale O(1) grâce au tableau de caractères.

Un grand merci à [pardouin](https://www.codingame.com/profile/f5e3b2911a0a16192867d634937546a60165483) pour m'avoir donné des indications. Je me suis inspiré d'un algorithme du même type qui retourne le plus long palidrome, optimisé en Swift, d'un exercice sur la plateforme LeetCode. [La source est ici](https://github.com/ecmadao/algorithms/blob/master/leetcode/Swift/No05.longest-palindromic-substring.swift).

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Difficile/Longest%20Palindrome/longestPalindrome.swift)