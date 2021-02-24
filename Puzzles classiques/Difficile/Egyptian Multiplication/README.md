# CodinGame: Egyptian Multiplication

## Puzzle de la communauté proposé par MoonCoder

**ORIGINAL TEXT (ENGLISH)**

## Goal

You have to multiply two integers (a&b) by means of a method used in Ancien Egypt, described in Rhind’s hieratic papyrus written circa −1650 by Ahmes. This method is still used in Russia.

First, sort the two numbers.
Then follow the steps below, the algorithm uses base-2 decomposition of the biggest number.
We multiply 12 by 5, here is what you have to print, excepted the comments after hashes.

```swift
12 * 5
= 12 * 4 + 12 // Divide 5 by 2, the remain is 1 and 5 = 2 * 2 + 1, thus 12 * 5 = 12 * (2 * 2 + 1) = 12 * 2 * 2 + 12 = 24 * 2 + 12
= 24 * 2 + 12 // Divide 2 by 2, 2 = 1 * 2 + 0 and 12 * 5 = 24 * (1 * 2 + 0) + 12 = 48 * 1 + 12
= 48 * 1 + 12 // Divide 1 by 2, 1 = 0 * 2 + 1 and 12 * 5 = 48 * (0 * 2 + 1) + 12 = 12 + 48
= 48 * 0 + 12 + 48 // End of the algorithm
= 60
```

### Input
- Two integers separated by a space.

### Output
- The description of the successive operations.

### Constraints
- 0 <= `a`, `b` <= 32768

### Example

Input | Output
------------ | -------------
3 12 | 12 * 3<br>= 12 * 2 + 12<br>= 24 * 1 + 12<br>= 24 * 0 + 12 + 24<br>= 36

**TRADUCTION (FRANÇAIS)**

## Objectif

You have to multiply two integers (a&b) by means of a method used in Ancien Egypt, described in Rhind’s hieratic papyrus written circa −1650 by Ahmes. This method is still used in Russia.

Vous avez à multiplier 2 entiers (a et b) au moyen d'une méthode utilisée dans l'Égypte Antique, décrit dans un papyrus hiératique de Rhind, écrit vers 1650 par Ahmes.

Premièrement, triez les 2 nombres.
Ensuite, suivez les étapes ci-dessous, l'algorithme utilise des décompositions en base 2 du nombre le plus grand.
On multiplie 12 par 5, voici ce que vous avez à afficher, excepté les commentaires (représentés par `\\`)

```swift
12 * 5
= 12 * 4 + 12 // Division de 5 par 2, le reste est 1 et 5 = 2 * 2 + 1, donc 12 * 5 = 12 * (2 * 2 + 1) = 12 * 2 * 2 + 12 = 24 * 2 + 12
= 24 * 2 + 12 // Division de 2 par 2, 2 = 1 * 2 + 0 et 12 * 5 = 24 * (1 * 2 + 0) + 12 = 48 * 1 + 12
= 48 * 1 + 12 // Division de 1 par 2, 1 = 0 * 2 + 1 et 12 * 5 = 48 * (0 * 2 + 1) + 12 = 12 + 48
= 48 * 0 + 12 + 48 // Fin de l'algorithme
= 60
```

### Entrée
- 2 entiers séparés par un espace

### Sortie
- La description des opérations successives

### Contraintes
- 0 <= `a`, `b` <= 32768

### Exemple

Entrée | Sortie
------------ | -------------
3 12 | 12 * 3<br>= 12 * 2 + 12<br>= 24 * 1 + 12<br>= 24 * 0 + 12 + 24<br>= 36

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Difficile/Egyptian%20Multiplication/egyptianMultiplication.swift)