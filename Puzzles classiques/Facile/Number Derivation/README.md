# CodinGame: Number Derivation

## Puzzle de la communauté proposé par nicola.

**ORIGINAL TEXT (ENGLISH)**

## Goal
You have to calculate the derived number of a given positive integer, following these rules:
- If a number is prime p, p′ = 1.
- If a number is the product n × m, (n × m)′ = n′× m + n × m′.

Yes, it follows almost all the traditional rules of the derivation, including 1′=0 and (p^n)′=n×p^(n−1) if p is prime; but not (p+q)′=p′+q′ for all p and q.

### Input
- **Line 1:** A number `n`.

### Output
- **Line 1:** The derivation of `n`.

### Constraints
1 < `n` ⩽ 10000

### Example

Input | Output
------------ | -------------
7 | 1

**TRADUCTION (FRANÇAIS)**

## Objectif

Vous avez à calculer le nombre dérivé d'un entier positif donné, en suivant les règles suivantes:
- Si un nombre p est premier, p' = 1
- Si un nombre est le produit n x m, (n x m)' = n' x m + n x m'

Oui, ça suit pratiquement toutes les règles traditionnelles de la dérivation, incluant 1' = 0 et (p^n)' = n x p^(n-1) si p est premier, mais pas (p + q)' = p' + q' pour tout p et q.

### Entrée
- **Ligne 1:** Un nombre `n`.

### Sortie
- **Ligne 1:** La dérivée de `n`

### Contraintes
1 < `n` ⩽ 10000

### Exemple

Entrée | Sortie
------------ | -------------
7 | 1

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Facile/Number%20Derivation/numberDerivation.swift)