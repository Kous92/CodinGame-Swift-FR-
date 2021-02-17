# CodinGame: Lumen

## Puzzle de la communauté proposé par Sceurpien.

**ORIGINAL TEXT (ENGLISH)**

## Goal
THEY put you in a square shape room, with `N` meters on each side.
THEY want to know everything about you.
THEY are observing you.
THEY placed some candles in the room.

Every candle makes `L` "light" in the spot they are, and every spot in square shape gets one less "light" as the next ones. If a spot is touched by two candles, it will have the larger "light" it can have. Every spot has the base light of 0.

You can hide only, if you find a dark spot which has 0 "light".
**How many dark spots you have?**

You will receive a map of the room, with the empty places (`X`) and Candles (`C`) in `N` rows, each character separated by a space.

Example for the light spread `N` = 5, `L` = 3:
X X X X X
X C X X X
X X X X X
X X X X X
X X X X X

2 2 2 1 0
2 3 2 1 0
2 2 2 1 0
1 1 1 1 0
0 0 0 0 0


### Input
- **Line 1:** An integer `N` for the length of one side of the room.
- **Line 2:** An integer `L` for the base light of the candles.
- **Next `N` lines:** `N` number of characters (as `C`), separated by one space.

### Output
- **Line 1:** The number of places with zero light.

### Constraints
0 < `N` <= 25
0 < `L` < 10

### Example

Input | Output
------------ | -------------
5<br>3<br>X X X X X<br>X C X X X<br>X X X X X<br>X X X X X<br>X X X X X | 9

**TRADUCTION (FRANÇAIS)**

## Objectif

ILS vous ont mis dans une pièce de forme carrée, chaque côté faisant `N` mètres.
ILS veulent savoir tout sur vous.
ILS vous observent.
ILS ont placé quelques bougies dans la pièce.

Every candle makes `L` "light" in the spot they are, and every spot in square shape gets one less "light" as the next ones. If a spot is touched by two candles, it will have the larger "light" it can have. Every spot has the base light of 0.

Chaque bougie produit une lumière d'intensité `L` à l'endroit où ils sont, et chaque endroit dans le carré obtient une "lumière" de moins comme les suivants. Si un endroit est touché par 2 bougies, il aura une "lumière" plus large qu'il peut avoir. Chaque endroit à une lumière de base à 0.

Vous pouvez seulement vous cacher, si vous trouvez un endroit sombre qui a 0 "lumière".

**Combien d'endroits sombres avez-vous ?**

Vous allez recevoir une carte de la pièce, avec les emplacements vides (`X`) et les bougies (`C`) dans `N` lignes, chaque caractère étant séparé par un espace.

Exemple pour la propagation de la lumière avec `N` = 5, `L` = 3:

```
X X X X X
X C X X X
X X X X X
X X X X X
X X X X X
```

```
2 2 2 1 0
2 3 2 1 0
2 2 2 1 0
1 1 1 1 0
0 0 0 0 0
```

### Entrée
- **Ligne 1:** Un entier `N` pour la longueur d'un côté de la pièce
- **Ligne 2:** Un entier `L` pour la lumière de base des bougies.
- **`N` lignes suivantes:** Un nombre `N` de caractères (soit `C`, soit `X`), séparés par un espace.

### Sortie
- **Ligne 1:** Le nombre d'emplacements sans lumière (lumière = 0).

### Contraintes
0 < `N` <= 25
0 < `L` < 10


### Exemple

Entrée | Sortie
------------ | -------------
5<br>3<br>X X X X X<br>X C X X X<br>X X X X X<br>X X X X X<br>X X X X X | 9

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Facile/Lumen/lumen.swift)