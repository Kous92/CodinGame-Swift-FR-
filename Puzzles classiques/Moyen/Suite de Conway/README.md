# CodinGame: Suites de Conway

## Objectif

Votre mission est d'afficher une ligne de la suite de Conway.

## Règles
Attention, cette suite peut vous rendre malade. Le raisonnement est simple mais inhabituel : lisez à haute voix une ligne en regardant celle au dessus et vous remarquerez que chaque ligne (sauf la première) fait l'inventaire de la ligne précédente.

```
1
1 1
2 1
1 2 1 1
1 1 1 2 2 1
3 1 2 2 1 1
```

- La ligne 3 affiche `2 1` parce que la ligne 2 contient deux `1` qui se suivent.
- La ligne 4 affiche `1 2 1 1` parce que la ligne 3 contient un `2` suivi d'un `1`.
- La ligne 5 affiche `1 1 1 2 2 1` parce que la ligne 4 contient un `1` suivi d'un `2` suivi de deux `1`.

Cette suite fait référence à une technique d'encodage des plages pour compresser des valeurs identiques sans perte d'information. Ce type de procédé est utilisé, entre autres, pour compresser des images.

Votre mission : écrire un programme qui affichera la ligne `L` de cette série à partir d'un nombre d'origine `R` (`R` vaut `1` dans notre exemple).

## Entrées du jeu

### Entrée

- Ligne 1 : Le nombre `R` d'origine de la série.
- Ligne 2 : La ligne `L` à afficher. L'indice de la première ligne est `1`.

### Sortie
La ligne `L` de la série. Chaque élément de la série est séparé par un espace.

### Contraintes
0 < `R` < 100
0 < `L` ≤ 25

### Exemple

Entrée | Sortie
------------ | -------------
1<br> 6 | 3 1 2 2 1 1

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Moyen/Suite%20de%20Conway/suiteConway.swift)