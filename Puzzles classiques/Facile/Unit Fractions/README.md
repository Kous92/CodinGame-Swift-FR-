# CodinGame: Rubgy score

## Puzzle de la communauté proposé par java_coffee_cup

**ORIGINAL TEXT (ENGLISH)**

## Goal
For every fraction in the form 1/`n` (where `n` is an integer > 0), we can always find two positive integers `x` and `y` such that:

**1/n = 1/x + 1/y**

There can be one or more pairs of `x` and `y` fitting the above equation.

**Example**
- Given n = 2:
- 1/2 = 1/6 + 1/3
- 1/2 = 1/4 + 1/4


Could you list out all these equations for a given `n`?

### Input
- **Line 1:** Integer `n`.

### Output
All combinations of `n`, `x`, `y` in the format 1/`n` = 1/`x` + 1/`y`, where `x` ≥ `y`

Sort the list by `x` in descending order.
Write each equation on its own line.

### Constraints
1 ≤ `n` ≤ 1000000

### Example

Input | Output
------------ | -------------
2 | 1/2 = 1/6 + 1/3<br>1/2 = 1/4 + 1/4

**TRADUCTION (FRANÇAIS)**

## Objectif

Pour chaque fractioon de la forme 1/`n` (où `n` est un entier > 0), on peut toujours trouver 2 entiers positifs `x` et `y` tels que:

**1/n = 1/x + 1/y**

Il peut y avoir une ou plusieurs paires `x` et `y` qui conviennent à l'équation ci-dessus.

### Entrée
- **Ligne 1:** Un entier `n`.

### Sortie
Toutes les combinaisons `n`, `x`, `y` au format 1/`n` = 1/`x` + 1/`y`, où `x` ≥ `y`

Triez la liste par rapport `x` dans l'ordre décroissant.
Écrivez chaque équation dans sa propre ligne.

### Contraintes
1 ≤ `n` ≤ 1000000

### Exemple

Entrée | Sortie
------------ | -------------
2 | 1/2 = 1/6 + 1/3<br>1/2 = 1/4 + 1/4

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Facile/Unit%20Fractions/unitFractions.swift)