# CodinGame: Factorial vs Exponential

### Puzzle de la communauté proposé par ValNykol.

**ORIGINAL TEXT (ENGLISH)**

### Goal

For each of the given numbers `A`, find the smallest integer `N`, such that **A^N < N!** , where **N! = 1 * 2 * ... * N**
The numbers given can have up to 2 digits after decimal point.

### Input
- **Line 1**: An integer `K` for the number of inputs.

### Output
- **Line 1**: **K** space separated integers: `N_1`, `N_2`, ... , `N_K`.

### Constraints
- 3 ≤ `digit count` ≤ 300

### Example

Input | Output
------------ | -------------
2<br>2 3 | 4 7

**MY SOLUTION IS OFFICIALLY THE WORLD'S FIRST IN SWIFT :)**

**TRADUCTION (FRANÇAIS)**

## Objectif
Pour chaque nombre `A` donné, trouver le plus petit entier `N`, tel que **A^N < N!** , où **N! = 1 * 2 * ... * N**
Les nombres donnés peuvent avoir jusqu'à 2 chiffres après la virgule.

### Entrée
- **Line 1**: Un entier `K` pour le nombre d'entrées.

### Sortie
- **Une ligne**: `K` nombres entiers séparés chacun par un espace: `N_1`, `N_2`, ... , `N_K`.

### Contraintes
1 ≤ `K` ≤ 100
1 < `A_i` < 10000

### Exemple

Entrée | Sortie
------------ | -------------
2<br>2 3 | 4 7

### Solution

En Swift, gérer les opérations avec les logarithmes, exponentielles et factorielles s'avère délicat, avec les contraintes de type.
Il faut savoir aussi que le logarithme est l'opération inverse de l'exponentielle et que faire le logarithme de l'exponentielle va annuler l'exponentielle. De même avec l'exponentielle du logarithme qui annule le logarithme.

L'énoncé n'est pas clair, et pour résoudre le problème, il faut enchaîner des opérations du logarithme dans une boucle.

- Pour commencer, il faut initialiser le tableau de flottants `Float`, le type `Int` faussera les résultats
```swift
var result = [Float]()
```

- Dans la boucle fournie où chaque valeur sera lue (stockée dans `i`), initialiser 2 valeurs en plus de la valeur A fournie (la conversion de `Int` en `Float`).
```swift
for i in ((readLine()!).split(separator: " ").map(String.init)) {
    let A = Float(i)!
    var Z: Float = 0
    var smallest: Float = 1 // Le plus petit entier à trouver
}
```
- Z fera office de fonction qui va incrémenter à chaque itération la différence entre les logarithmes de A et du plus petit entier à trouver (qui incrémente de 1 à chaque itération). Z est décroissant et on arrête la boucle s'il est négatif. À la fin de la boucle, on ajoute la valeur plus petit entier à trouver incrémenté en enlevant 1.
```swift
for i in ((readLine()!).split(separator: " ").map(String.init)) {
    let A = Float(i)!
    var Z: Float = 0
    var smallest: Float = 1 // Le plus petit entier à trouver

    while Z >= 0 {
        Z += log(A) - log(smallest)
        smallest += 1
    }

    result.append(smallest - 1)
}
```
- Pour l'affichage, il faut afficher une chaîne qui contient des entiers séparés de chaque espace. Pour cela, on fait un combo avec le `Float` en `Int`, le `Int` en `String`, le tout dans un `map()` qui appliquera les conversions sur chaque élément du tableau et pour terminer, la fonction `joined(separator: " ")` va mettre les données du tableau en format de chaîne séparées d'un espace.
```swift
print(result.map{String(Int($0))}.joined(separator: " "))
```

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Moyen/Factorial%20vs%20Exponential/factorialVSExponential.swift)