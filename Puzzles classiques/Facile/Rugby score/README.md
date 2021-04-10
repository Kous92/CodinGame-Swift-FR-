# CodinGame: Rubgy score

## Puzzle de la communauté proposé par Bob

**ORIGINAL TEXT (ENGLISH)**

## Goal
Given a rugby score, your program must compute the different scoring combinations that lead to that particular score.
As a reminder:
- a try is worth 5 points
- after a try, a transformation kick is played and is worth 2 extra points if successful
- penalty kicks and drops are worth 3 points

### Input
- **Line 1:** The score.

### Output
- **N lines**: number of tries, number of transformations, number of penalties / drops, separated by spaces.
- The combinations must be ordered by increasing order of tries, then transformations, then penalties/drops

### Constraints
No impossible scores are given, there is always at least one valid combination.

### Example

Input | Output
------------ | -------------
12 | 0 0 4<br>2 1 0

**TRADUCTION (FRANÇAIS)**

## Objectif

Étant donné un score de rugby, votre programme doit calculer les différentes combinaisons de scores qui mènent à ce score particulier.

En tant que rappels:
- Un essai vaut 5 points
- Après un essai, une transformation est jouée et vaut 2 points supplémentaires si elle est réussie.
- Les pénalités et les drops valent 3 points


### Entrées
- **Ligne 1:** Le score.

### Sortie
- **N lignes**: Nombre d'essais, nombre de transformations, nombre de pénalités / drops, séparés par des espaces.
- Les combinaisons doivent être ordonnées par ordre croissant d'essais, puis de transformations, puis de pénalités / drops.

### Contraintes
Aucun score impossible est donné, il y a toujours au moins une combinaison valide.

### Exemple

Entrée | Sortie
------------ | -------------
12 | 0 0 4<br>2 1 0

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Facile/Rugby%20score/rubgyScore.swift)