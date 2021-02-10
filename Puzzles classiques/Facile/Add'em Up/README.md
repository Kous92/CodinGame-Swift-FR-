# CodinGame: Add'em Up

## Puzzle de la communauté proposé par java_coffee_cup

**ORIGINAL TEXT (ENGLISH)**

## Goal

In a CardFight® game, players are fighting each others by assembling a deck of cards and use strategy and tactics to defeat their opponents. Each card has a health point recorded as an integer. Cards with too low health points are quite useless in the battle arena.

However, low health point cards still have their value. CardFight® company is offering a conversion service, which is a machine allowing players to insert two cards, press a recycle button, and get output of one new card with a health point equals to the sum of the two original cards.

It seems there is no upper limit to the health points in cards produced by the machine. Hurray! By making good use of this conversion machine, you can trade-in your cards to get new cards with as high health points as you wish.

You know the business rule - nothing is free. Every time when you obtain a new card from the machine, you have to pay a service fee proportional to the health point on the new card. For example, if you insert an old 1-point card and another old 2-point card, you will obtain a new card of 3 points. CardFight® will debit you 3 dollars from your account.

When you have a stack of cards wishing to add up their points into a new card, you find that ordering matters.

Say, you have three cards of points 1, 2 and 3.
Insert 1 and 2 to get a new card of 3 points. Cost $3.
You now have a new 3-point card and your origianl 3-point card.
Insert 3 and 3 to get a new card of 6 points. Cost $6.
Total cost is $9.

Doing it in another way.
Insert 2 and 3 to get a new card of 5 points. Cost $5.
You now have a new 5-point card and your origianl 1-point card.
Insert 1 and 5 to get a new card of 6 points. Cost $6.
Total cost is err... $11?!

Being a smart player you should find the best strategy to finish the trade-in with the lowest cost.

### Input
- **Line 1:** An integer `N` for the number of cards to trade-in.
- **Line 2:** `N` positive integers separated by space, representing the point value on each card.
- Your target is to trade-in all the cards in the list into one new card.

### Output
- **Line 1:** The lowest total cost to finish the conversion.

### Constraints
- 2 ≤ `N` ≤ 5000
- each integer `x` will be 0 < `x` ≤ 100000

### Example

Input | Output
------------ | -------------
3<br>1 2 3 | 9

**TRADUCTION (FRANÇAIS)**

## Objectif

Dans le jeu CardFight®, les joueurs s'affrontentent entre eux en assemblant des paquets de cartes et en utilisant des stratégies et tactiques pour vaincre ses adversaires. Chaque carte a un nombre de points de vie enregistrés en tant qu'entier. Les cartes avec un nombre de points de vie trop faible sont assez inutiles dans l'arène de combat.

Cependant, les cartes à points de vie faibles ont tout de même de la valeur. La société CardFight® offre un service de conversion, par le biais d'une machine permettant aux joueurs d'insérer 2 cartes, appuyer sur le bouton de recyclage et obtenir en sortie une nouvelle carte avec des points de vie égaux à la somme des 2 cartes originales.

It seems there is no upper limit to the health points in cards produced by the machine. Hurray! By making good use of this conversion machine, you can trade-in your cards to get new cards with as high health points as you wish.
Il semble ici qu'il n'y a pas de limite haute sur les points de vie produit par la machine. Hourra ! En effectuant une bonne utilisation de la machine de conversion, vous pouvez échanger vos cartes pour obtenir de nouvelles cartes avec un nombre de points de vie plus élevé comme vous le souhaitez.

Vous connaissez la règle du business - rien n'est gratuit. À chaque fois que vous obtenez une nouvelle carte de la machine, vous avez à payer des frais de service proportionnels aux points de vie de la nouvelle carte. Par example, si vous insérez une ancienne carte à 1 point de vie et une ancienne carte à 2 points de vie, vous allez obtenir une nouvelle carte à 3 points de vie. CardFight® vous débitera de 3 dollars sur votre compte.

Quand vous avez une pile de cartes souhaitant combiner leurs points en une nouvelle carte, vous trouverez que l'ordre importe.

Dites-vous que vous avez 3 cartes qui ont respectivement 1, 2 et 3 points.
Insérez 1 et 2 pour avoir une nouvelle carte à 3 points. Coûte 3$.
Vous avez maintenant une nouvelle carte à 3 points et votre carte originale à 3 points.
Insérez 3 et 3 pour avoir une nouvelle carte à 6 points. Coûte 6$.
Le coût total est de 9$.

Faites-le d'une autre façon.
Insérez 2 et 3 pour avoir une nouvelle carte à 5 points. Coûte 35.
Vous avez maintenant une nouvelle carte à 5 points et votre carte originale à 1 point.
Insérez 1 et 5 pour avoir une nouvelle carte à 6 points. Coûte 6$.
Le coût total est euh... 11$?!

En devenant un joueur intelligent, vous devriez trouver la meilleure stratégie pour terminer la conversion avec le plus petit coût.

### Entrée
- **Ligne 1:** Un entier `N` pour le nombre de cartes à échanger.
- **Ligne 2:** `N` entiers positifs séparés par un espace, représentant la valeur en points de chaque carte.
- Votre objectif est d'échanger toutes les cartes de la liste en une nouvelle carte.

### Sorties
- **Ligne 1:** Le coût total le plus bas pour terminer la conversion.

### Contraintes
- 2 ≤ `N` ≤ 5000
- Chaque entier `x` sera compris dans l'intervalle 0 < `x` ≤ 100000

### Exemple

Entrée | Sortie
------------ | -------------
3<br>1 2 3 | 9

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Facile/Add%27em%20Up/addEmUp.swift)