# CodinGame: Horse-racing hyperduals

### Puzzle de la communauté proposé par JBM.

## ÉNONCÉ

Dans ce problème, vous devrez trouver les deux nombres les plus proches entre eux dans une liste de nombres. La liste peut être assez grande et vous aurez alors à trouver la meilleure complexité pour votre solution. Ici, il s'agit de la version compliquée du puzzle Chevaux de course, avec 2 critères au lieu d'un: la vitesse et l'élégance.

## Objectifs

**ORIGINAL TEXT (ENGLISH)**

Casablanca’s hippodrome has grown tired of old-fashioned dual racing and has kicked it up a notch: they will now be organizing hyperduals.

During a hyperdual, only two horses will participate in the race. In order for the race to be interesting, it is necessary to try to select two horses with similar strength.

Write a program which, using a given number of strengths, identifies the two closest strengths and shows their difference with an integer.

In a hyperdual, a horse's strength is a bidimensional (Velocity,Elegance) vector. The distance between two strengths (V1,E1) and (V2,E2) is abs(V2-V1)+abs(E2-E1).

(This is a harder version of training puzzle “Horse-racing duals”. You may want to solve that problem first.)
(To date there is no specific achievement if you solve this one in pure bash. Rest assured it *is* possible nonetheless!)

**TRADUCTION (FRANÇAIS)**:

L’hippodrome de Casablanca s’est lassé des courses de duels à l’ancienne et l’a fait monter d’un cran: ils vont désormais organiser des hyperduels.

Durant un hyperduel, seulement 2 chevaux vont participer à cette course. Dans le but de rendre la course plus intéressante, il est nécessaire de tenter de choisir 2 chevaux d'une force similaire.

Écrivez un programme qui, à partir d’un ensemble donné de puissances, identifie les deux puissances les plus proches et affiche leur écart avec un nombre entier positif.

Dans un hyperduel, la puissance d'un cheval est un vecteur bidimensionnel (vitesse, élégance). La différence entre les 2 puissances (V1, E1) et (V2, E2) est abs(V2 - V1) + abs(E2 - E1), abs() en tant que valeur absolue.

(Il s'agit d'une version plus dure du puzzle d'entraînement "Chevaux de course". Il est recommandé de résoudre ce problème d'abord. À l'heure actuelle, il n'existe pas de succès spécifique si vous résolvez ce puzzle en pur Bash. Rassurez-vous, c'est **néanmoins possible** de le résoudre)

## Données du jeu

### Entrée

- Ligne 1 : Le nombre `N` de chevaux 
- Les `N` lignes suivantes : la vitesse `Vi`  et l'élégance `Ei`de chaque cheval, séparés par un espace, `Vi` et `Ei` sont des entiers.

### Sortie
- Ligne 1: La différence `D` entre les deux puissances les plus proches. `D` est un entier positif.

### Contraintes
10 < `N` < 600
0 < `Vi`, `Ei` ≤ 10000000
`D` ≥ 0

### Exemple
Entrée | Sortie
------------ | -------------
10<br>6850207 0<br>8707138 0<br>8028585 0<br>3635318 0<br>8612162 0<br>6854699 0<br>7106093 0<br>3721952 0<br>2670046 0<br>1746583 0 | 10

## Solution

 1. Créer un objet modélisant le cheval avec 2 attributs entiers, puissance et élégance. Comme ceci en Swift:
 ```swift
 // Ici, on va créer une structure sous forme d'objet
struct Horse {
    var speed: Int
    var elegance: Int

    init(speed: Int, elegance: Int) {
        self.speed = speed
        self.elegance = elegance
    }
}
```
 2. Initialiser la différence à la valeur max de Int: `Int.max`
 3. Initialiser un tableau de chevaux (de type objet)
 4. Dans la boucle `for` qui lit les données de chaque cheval, remplir le tableau en instanciant l'objet en fournissant V et E comme ceci:
```swift
if N > 0 {
    for i in 0...(N-1) {
        let inputs = (readLine()!).split(separator: " ").map(String.init)
        let V = Int(inputs[0])!
        let E = Int(inputs[1])!
        horses.append(Horse(speed: V, elegance: E))
    }
}
```
4. On va utiliser 2 boucles `for` imbriquées
5. Boucle `for`, avec i de 0 à `horses.count`, il s'agit du second cheval (ici E2 et V2)
6. Boucle `for` imbriquée dans la première boucle, avec j de `i + 1` à `horses.count`, `i + 1` car on n'a pas à comparer le précédent (qui est géré dans la première boucle), et à chaque itération de i, l'intervalle de la seconde boucle se réduit.
7. Dans la boucle: on applique la formule abs(V2 - V1) + abs(E2 - E1), cela résulte à ceci:
```swift
let distance = abs(horses[i].speed - horses[j].speed) + abs(horses[i].elegance - horses[j].elegance)
```
8. Comparer le résultat calculé et le stocker s'il est plus petit que la différence actuelle
 ```swift
if distance < closestDistance {
    closestDistance = distance
}
```

[Code source de la solution](:doc:/horseRacingHyperduals.swift)