# CodinGame: Brick in the Wall

## Puzzle de la communauté proposé par ng201

**ORIGINAL TEXT (ENGLISH)**

## Goal
Good ol' Master Mason wants to build a wall. He's got `N` bricks lying on the floor, each of them with **different weights**. The height of the bricks is 6.5 cm.

The wall is built from the bottom; in every row can be no more bricks than in the row below it. Bricks can be put right on top, if the previous condition is satisfied. In every row there’s a place for maximum `X` bricks.

Master Mason wants to minimize his work. Remembering old school days and physics lessons, he calculates the work as follows. If a brick is built into the L-th row from the floor, the work needed to place this brick is: W = ((L-1) * 6.5 / 100) * g * m, where m is the weight of the brick measured in kilograms and g = 10 m/s² is the (not too precise value of the) gravitational acceleration. (L-1) * 6.5 / 100 measures the distance the brick needs to be lift in meters. Note that the most bottom row ist the 1st one.

The task is to calculate the minimal work Master Mason can build all the bricks into a (not necessarily rectangular) wall.

### Input
- **Line 1:** An integer `X` for the number of bricks in a row.
- **Line 2:** An integer `N` for the number of bricks.
- **Line 3:** The integer weights of the bricks separated by space. Weights are given in kg.

### Output
- **Line 1:** The minimum work. Printed exactly with 3 decimal places.

### Constraints
- 2 ≤ `X` ≤ 100
- 2 ≤ `N` ≤ 1000
- 0 < `m` < 1000

### Example

Input | Output
------------ | -------------
2<br>3<br>100 10 150 | 6.500

**TRADUCTION (FRANÇAIS)**

## Objectif

Good ol' Master Mason wants to build a wall. He's got N bricks lying on the floor, each of them with different weights. The height of the bricks is 6.5 cm.
Le bon vieux Maître Mason veut construire un mur. Il a `N` briques étalées sur le sol, chacune d'entre elles de **poids différents**. La hauteur des briques est de 6,5 cm.

Le mur est construit par le bas; dans chaque ligne il ne peut pas y avoir plus de briques que dans la ligne d'en-dessous. Les briques peuvent être posées juste au-dessus, si la précédente condition est satisfaite. Dans chaque ligne il peut y avoir au maximum `X` briques.

Maître Mason veut minimiser son effort. En se rappelant de ses vieux jours d'école et des leçons de physique, il calcule l'effort comme ceci: si une brique est posée à la L-ème ligne depuis le sol, l'effort nécessaire pour placer la brique est: W = ((L-1) * 6.5 / 100) * g * m, où m est le poids de la brique mesurée en kg et g = 10 m/s² qui est l'accélération gravitationnelle (valeur non précise). (L-1) * 6.5 / 100 mesure la distance nécessaire de la brique à soulever en mètres. Notez que la ligne la plus en bas est la première.

Le but est de calculer l'effort minimal afin que Maître Mason puisse construire le mur (pas nécessairement rectangulaire) en y posant toutes les briques.

### Entrée
- **Ligne 1:** Un entier `X` pour le nombre de briques à la suite (consécutives).
- **Ligne 2:** Un entier `N` pour le nombre de briques.
- **Ligne 3:** Les poids des briques sous forme d'entiers séparés par un espace. Les poids donnés sont en kg.

### Sorties
**Ligne 1:** L'effort minimal. Affiché avec exactement 3 chiffres après la virgule.

### Contraintes
- 2 ≤ `X` ≤ 100
- 2 ≤ `N` ≤ 1000
- 0 < `m` < 1000

### Exemple

Entrée | Sortie
------------ | -------------
2<br>3<br>100 10 150 | 6.500

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Facile/Brick%20in%20the%20Wall/brickInTheWall.swift)