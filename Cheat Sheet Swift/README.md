# Cheat Sheet Swift

Voici un cheat sheet sur le langage Swift (pour Swift 5) avec des notions à réutiliser dans le **CodinGame**, lors de tests techniques ou lors de projets d'applications iOS avec Xcode. Idéal pour tout débutant sur le langage Swift

## Table des matières

- [Variables](#variables)
    + [Types de base](#basetypes)

## <a name="variables"></a>Variables

Comme en JavaScript, on utilise `var`pour une variable dont son contenu est modifiable et `let`pour des constantes dont son contenu ne peut pas changer.

### <a name="baseTypes"></a>Types de base

Le type `Int` pour les nombres entiers, allant jusqu'à 32 bits.

```swift
var n: Int = 1
```

Pour des nombres entiers plus grands, utilisez `Int64` allant jusqu'à 64 bits.

```swift
var bigN: Int64 = 100000000000
```

Le type `Float` pour les nombres décimaux, avec une partie après la virgule (le point représentant la virgule).

```swift
var pi: Float = 3.14
```

Le type `Double` pour les nombres décimaux avec double précision, avec une partie après la virgule (le point représentant la virgule). Il est préférable d'utiliser `Double` au lieu de `Float`.

```swift
let pi: Double = 3.14159265359
```

Le type `String` représente une chaîne de caractères, comme du texte.

```swift
var message: String = "Hello World!"
```

Le type `Bool` est booléen faisant office de variable à 2 états de la table de vérité étant vrai avec `true` ou faux avec `false`. À utiliser dans les opérations logiques et notamment dans les conditions.

```swift
var estConnecté: Bool = false
var estDisponible: Bool = true
```