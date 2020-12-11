# CodinGame: 7-segment scanner

### Puzzle de la communauté proposé par tutubalin.

**ORIGINAL TEXT (ENGLISH)**

### Goal

Given an ASCII art representation of 7-segment display you need to convert it to a number.
Note: number should be converted as is, including leading zeroes.

### Input
- **3 lines**: 7-segment display image consisting only of vertical lines, underscores and spaces.
Length of every line is divisible by 3 (so trailing spaces are preserved).

### Output
- **One line**: The number. Leading zeros should be preserved.

### Constraints
- 3 ≤ `digit count` ≤ 300

**TRADUCTION (FRANÇAIS)**

## Objectif
Une représentation en art ASCII d'un affichage 7 segments est donné, vous devez le convertir en nombre
Note: le nombre doit être converti comme il est, incluant les zéros de devant.

### Entrée
- **3 lignes**: Une image d'affichage 7 segments comportant seulement des lignes verticales `|`, des underscores `_` et des espaces ` `.
La longueur de chaque ligne est divisible par 3 (les espaces de fin sont donc préservées).

### Sortie
- **Une ligne**: Le nombre. Les zéros de devant doivent être conservés.

### Contraintes
- 3 ≤ `nombre de chiffres` ≤ 300

### Exemple

#### Entrée
                "        _     _  _     _  _  _  _  _       "
                "       | |  | _| _||_||_ |_   ||_||_|      "
                "       |_|  ||_  _|  | _||_|  ||_| _|      "

#### Sortie
`0123456789`

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Facile/7-segment%20scanner/7segmentscanner.swift)