# CodinGame: Mountain Map

## Puzzle de la communauté proposé par RamanShakya.

**ORIGINAL TEXT (ENGLISH)**

## Goal
The task here is to print the ASCII representation of `n` mountains where the height of each mountain is given.

### Input
- **Line 1:** An integer `n` for the number of mountains
- **Line 2:** `n` space-separated integers for the height of each mountain

### Output
An ASCII representation of the mountain where each rise in the mountain is represented by `/` and fall by `\`
**(Output lines shall not contain trailing spaces)**

### Constraints
- 0 < `n` < 15
- 0 < `height` < 15
- (every mountain's base starts on the bottom-most line)

### Example

Input | Output
------------ | -------------
3<br>1 2 1| "    /\    "<br>"/\/  \/\"

**TRADUCTION (FRANÇAIS)**

## Objectif

L'objectif ici est d'afficher la représentation ASCII de `n` montagnes où la hauteur de chaque montagne est donnée.

### Entrées
- **Line 1:** Un entier `n` pour le nombre de montagnes
- **Line 2:** `n` entiers séparés par un espace pour la hauteur de chaque montagne.

### Sortie
Une représentation ASCII de la montagne où chaque élévation de la montagne est représentée par `/` et chute par `\`.
**(Les lignes affichées ne doivent pas contenir d'espaces de fin)**

### Contraintes
- 0 < `n` < 15
- 0 < `height` < 15
- (Chaque base de montagne démarre de la ligne la plus en bas)

### Exemple

Entrée | Sortie
------------ | -------------
3<br>1 2 1| ```    /\    
/\/  \/\```

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Facile/Mountain%20Map/mountainMap.swift)