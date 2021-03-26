# CodinGame: Le plus rapide

### Puzzle de la communauté proposé par [CG]jupoulton

## Le programme

Votre programme doit choisir la meilleure performance dans une liste de temps de coureurs de marathons.

Le temps de chaque coureur est représenté par **`HH:MM:SS`**, où **`HH`** sont les heures, **`MM`** les minutes et **`SS`** les secondes.

Vous recevez `N` temps, le meilleur est le plus petit.

### Entrée
- **Ligne 1**: Un entier `N`.
- **`N` prochaines lignes**: 8 caractères, représentant un temps.

### Sortie
- Le meilleur temps

### Contraintes
- 0 < `N` ≤ 10
- 0 ≤ `heures` < 24
- 0 ≤ `minutes` < 60
- 0 ≤ `secondes` < 60

Entrée | Sortie
------------ | -------------
4<br>10:15:46<br>03:59:08<br>04:00:08<br>03:59:09 | 03:59:08

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Moyen/Le%20plus%20rapide/lePlusRapide.swift)