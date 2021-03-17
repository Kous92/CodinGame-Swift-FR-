# CodinGame: Jack Silver: The Casino

## Puzzle de la communauté proposé par Informatics.

**ORIGINAL TEXT (ENGLISH)**

## Goal
Jack Silver is a spy from the international spy agency.

In his current mission he observes his targets at a roulette table at the Great Grand Casino in Villan City. He needs to know how much money his targets have at the end of the game.

The target plays as follows:
- He always bets 1/4 of the cash he currently has. If it is a fractional value, he always rounds up.
- The target's calls, `CALL`, can be one of the three possibilities:
    + **EVEN** - He bets on an EVEN (non-zero) number
    + **ODD** - He bets on an ODD number
    + **PLAIN** - He bets on a specific number: `NUMBER`

**NOTE:** Since the odds of winning are much lower for **PLAIN** bets, the payout for a win is higher: **35 to 1**. For **EVEN** and **ODD**, the payout is **1 to 1**. As an example, if the ball comes up as 23, and the target bets 100, the payouts would be as follows:

- If he called **EVEN**, then he would lose his 100 bet.
- If he called **ODD**, then he would get his 100 bet back, plus an extra 100.
- If he called **PLAIN** and specified any number other than 23, he would lose his 100 bet.
- If he called **PLAIN** and specified 23 as his number, he would get back his 100 bet plus an extra 3500.

### Input
- **Line 1:** An integer, `ROUNDS`, for the number of rounds the target is playing
- **Line 2:** An integer, `CASH`, for the amount of cash the target starts with
- **Next `ROUNDS` lines:** The target's PLAY for that round, consisting of either 2 or 3 space separated variables:
    + 1) an integer, `BALL`, which represents the roulette table result
    + 2) a string, `CALL`, which represents the call the target made
    + 3) (optional) an optional integer, `NUMBER`, which represents the selected number when the target's call is **PLAIN**

### Output
The amount of money, `MONEY`, the target has after `ROUNDS` of playing

### Constraints
- 1 ≤ `ROUNDS` ≤ 100
- 50000 ≤ `CASH` ≤ 100000
- `CALL` can be the text **EVEN**, **ODD** or **PLAIN** with an integer `NUMBER`
- If `NUMBER` is set 0 ≤ `NUMBER` ≤ 36
- 1 ≤ `MONEY` ≤ 1 000 000

### Example

Input | Output
------------ | -------------
57<br>
70545<br>
31 PLAIN 30<br>
18 PLAIN 35<br>
14 PLAIN 32<br>
25 ODD<br>
13 PLAIN 9<br>
14 PLAIN 34<br>
32 ODD<br>
26 PLAIN 9<br>
29 EVEN<br>
7 PLAIN 21<br>
32 PLAIN 29<br>
0 PLAIN 7<br>
7 PLAIN 34<br>
13 PLAIN 14<br>
22 PLAIN 8<br>
25 PLAIN 28<br>
11 PLAIN 20<br>
14 ODD<br>
23 ODD<br>
13 PLAIN 22<br>
2 ODD<br>
23 EVEN<br>
17 ODD<br>
30 EVEN<br>
28 PLAIN 28<br>
5 PLAIN 36<br>
13 EVEN<br>
22 PLAIN 11<br>
5 EVEN<br>
32 PLAIN 25<br>
13 ODD<br>
10 EVEN<br>
28 ODD<br>
15 PLAIN 2<br>
33 EVEN<br>
29 ODD<br>
1 EVEN<br>
19 PLAIN 12<br>
0 PLAIN 34<br>
24 EVEN<br>
16 PLAIN 36<br>
4 EVEN<br>
35 PLAIN 13<br>
14 PLAIN 34<br>
30 ODD<br>
13 EVEN<br>
29 ODD<br>
7 EVEN<br>
18 PLAIN 20<br>
33 ODD<br>
24 PLAIN 28<br>
34 PLAIN 34<br>
33 EVEN<br>
32 EVEN<br>
10 EVEN<br>
13 ODD<br>35 PLAIN 26 | 1153

**TRADUCTION (FRANÇAIS)**

## Objectif

Jack Silver est un espion de l'agence internationale des espions.

Dans sa mission actuelle, il observe sa cible à la table de roulette au Grand Casino de Villan City. Il a besoin de savoir combien d'argent sa cible doit avoir à la fin de la partie.

La cible joue comme ceci:
- Il mise toujours 1/4 de l'argent qu'il a actuellement. Si le résultat est fractionnaire, il arrondit toujours à l'entier supérieur.
- La cible suit, `CALL`, sur une des trois possibilités:
    + **EVEN** - Il mise sur un nombre PAIR non nul.
    + **ODD** - Il mise sur un nombre IMPAIR.
    + **PLAIN** - Il mise sur un nombre spécifique: `NUMBER`

**NOTE:** Étant donné que les chances de gagner sont beaucoup plus faibles pour les paris sur **PLAIN**, la cote pour un gain est plus élevé: **35 contre 1**. Pour **EVEN** et **ODD**, la cote est d'**1 contre 1**. Par exemple, si la boule tombe sur 23, et que la cible a parié 100, les gains se font comme ceci:
- S'il a misé sur **EVEN**, alors il aura perdu son pari de 100.
- S'il a misé sur **ODD**, alors il récupère son pari de 100, et gagne un bonus de 100.
- S'il a misé sur **PLAIN** et spécifié un nombre différent de 23, alors il aura perdu son pari de 100.
- S'il a misé sur**PLAIN** et spécifié 23 comme nombre, alors il récupère son pari de 100, et gagne un bonus de 3 500.

### Entrées
- **Ligne 1:** Un entier, `ROUNDS`, pour le nombre de parties que la cible joue.
- **Ligne 2:** Un entier, `CASH`, pour la somme d'argent avec laquelle la cible démarre.
- **`ROUNDS` lignes suivantes:** Le jeu `PLAY` de la cible pour la partie en cours, constitué de 2 ou 3 variables séparés d'un espace:
    + 1) Un entier, `BALL`, qui représente le résultat de la table de roulette.
    + 2) a string, `CALL`, qui représente la mise de la cible.
    + 3) (optionnel) un entier optionnel, `NUMBER`, qui représente le nombre sélectionné lorsque la cible mise sur **PLAIN**.

### Sortie
La somme d'argent, `MONEY`, de la cible après avoir joué `ROUNDS` manches.

### Contraintes
- 1 ≤ `ROUNDS` ≤ 100
- 50000 ≤ `CASH` ≤ 100000
- `CALL` peut être un texte avec **EVEN**, **ODD** ou **PLAIN** avec un entier `NUMBER`
- Si `NUMBER` est défini, 0 ≤ `NUMBER` ≤ 36
- 1 ≤ `MONEY` ≤ 1 000 000

### Exemple

Entrée | Sortie
------------ | -------------
57<br>
70545<br>
31 PLAIN 30<br>
18 PLAIN 35<br>
14 PLAIN 32<br>
25 ODD<br>
13 PLAIN 9<br>
14 PLAIN 34<br>
32 ODD<br>
26 PLAIN 9<br>
29 EVEN<br>
7 PLAIN 21<br>
32 PLAIN 29<br>
0 PLAIN 7<br>
7 PLAIN 34<br>
13 PLAIN 14<br>
22 PLAIN 8<br>
25 PLAIN 28<br>
11 PLAIN 20<br>
14 ODD<br>
23 ODD<br>
13 PLAIN 22<br>
2 ODD<br>
23 EVEN<br>
17 ODD<br>
30 EVEN<br>
28 PLAIN 28<br>
5 PLAIN 36<br>
13 EVEN<br>
22 PLAIN 11<br>
5 EVEN<br>
32 PLAIN 25<br>
13 ODD<br>
10 EVEN<br>
28 ODD<br>
15 PLAIN 2<br>
33 EVEN<br>
29 ODD<br>
1 EVEN<br>
19 PLAIN 12<br>
0 PLAIN 34<br>
24 EVEN<br>
16 PLAIN 36<br>
4 EVEN<br>
35 PLAIN 13<br>
14 PLAIN 34<br>
30 ODD<br>
13 EVEN<br>
29 ODD<br>
7 EVEN<br>
18 PLAIN 20<br>
33 ODD<br>
24 PLAIN 28<br>
34 PLAIN 34<br>
33 EVEN<br>
32 EVEN<br>
10 EVEN<br>
13 ODD<br>35 PLAIN 26 | 1153

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Facile/Jack%20Silver%3A%20The%20Casino/jackSilverCasino.swift)