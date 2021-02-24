# CodinGame: Disks intersection

## Puzzle de la communauté proposé par Amendil

**ORIGINAL TEXT (ENGLISH)**

## Goal

Given centers and radius of two disks, you must determine their intersection area, rounded at a precision of 10^-2.
So if you think the area is 42.3371337, you must output 42.34 and if your answer is 41.78954719, you must print 41.79.

If these disks do not intersect, or intersect in one point, then the area is 0.00.

### Input
- **Line 1**: `x1`, `y1`, `r1`. `x1` and `y1` determine the position of the center of the first disk, and `r1` its radius
- **Line 2**: `x2`, `y2`, `r2`. `x2` and `y2` determine the position of the center of the second disk, and `r2` its radius

### Output
- The intersection area of the disks, rounded at a precision of 10^-2 (2 digits after the float point).

### Constraints
- -1000 < `x1`, `y1`, `x2`, `y2` < 1000
- 1 ⩽ `r1`, `r2` < 1000

### Example

Input | Output
------------ | -------------
0 10 1<br>10 0 1 | 0.00

**TRADUCTION (FRANÇAIS)**

## Objectif

Étant donnés les centres et rayons de 2 disques, vous devez déterminer l'aire de leur intersection, arrondi à une précision de 10^-2.
Donc si vous pensez que l'aire est 42.3371337, vous devez afficher 42.34 et si votre réponse est 41.78954719, vous devez afficher 41.79.

Si les disques ne se coupent pas, ou ne se coupent pas en un point, alors l'aire est 0.00.

### Entrée
- **Ligne 1**: `x1`, `y1`, `r1`. `x1` et `y1` determinent la position du centre du premier disque, et `r1` son rayon
- **Ligne 2**: `x2`, `y2`, `r2`. `x2` et `y2` determinent la position du centre du second disque, and `r2` son rayon

### Sortie
- L'aire de la zone d'intersection des 2 disques, arrondie à une précision de 10^-2 (2 chiffres après la virgule).

### Contraintes
- -1000 < `x1`, `y1`, `x2`, `y2` < 1000
- 1 ⩽ `r1`, `r2` < 1000

### Exemple

Entrée | Sortie
------------ | -------------
0 10 1<br>10 0 1 | 0.00

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Difficile/Disks%20Intersection/disksIntersection.swift)