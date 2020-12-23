# CodinGame: Happy Numbers

## Puzzle de la communauté proposé par java_coffee_cup.

**ORIGINAL TEXT (ENGLISH)**

## Goal
A **happy number** is defined by the following process:
Starting with any positive integer, replace the number by the sum of the squares of its digits in base-ten, and repeat the process until the number either equals 1 (where it will stay), or it loops endlessly in a cycle that does not include 1. Those numbers for which this process ends in 1 are **happy** numbers, while those that do not end in 1 are **unhappy** numbers.

Given a list of numbers, classify each of them as happy or unhappy.

### Input
- **Line 1:** An integer `N` for the number of numbers to test.
- **Following `N` lines:** Each line has a positive integer you should test whether it is happy or not.

Be aware that some input numbers are really BIG, much bigger than your `Integer` type can handle. Find a way to overcome it.

### Output
Output `N` lines.
Following the same order as inputs, each line starts with a given number from the list, a space, and then an ascii art `:)` or `:(` to indicate this number is happy or unhappy.

### Example

Input | Output
------------ | -------------
2<br>23<br>24 | 23 :)<br>24 :(

**TRADUCTION (FRANÇAIS)**

## Objectif

Un **nombre heureux** est défini par le processus suivant:
En partant de n'importe quel entier positif, remplacez le nombre par la somme des carrés de ses chiffres en base 10, et répétez le processus jusqu'à ce que le nombre soit égal à 1 (où il restera), ou boucle à l'infini dans un cycle qui ne contient pas 1. Ces nombres pour lesquels le processus finit en 1 sont **heureux**, alors que ceux qui ne finissent pas en 1 sont des nombres **malheureux**.


### Entrée
- **Line 1**: Un entier `N` pour le nombre de nombres à tester.
- **`N` lignes suivantes**: Une ligne a un nombre entier positif que vous testerez si oui ou non il est heureux.

Faites attention que certains nombres sont vraiment ÉNORMES, bien plus grands que ce que votre type `Integer` peut supporter. Trouvez un moyen de le surmonter.

### Sortie
Afficher `N` lignes.
Suivant le même ordre que les entrées, chaque ligne démarre avec le nombre donné de la liste, un espace, et un art ascii `:)` ou `:(` pour indiquer si le nombre est heureux ou malheureux.

### Exemple

Entrée | Sortie
------------ | -------------
2<br>23<br>24 | 23 :)<br>24 :(

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Facile/Happy%20Numbers/happyNumbers.swift)