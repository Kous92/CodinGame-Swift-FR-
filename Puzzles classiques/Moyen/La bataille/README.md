# CodinGame: Le Cadeau

## Que vais-je apprendre ?
Résoudre ce puzzle démontre que vous savez manipuler des files et simuler chaque étape d'un jeu déterministe.

## ÉNONCÉ

Votre programme doit déterminer le gagnant d'une partie de Bataille, un grand classique du jeu de cartes.

## Histoire

Chez Winamax, la tendance est aux jeux de cartes. Pourquoi ne pas rejoindre la fête ?

## Objectif

Revoyons les bases avec un jeu de cartes de votre enfance: **la bataille !**

Vous devez écrire un programme qui à partir d'une distribution des cartes détermine le gagnant d'une partie de "bataille".

## Règles

La bataille est un jeu de cartes qui se joue à deux joueurs. Chaque joueur a en sa possession un certain nombre de cartes en début de partie qu'il garde dans sa main sous forme de tas, la face cachée sur le dessus.
 
**Étape 1: le combat**

À chaque tour, chaque joueur retourne la carte du dessus de son tas. Si elle est supérieure à celle de son adversaire, il remporte les deux cartes et les place sous son tas. Voici l'ordre de valeur des cartes, de la plus faible à la plus forte :
**2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K, A**.
 
**Étape 2: la bataille**

Si les deux cartes sont de même valeur, intervient alors ce que l'on appelle une bataille ! **Chaque joueur défausse 3 cartes** du dessus de son tas. Ensuite ils repassent à l'étape 1 (plusieurs batailles peuvent se suivre). Dès qu'un joueur remporte une bataille, il remporte toutes les cartes jouées pendant le tour et les place sous son tas.
 
**Cas spéciaux:**
- Si un des deux joueurs n'a plus assez de cartes pour jouer lors d'une bataille (pendant la phase de défausse ou pendant la phase de combat qui suit la défausse), alors les joueurs sont ex aequo.
- Les jeux de tests sont formulés de telle façon qu'une partie se termine toujours (vous n'avez donc pas à tester l'éventualité d'une partie infinie)

Chaque carte sera représentée par sa valeur suivie de sa couleur parmi : **D, H, C, S**. Par exemple : **4H, 8C, AS**.

Quand un joueur gagne une manche, il remet les cartes sous son tas dans un ordre précis. **D'abord les cartes du premier joueur, puis celles du second joueur** (lors d'une bataille toutes les cartes du premier joueur **puis** toutes les cartes du second joueur).

Par exemple, si la distribution des cartes est la suivante :
- Joueur 1 : **10D 9S 8D KH 7D 5H 6S**
- Joueur 2 : **10H 7H 5C QC 2C 4H 6D**

Après une manche elle sera :
- Joueur 1 : **5H 6S 10D 9S 8D KH 7D 10H 7H 5C QC 2C**
- Joueur 2 : **4H 6D**

### 🏆 Conditions de victoire
Un joueur est déclaré gagnant si son adversaire n'a plus de cartes dans son tas.

## Entrées du jeu

### Entrée

- **Ligne 1:** le nombre `N` de cartes du premier joueur.
- **`N` lignes suivantes:** les cartes du premier joueur.
- **Ligne suivante:** le nombre `M` de cartes du deuxième joueur.
- **`M` lignes suivantes:** les cartes du deuxième joueur.

### Sortie
- Si la partie a une fin : le numéro du gagnant (**`1`** ou **`2`**) et le nombre de manches jouées séparés par un espace. **Une bataille ou une succession de batailles comptent pour une seule manche**.
- Si les joueurs terminent ex aequo : **`PAT`**
 
### Contraintes
- 0 < `N`, `M` <> 2000

### Exemples
Entrée | Sortie
------------ | -------------
3<br>AD<br>KC<br>QC<br>3<br>KH<br>QS<br>JC | 1 3

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Moyen/La%20bataille/laBataille.swift)