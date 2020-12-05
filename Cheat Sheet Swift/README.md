# Cheat Sheet Swift 5 (Français)

Voici un cheat sheet sur le langage Swift (pour Swift 5) avec des notions à réutiliser dans le **CodinGame**, lors de tests techniques ou lors de projets d'applications iOS (iPadOS inclus)/macOS/watchOS/tvOS avec Xcode. Idéal pour tout débutant sur le langage Swift.

## Table des matières

- [Syntaxe de base](#basesyntax)
- [Variables](#variables)
    + [Types de base](#basetypes)
    + [Expression](#varexp)
    + [Inférence de type](#vartypeinf)
    + [Bonus](#varbonus)
- [Opérateurs](#operators)    
- [Chaînes de caractères](#strings)

## <a name="basesyntax"></a>Syntaxe de base

Dans toute expression en Swift, **il n'y a pas besoin de mettre le point-virgule à la fin d'une expression**. Le point-virgule est utile pour plusieurs déclarations de variables en une seule ligne.

## <a name="variables"></a>Variables

Comme en JavaScript, on utilise `var`pour une variable dont son contenu est modifiable et `let`pour des constantes dont son contenu ne peut pas changer. Utilisez `let` en priorité s'il n'y a pas de modifications à faire.

### Syntaxe
```swift
let <nomVariable> = <valeur>
let <nom>: <type> = <valeur>
```

Les exemples ci-dessous dans les types.

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

Le type `String` représente une chaîne de caractères, comme du texte. Vous pouvez bien évidemment utiliser dans vos chaînes de caractères tous les caractères possibles y compris les émojis,...

```swift
var message: String = "Hello World !"
var emoji: String = "😀"
```

Le type `Bool` est booléen faisant office de variable à 2 états de la table de vérité étant vrai avec `true` ou faux avec `false`. À utiliser dans les opérations logiques et notamment dans les conditions.

```swift
var estConnecté: Bool = false
var estDisponible: Bool = true
```

Dans les cas plus poussés, il y a aussi les types personnalisés avec les notions d'orienté objet.

### <a name="varexp"></a>Expressions

Avec les variables, vous pouvez donc ainsi les utiliser dans des expressions, comme ci-dessous:
```swift
let a: Int = 2
let b: Int = 3
let c: Int = a + b // 5
```

### <a name="vartypeinf"></a>Inférence de type

Comme les langages JavaScript et PHP, Swift peut inférer le type de variable, c'est-à-dire qu'il n'est pas nécessaire de préciser le type de variable lors de sa création, Swift peut donc ainsi reconnaître automatiquement le type de valeur affecté à la variable. Dans des cas spécifiques, préciser son type avant l'affectation d'une valeur devient nécessaire.
```swift
let n: 2 // Int
let message = "Salut" // String
let prix = 9.99 // Double
```

### <a name="varBonus"></a>Bonus
Grâce à Apple, et pour plus de fun, il est possible dans les noms de variables en Swift d'utiliser des caractères spéciaux qu'ils soient:
- Accentués comme dans la langue française, espagnole, portugaise, ...
- De langues étrangères avec les caractères arabes, chinois, japonais, coréens, cyrilliques, indiens, thaïlandais,... (dans le monde entier)
- Utilisant des émojis et tout autre caractère Unicode.
- Le tout en conservant la convention des autres langages: **Les symboles d'opérateurs, espaces, arobases (@), chiffres au début du nom sont interdits, le compilateur le refuse**. Swift autorise l'utilisation des mots-clés du langage seulement en entourant le mot-clé avec des apostrophes inversées (`), **À N'UTILISER QU'EN CAS DE NÉCESSITÉ ABSOLUE, À PROSCRIRE EN TEMPS NORMAL !**.

```swift
var english = "Hello"
var français = "Bonjour"
var السلام عليكم" = العربية"
var 日本人 = "こんにちは"
var 😀 = "🙋‍♂️"

// À proscrire, mais c'est autorisé par le langage Swift
var `import` = "OK"
```

**NOTE: En temps normal, on doit respecter les conventions de nommage international anglophone des variables.** Mais en tout cas, Apple ne fait pas les choses à moitié 😃. Dans une pratique professionnelle, la convention globale de nommage de variables se fait en "camel case" de ce type-là:

```swift
var camelCase = 0
```

## <a name="operators"></a>Opérateurs

Incontournables, les opérateurs permettent d'effectuer diverses opérations selon les cas d'utilisation

### Affectation
L'opérateur d'affectation `=`va affecter le contenu à droite de l'opérande à la variable à gauche de l'opérande. **ATTENTION À NE PAS CONFONDRE AVEC L'OPÉRATEUR CONDITIONNEL D'ÉGALITÉ `==`!**
```swift
var x = 2
```
### Opérateurs mathématiques basiques (type binaire)
- `+` pour l'addition (ou la concaténation avec les chaînes de caractères) -> `a + b` (en String: `"a" + "b" -> "ab"`)
- `-` pour la soustraction -> `a - b`. Utilisé aussi pour inverser le signe d'un nombre: `-a`
- `*` pour la multiplication -> `a * b`
- `/` pour la division -> `a / b`
- `%` pour le modulo (reste de la division euclidienne) -> `a % b`

**ATTENTION: le compilateur Swift râle si vous effectuez des opérations mathématiques avec des types différents l'un de l'autre !!! Il est donc interdit de faire par exemple une multiplication entre un `Int` et un `Double` !** Vous devrez donc être explicite avec des conversions de type (transtypage) pour effectuer des opérations comme ça:
```swift
let a: Int = 4
let b: Double = 5.0

let c: Int = a * b // INTERDIT !
let c: Int = 4 * Int(b) // AUTORISÉ, Swift reconnaît 2 Int pour la multiplication
```

## <a name="strings"></a>Chaînes de caractères (String)

Les chaînes de caractères (`String`) sont des incontournables dans la programmation. On les utilise en permanence, mais il faut aussi leur appliquer des traitements spécifiques comme par exemple pour le filtrage, la mise en forme,...

- Rappel de la déclaration de variable:
```swift
var message: String = "Hello World !"
var message2 = "Bonjour"
```

### Interpolation de chaîne (String interpolation)

Dans une chaîne de caractères en Swift, l'interpolation va permettre de mettre en place des contenus de variables affichables, sous format de chaîne de caractère. En gros, avec la syntaxe d'interpolation, on peut y mettre plusieurs chaînes dans une seule. C'est aussi de cette façon qu'on peut afficher le contenu d'une variable de type `Int`, `Float`, `Double`, `Bool`,... dans une chaîne (entre "").

```swift
\() // Syntaxe d'interpolation de chaîne, à mettre entre les ""

var message: String = "Hello World !"
var message2 = "Le message de base: \(message)"
// Sortie: Le message de base: Hello World

var prix: Int = 1159 // Avec un Int
var sortie = "Le prix de l'iPhone 12 Pro est de \(prix)€" // Interpolation d'un Int
```

### Concaténation de chaînes

En Swift, les opérateurs d'addition `+`et `+=`sont utilisés pour la concaténation de chaînes, c'est à dire que les chaînes seront combinées en une seule.

```swift
// Concaténation avec +
var texte = "Hello " + "World !"

// Concaténation avec += (équivaut à texte = texte + " How are you ?")
texte += " How are you ?"
```

### Multi-lignes dans une chaîne

Pour une chaîne à plusieurs lignes, il suffit de l'entourer avec des triples guillemets `"""`.
```swift
let messageMultiligne = """
Ligne 1
Ligne 2
Ligne 3
"""
```

### Conversion de types différents en String

Swift permet avec une version dédiée de constructeurs (`init`) de convertir des valeurs en chaînes de caractères, comme par exemple avec le type `Int`:
```swift
let n = 123456789
let str = String(number) // Méthode 1
let str2 = "\(number)" // Méthode 2 avec l'interpolation
"""
```

Et il est possible de faire l'opération inverse. ATTENTION, le contenu retourne un optionnel ! Si c'est `nil` et que c'est pas vérifié, ça crashe ! Si vous êtes certain que le contenu est correct et existant, alors il suffira de déballer avec `!`. 
```swift
let str = "123456789"
let n = Int(number)! // ATTENTION, Int(string) retourne Int?
"""
```