# CodinGame: Bulgarian solitaire

## Puzzle de la communauté proposé par cubomedusae.

**ORIGINAL TEXT (ENGLISH)**

## Goal

In Bulgarian solitaire you are given piles of cards. In each turn you do 2 steps:
- **Step 1:** Take a card from each pile. Piles with no cards are ignored.
- **Step 2:** Make a new pile with the cards taken in step 1.

You repeat the steps until you find a loop, meaning a configuration which has appeared previously. Again, piles with no cards are ignored. Also, ordering is not important, e.g. 1 card in the first pile and 2 cards in the second pile is considered the same as 2 cards in the first and 1 card in the second.

Card values are irrelevant.

The goal of this puzzle is to find the `length` of the loop (there is always a loop).

In the examples below, Turn 0 refers to the starting number of cards in each pile, and the other Turns refer to the number of cards in each pile (including a newly created pile) after each turn.

### Example 1

- Turn 0 | 3
- Turn 1 | 2 1
- Turn 2 | 1 0 2

Ignoring ordering and piles with no cards, Turn 1 and Turn 2 show the same configuration of 1 2. The `length` of the loop is 1.

### Example 2

- Turn 0 | 1 3 3 4
- Turn 1 | 0 2 2 3 4
- Turn 2 | 0 1 1 2 3 4
- Turn 3 | 0 0 0 1 2 3 5
- Turn 4 | 0 0 0 0 1 2 4 4
- Turn 5 | 0 0 0 0 0 1 3 3 4

Ignoring ordering and piles with no cards, Turn 0 and Turn 5 show the same configuration of 1 3 3 4. The `length` of the loop is 5.

### Example 3

- Turn 0 | 1 0 5 1
- Turn 1 | 0 0 4 0 3
- Turn 2 | 0 0 3 0 2 2
- Turn 3 | 0 0 2 0 1 1 3
- Turn 4 | 0 0 1 0 0 0 2 4
- Turn 5 | 0 0 0 0 0 0 1 3 3
- Turn 6 | 0 0 0 0 0 0 0 2 2 3

Ignoring ordering and piles with no cards, Turn 2 and Turn 6 show the same configuration of 2 2 3. The `length` of the loop is 4.

Reference: https://en.wikipedia.org/wiki/Bulgarian_solitaire

### Input
- **Line 1:** An integer `N` for the initial number of piles.
- **Line 2:** `N` space-separated integers `C` representing the initial number of cards in each pile.

### Output
- **Line 1:** An integer representing the `length` of the loop.

### Constraints
- 0 < `N` < 100

### Example

Input | Output
------------ | -------------
1<br>3 | 1

**TRADUCTION (FRANÇAIS)**

## Objectif

Dans le solitaire Bulgare il vous est donné des piles de cartes. À chaque tour, vous avez à effectuer ces 2 étapes:
- **Étape 1:** Prendre une carte de la pile. Les piles sans cartes sont ignorées.
- **Étape 2:** Créer une nouvelle pile avec les cartes prises de l'étape 1.

Vous répétez les étapes jusqu'à ce que vous trouvez une boucle, c'est à dire une configuration qui est apparue précédemment. Encore une fois, les piles sans cartes sont ignorées. Aussi, l'ordre n'a pas d'importance, par exemple 1 carte dans la première pile et 2 cartes dans la seconde pile est considéré comme en tant que 2 cartes dans la première et 1 dans la seconde.

Les valeurs des cartes ne sont pas significatives.

Le but de ce puzzle est de trouver la `longueur` de la boucle (il y a toujours une boucle).

Dans les exemples ci-dessous, le tour 0 se réfère au nombre de départ de cartes dans chaque pile, et les autres tours se réfèrent au nombre de cartes dans chaque pile (incluant les piles nouvellement créées) après chaque tour.

### Exemple 1

- Tour 0 | 3
- Tour 1 | 2 1
- Tour 2 | 1 0 2

En ignorant l'ordre et les piles sans cartes, Tour 1 et Tour 2 montrent la même configuration étant 1 2. La `longueur` de la boucle est 1.

### Exemple 2

- Tour 0 | 1 3 3 4
- Tour 1 | 0 2 2 3 4
- Tour 2 | 0 1 1 2 3 4
- Tour 3 | 0 0 0 1 2 3 5
- Tour 4 | 0 0 0 0 1 2 4 4
- Tour 5 | 0 0 0 0 0 1 3 3 4

En ignorant l'ordre et les piles sans cartes, Tour 0 et Tour 5 montrent la même configuration étant 1 3 3 4. La `longueur` de la boucle est 5.

### Exemple 3

- Tour 0 | 1 0 5 1
- Tour 1 | 0 0 4 0 3
- Tour 2 | 0 0 3 0 2 2
- Tour 3 | 0 0 2 0 1 1 3
- Tour 4 | 0 0 1 0 0 0 2 4
- Tour 5 | 0 0 0 0 0 0 1 3 3
- Tour 6 | 0 0 0 0 0 0 0 2 2 3

En ignorant l'ordre et les piles sans cartes, Tour 2 et Tour 6 montrent la même configuration étant 2 2 3. La `longueur` de la boucle est 4.

Référence: https://fr.wikipedia.org/wiki/Solitaire_bulgare

### Entrées
- **Ligne 1:** Un entier `N` pour le nombre initial de piles.
- **Ligne 2:** `N` entiers `C`séparés par un espace représentant le nombre initial de cartes dans chaque pile..

### Sortie
- **Ligne 1:** An integer representing the `length` of the loop.

### Contraintes
- 0 < `N` < 100

### Exemple

Entrée | Sortie
------------ | -------------
1<br>3 | 1

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Moyen/Bulgarian%20solitaire/bulgarianSolitaire.swift)