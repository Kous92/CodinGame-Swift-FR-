# CodinGame: Pertes en bourse

## Objectif
Une entreprise spécialisée dans la finance réalise une étude sur les pires investissements en bourse et souhaite s'équiper pour cela d'un programme. Ce programme devra être capable d'analyser une série chronologique de valeurs d’actions pour afficher la plus grande perte qu'il est possible de réaliser en achetant une action à un instant `t0` et en la revendant à une date ultérieure `t1`. La perte sera exprimée par la différence de valeur entre `t0` et `t1`. S'il n'y a pas de perte, la perte vaudra alors `0`.

### Entrée
- **Ligne 1** : le nombre `n` de valeurs en bourse disponibles.
- **Ligne 2** : les valeurs ordonnées depuis l'introduction en bourse `v1` jusqu'à la dernière valeur connue `vn`. Les valeurs sont des entiers.

### Sortie

La perte maximale `p`, exprimée négativement s'il y a perte, sinon `0`.

### Contraintes
1 ≤ `n` ≤ 100000
1 < `v` < 2^31

### Exemple

### Exemple

![Courbe 1](https://www.codingame.com/fileservlet?id=43114364027)

Entrée | Sortie
------------ | -------------
6<br> 3 2 4 2 1 5 | -3

![Courbe 2](https://www.codingame.com/fileservlet?id=43127740838)

Entrée | Sortie
------------ | -------------
6<br> 5 3 4 2 3 1 | -4

![Courbe 3](https://www.codingame.com/fileservlet?id=43130710003)

Entrée | Sortie
------------ | -------------
5<br> 1 2 4 4 5 | 0

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Moyen/Pertes%20en%20bourse/pertesEnBourse.swift)