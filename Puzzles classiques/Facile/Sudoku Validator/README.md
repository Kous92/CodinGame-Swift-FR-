# CodinGame: Sudoku Validator

## Puzzle de la communauté proposé par redCroc.

**ORIGINAL TEXT (ENGLISH)**

## Goal
You get a **sudoku grid** from a player and you have to check if it has been correctly filled.

A sudoku grid consists of 9×9 = 81 cells split in 9 sub-grids of 3×3 = 9 cells.
For the grid to be correct, each row must contain one occurrence of each digit (1 to 9), each column must contain one occurrence of each digit (1 to 9) and each sub-grid must contain one occurrence of each digit (1 to 9).

You shall answer **true** if the grid is correct or **false** if it is not.

### Input
- **9 rows** of 9 space-separated digits representing the sudoku grid.

### Output
- **true** or **false**

### Constraints
- For each digit `n` in the grid: 1 ≤ `n` ≤ 9.

### Example

Input | Output
------------ | -------------
1 2 3 4 5 6 7 8 9<br>4 5 6 7 8 9 1 2 3<br>7 8 9 1 2 3 4 5 6<br>9 1 2 3 4 5 6 7 8<br>3 4 5 6 7 8 9 1 2<br>6 7 8 9 1 2 3 4 5<br>8 9 1 2 3 4 5 6 7<br>2 3 4 5 6 7 8 9 1<br>5 6 7 8 9 1 2 3 4 | true

**TRADUCTION (FRANÇAIS)**

## Objectif

Vous obtenez d'un joueur une **grille de sudoku** et vous avez à vérifier si la grille est correctement remplie.

Une grille de sudoku est consituée de 9x9 = 81 cellules séparées en 9 sous-grilles de 3x3 = 9 cellules.
Pour que la grille soit correcte, chaque ligne doit contenir au moins une occurence de chaque chiffre (1 à 9), chaque colonne doit contenir au moins une occurence de chaque chiffre (1 à 9) et chaque sous-grille doit contenir au moins une occurence de chaque chiffre (1 à 9)

Vous devez afficher **true** si la grille est correcte ou **false** sinon.

### Entrées
- **9 lignes** de 9 chiffres séparés par des espaces représentant la grille de sudoku.

### Sortie
- **true** ou **false**

### Contraintes
- Pour chaque chiffre `n` dans la grille: 1 ≤ `n` ≤ 9.

### Exemple

Entrée | Sortie
------------ | -------------
1 2 3 4 5 6 7 8 9<br>4 5 6 7 8 9 1 2 3<br>7 8 9 1 2 3 4 5 6<br>9 1 2 3 4 5 6 7 8<br>3 4 5 6 7 8 9 1 2<br>6 7 8 9 1 2 3 4 5<br>8 9 1 2 3 4 5 6 7<br>2 3 4 5 6 7 8 9 1<br>5 6 7 8 9 1 2 3 4 | true

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Facile/Sudoku%20Validator/sudokuValidator.swift)