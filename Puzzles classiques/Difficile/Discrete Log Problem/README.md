# CodinGame: Discrete Log Problem

## Puzzle de la communauté proposé par Maurice_Moss

**ORIGINAL TEXT (ENGLISH)**

## Goal

ElGamal encryption is a public-key cryptosystem. It uses asymmetric key encryption for a safe communication between two people.

Let us assume that Alice wants to communicate with Bob. Alice generates three large random integers:
- `Q` a prime used as the order of the key
- 0 < `G` < `Q` a generator
- `X`, Alice's secret key

Alice computes `H` = `G`^`X` mod `Q` and publicly shares with Bob the public key (`G`, `H`, `Q`). As an attacker, you intercept this key and decide to spy on their communications. To do so, you need to find Alice's secret key `X`. This can be done by performing a discrete logarithm attack on this key.

Given the public key (`G`, `H`, `Q`), you are asked to perform this attack: find the lowest integer `X` such that `G`^`X` mod `Q` = `H`.

The rest of this protocol is not explained to avoid overload but it can be found on https://en.wikipedia.org/wiki/ElGamal_encryption

### Input
- **Line 1:** The public key (`G`, `H`, `Q`)

### Output
- **Line 1:** Alice's private key `X`.

### Constraints
- 1 < `G`, `H` < `Q`
- 1 < `X` < `Q-1`.
- 0 < `Q` < 50,000,000,000

### Example

Input | Output
------------ | -------------
654 4547 11087 | 114

**TRADUCTION (FRANÇAIS)**

## Objectif

La cryptographie ElGamal est un cryptosystème à clé publique. Elle utilise une cryptographie asymétrique à clé pour une communication sûre entre 2 personnes.

Supposons qu'Alice veut communiquer avec Bob. Alice génère 3 grands nombres entiers aléatoires:
- `Q` un entier premier en tant qu'ordre de la clé
- 0 < `G` < `Q` un générateur
- `X`, la clé secrète d'Alice.

Alice calcule `H` = `G`^`X` mod `Q` et partage publiquement avec Bob sa clé publique (`G`, `H`, `Q`). En tant qu'attaquant, vous interceptez cette clé et vous décidez d'espionner leurs communications. Pour le faire, vous devez trouvez la clé secrète d'Alice qui est `X`. Cela peut être effectué par une attaque de cette clé en logarithme discret.

Ayant la clé publique (`G`, `H`, `Q`), on vous demande d'effectuer cette attaque: trouvez le plus petit entier `X` tel que `G`^`X` mod `Q` = `H`.

Le reste de ce protocole n'est pas expliqué pour éviter la surcharge, mais elle peut être trouvée ici: https://en.wikipedia.org/wiki/ElGamal_encryption

### Entrée
- **Ligne 1:** La clé publique (`G`, `H`, `Q`)

### Sortie
- **Ligne 1:** La clé privée d'Alice, `X`.

### Contraintes
- 1 < `G`, `H` < `Q`
- 1 < `X` < `Q-1`.
- 0 < `Q` < 50 000 000 000

### Exemple

Entrée | Sortie
------------ | -------------
654 4547 11087 | 114

### SOLUTION:

L'arithmétique modulaire est de rigueur pour résoudre ce problème, mais attention ici, les nombres sont grands et une simple solution ne suffira pas. La difficulté **Difficile** du problème se justifie par le fait de:
- Coder une solution optimale pas trop longue pour cracker la clé secrète
- Implémenter l'exponentiation rapide modulaire de façon optimale pour les grands nombres sans dépassement de capacité (overflow).

La solution de la force brute où on applique l'exponentiation rapide modulaire `G^X % Q` avec `G` comme base, `Q` comme modulo et `X` qui est testé à chaque itération de la boucle (`X` allant de 1 à `Q - 1`) est une première approche mais s'avèrera inutile, **CodinGame** refusera la solution dès le 3ème jeu de test qui est de grande capacité et qui sera trop long à calculer.

La seule solution est donc d'implémenter l'algorithme Baby Step - Giant Step pour pouvoir résoudre l'équation du logarithme discret. De plus, pour que cela fonctionne, il faut le faire de façon optimale pour des grands nombres de plus de 32 bits, sans faire d'overflow sur la capacité maximale du type `Int` avec 64 bits (`Int64`), en utilisant non seulement l'algorithme de l'exponentiation rapide, mais aussi une version optimisée de la multiplication modulaire `a * b % n` où il faudra utiliser les opérateurs binaires avancés de manipulation de bits (généralement utilisés par les experts du développement logiciel). De plus pour éviter l'overflow, il faut utiliser la version non signée du type `Int64` étant `UInt64`. 

**IMPORTANT À SAVOIR**: La plateforme système qui fait tourner le serveur **CodinGame** est sur 64 bits, donc conformément à ce qu'Apple mentionne, le type `Int` est équivalent à `Int64`, en non signé `UInt` équivaut à `UInt64`. Si la plateforme était sur 32 bits, alors on utiliserait explicitement `Int64` et `UInt64`, `Int` et `UInt` seraient donc sur 32 bits par défaut.

Les plages de valeurs du type `Int` et ses variants sur 32 et 64 bits (note, le type entier a aussi sa version sur 8 et 16 bits):
```swift
// Entier signé sur 32 bits
print(Int32.min) // -2 147 483 648
print(Int32.max) // 2 147 483 647

// Entier non signé sur 32 bits
print(UInt32.min) // 0
print(UInt32.max) // 4 294 967 295 (2^32 - 1)

// Entier signé sur 64 bits
print(Int64.min) // -9 223 372 036 854 775 808
print(Int64.min) // 9 223 372 036 854 775 807 (2^64 - 1) / 2

// Entier non signé sur 64 bits
print(UInt64.min) // 0
print(UInt64.max) // 18 446 744 073 709 551 615 (2^64 - 1)
```

L'algorithme du Baby Step - Giant Step s'implémente comme ceci:
- 1. On calcule la racine carrée m de Q afin de réduire la complexité de l'algorithme: 
```swift
let m = UInt(sqrt(Float(Q)))
```

- 2. On initialise un dictionaire qui contiendra en clé la valeur du produit modulaire e * G % Q en commençant par e = 1, et en valeur l'indice i en bouclant de 0 à m, d'où la complexité réduite O(m) au lieu de O(Q). On initialise aussi e à 1, qui sera l'exposant pour trouver la clé secrère
```swift
var table: [UInt: UInt] = [:]
var e: UInt = 1

for i in 0 ... m {
    table[e] = i
    e = modularMultiplication(e, G, Q)
}
```

- 3. En appliquant le petit théorème de Fermat G^(-m) = G(Q - 1 - m), on effectue l'exponentiation rapide modulaire f = G^(Q - m - 1) % Q. Il s'agit donc de l'initialisation de l'étape du Giant Step. On affecte maintenant à e la valeur H, qui est à vérifier dans l'équation G^e % Q = H
```swift
// Application du petit théorème de Fermat: f = G^(-m) = G^(Q - m - 1) % Q
let factor = fastModularExponentiation(G, Q - m - 1, Q)
e = H
```

- 4. Giant Step: En bouclant de 0 à m, on vérifie avec e comme clé du dictionnaire s'il existe, et si c'est le cas, la clé secrète est égale à la valeur de la clé e dans le dictionnaire + i x m (avec i entre 0 et m). Sinon, on calcule e = e x f % Q (f étant le pré-calcul issu du petit théorème de Fermat). Si la boucle est finie, alors il n'y a pas de solution.
```swift
// Giant step
for i in 0 ... m {
    // G^i % Q = H, clé secrète trouvée
    if let v = table[e] {
        return i * m + v
    }

    e = modularMultiplication(e, factor, Q)
}

// Pas de solution trouvée
return 0
```

Et voici donc l'implémentation complète du Baby Step - Giant Step
```swift
func babyStepGiantStep() -> UInt {
    let m = UInt(sqrt(Float(Q)))
    var table: [UInt: UInt] = [:]
    var e: UInt = 1
    
    // Baby step
    for i in 0 ... m {
        table[e] = i
        // e = e * G % Q
        e = modularMultiplication(e, G, Q)
    }

    // Giant step precomputation: f = G^(Q - m - 1) % Q
    let factor = fastModularExponentiation(G, Q - m - 1, Q)
    e = H

    // Giant step
    for i in 0 ... m {
        // G^i % Q = H, solution found    
        if let v = table[e] {
            return i * m + v
        }

        e = modularMultiplication(e, factor, Q)
    }

    // No solution found
    return 0
}
```

Dans le code source ci-dessous, vous aurez les implémentations des algorithmes optimisés de la multiplication modulaire et de l'exponentiation rapide modulaire.

Un grand merci à [RoboStack](https://www.codingame.com/profile/771485904355a5f6267beb29429cad302257061) pour son aide quant à l'implémentation optimisée des algorithmes d'exponentiation rapide modulaire combinée à la version optimisée de la multiplication modulaire pour optimiser l'implémentation de l'algorithme du Baby Step - Giant Step. Également à [pardouin](https://www.codingame.com/profile/f5e3b2911a0a16192867d634937546a60165483).

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Difficile/Discrete%20Log%20Problem/discreteLogProblem.swift)