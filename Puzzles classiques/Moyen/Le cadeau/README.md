# CodinGame: Le Cadeau

## Que vais-je apprendre ?
Dans ce puzzle, vous devez manipuler de grandes listes et utiliser des concepts mathématiques simples (par exemple min, max, moyenne) pour optimiser la valeur d'une variable.

**Ressources externes: [Algorithme glouton](https://fr.wikipedia.org/wiki/Algorithme_glouton)**

## ÉNONCÉ

En vous basant sur une liste de personnes, de leur budget ainsi que sur le prix du cadeau qu'ils souhaitent acheter, vous devez trouver le montant que chaque personne donne. Vous devez trouver la distribution optimale qui minimise la contribution la plus élevée.

## Histoire

Le TARDIS, vaisseau inter-espace-temps, s'est posé sur une planète étrange. La population locale, les Oods, cherchent à faire un cadeau à un autre Ood, mais n'arrivent pas à trouver un moyen de répartir équitablement leur budget. Aidez le Docteur à trouver un système pour décider quelle doit être la contribution de chaque Ood.

*Ce défi est le premier des deux exercices proposés lors du challenge « Doctor Who ». Si vous aimez Doctor Who et voulez essayer un exercice plus compliqué, un autre exercice est disponible sur un thème différent, [« Partitions de Musique » (Difficulté: TRÈS DIFFICILE)](https://www.codingame.com/training/expert/music-scores)*

## Objectifs

Les Oods veulent offrir un cadeau à l'un d'entre eux. Seulement, tous ont un budget différent à investir dans ce cadeau, et bien sûr, leur unique souhait est de parvenir à déterminer le partage qui soit le plus équitable possible tout en restant dans les limites des budgets de chacun. Les Oods réfléchissent à la méthode optimale depuis des jours et n'ont toujours pas réussi à s'accorder sur une solution satisfaisante.

Le Docteur décide donc de leur donner un coup de main en créant un programme. Son idée est de s'assurer que les Oods ont assez d'argent pour acheter le cadeau et si oui, de déterminer la somme dont chaque Ood devra s'acquitter dans la limite de son budget.

## Règles
Le Docteur a en main la liste des budgets maximum de chaque Ood. Pour respecter les aspirations démocratiques des Oods et pour départager les différentes solutions, le Docteur décide que :
- aucun Ood ne peut mettre plus que son budget maximal
- **la solution optimale est celle pour laquelle la plus grande contribution est minimale**
- s'il y a plusieurs solutions optimales, on prend la solution pour laquelle la deuxième plus grande contribution d'un participant est minimale et ainsi de suite...
De plus pour faciliter les comptes, le Docteur souhaite que la participation de chacun soit un nombre entier de la monnaie locale (personne ne doit donner de centimes).

## Exemples
Par exemple on souhaite acheter un cadeau qui coute 100. Le premier Ood dispose d'un budget de 3, le deuxième d'un budget de 45 et le troisième d'un budget de 100.
- Dans ce cas :

Entrée | Sortie
------------ | -------------
3 | 3
------------ | -------------
45 | 45
------------ | -------------
100 | 52
------------ | -------------

Maintenant on souhaite toujours acheter un cadeau qui coute 100 mais le deuxième Ood dispose cette fois d'un budget de 100.
- Dans ce cas :

Entrée | Sortie
------------ | -------------
3 | 3
100 | 48
100 | 49

## Entrées du jeu

### Entrée
- **Ligne 1:** le nombre `N` de Oods participant au cadeau
- **Ligne 2:** le prix `C` du cadeau
- **`N` Lignes suivantes:** la liste des budgets `B` des participants.

### Sortie
- S'il est possible d'acheter le cadeau : `N` lignes contenant chacune la contribution d'un participant. Les lignes sont triées par ordre croissant.
- Sinon le mot `IMPOSSIBLE`.
 
### Contraintes
- 0 < `N` ≤ 2000
- 0 ≤ `C` ≤ 1000000000
- 0 ≤ `B` ≤ 1000000000

### Exemples
Entrée | Sortie
------------ | -------------
3<br>100<br>20<br>20<br>40 | IMPOSSIBLE

Entrée | Sortie
------------ | -------------
3<br>100<br>40<br>40<br>40 | 33<br>34<br>34

Entrée | Sortie
------------ | -------------
3<br>100<br>100<br>1<br>60 | 1<br>49<br>60

### Synopsis
Dans cet épisode, le TARDIS (la machine à voyager dans le temps du Docteur Who) se matérialise en l'an 4798 sur la Ood-Sphere, une planète habitée par les Oods, une civilisation étrange mais néanmoins très avancée.

Les Oods ne sont pas particulièrement agréables à regarder : des tentacules disgracieux leur pendent au bas du visage. Bien qu'ils soient monstrueux, les Oods sont des créatures très sensibles qui n'ont pas la notion d'individualité. Ils pensent qu'ils ne forment qu'un tout unique et communiquent entre eux par télépathie.

En réalité, le Docteur atterrit au beau milieu d'une cérémonie Oodienne. L'un des Oods ayant atteint l'âge de la maturité, le reste de la communauté souhaite lui offrir un magnifique cadeau.

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Moyen/Le%20cadeau/leCadeau.swift)