# CodinGame: Chevaux de course

## ÉNONCÉ
Dans ce problème, vous devrez trouver les deux nombres les plus proches entre eux dans une liste de nombres. La liste peut être assez grande et vous aurez alors à trouver la meilleure complexité pour votre solution.

## Objectifs
L’Hippodrome de Casablanca organise un nouveau type de course de chevaux : les duels. Lors d’un duel, seulement deux chevaux participent à la course. Pour que la course soit intéressante, il faut sélectionner deux chevaux qui ont une puissance similaire.  
  
Écrivez un programme qui, à partir d’un ensemble donné de puissances, identifie les deux puissances les plus proches et affiche leur écart avec un nombre entier positif.

## Données du jeu

### Entrée
 - Ligne 1 : Le nombre  `N` de chevaux Les  `N`  lignes suivantes : la
   puissance  `Pi`  de chaque cheval. `Pi`  est un entier.

### Sortie
 - La différence `D` entre les deux puissances les plus proches. `D` est un entier positif.
 
### Contraintes
1 <  `N`  < 100000  
0 <  `Pi`  ≤ 10000000

### Exemple
Entrée | Sortie
------------ | -------------
3<br>5<br>8<br>9 | 10

## Solution

 1. Remplir le tableau des entrées (chaque cheval)
 2. Initialiser la différence à la valeur max de Int: `Int.max`
 3. Trier par ordre croissant le tableau
 4. Boucle for de 0 à n - 2
 5. Dans la boucle: Plus petite différence = minimum entre la plus petite différence et la différence entre le cheval suivant et le cheval actuel

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Facile/Chevaux%20de%20course/chevauxDeCourse.swift)
