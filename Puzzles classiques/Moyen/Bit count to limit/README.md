# CodinGame: Bit count to limit

## Puzzle de la communauté proposé par DPAmar.

**ORIGINAL TEXT (ENGLISH)**

## Goal
The goal is really simple. Given a number `n`, count how many 1s are used to write all binary integers from 0 to `n` (inclusive)

For example, `n` = 5
0....000...0
1....001...1
2....010...1
3....011...2
4....100...1
5....101...2

Total : 1+1+2+1+2 = 7

### Input
- **Single line:** An integer `n`

### Output
- **Single line:** Number of 1s used to write all binary integers from 0 to `n` (inclusive)

### Constraints
- `n` < 2^28
- Result < 2^32

### Example

Input | Output
------------ | -------------
5 | 7

**TRADUCTION (FRANÇAIS)**

## Objectif

L'objectif est vraiment simple. Étant donné un nombre `n`, comptez combien de 1 sont utilisés pour écrire tous les entiers binaires de 0 à `n` (inclus).
Par exemple, `n` = 5
0....000...0
1....001...1
2....010...1
3....011...2
4....100...1
5....101...2

Total : 1+1+2+1+2 = 7

### Entrées
- **Ligne simple:** Un entier `n`

### Sortie
- **Ligne simple:** Nombre de 1 utilisés pour écrire tous les entiers en binaires de 0 à `n` (inclus)/

### Contraintes
- `n` < 2^28
- Result < 2^32

### Exemple

Entrée | Sortie
------------ | -------------
5 | 7

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Moyen/Bit%20count%20to%20limit/bitCountToLimit.swift)