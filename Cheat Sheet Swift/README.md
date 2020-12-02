# Cheat Sheet Swift

Voici un cheat sheet sur le langage Swift (pour Swift 5) avec des notions à réutiliser dans le **CodinGame**, lors de tests techniques ou lors de projets d'applications iOS avec Xcode. Idéal pour tout débutant sur le langage Swift

## Table des matières

- [Variables](#variables)
    + [Types de base](#basetypes)
    + [Bonus](#varbonus)

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

### <a name="varBonus"></a>Bonus
Grâce à Apple, et pour plus de fun, il est possible dans les noms de variables en Swift d'utiliser des caractères spéciaux qu'ils soient:
- Accentués comme dans la langue française
- De langues étrangères avec les caractères arabes, chinois, japonais, coréens, cyrilliques, indiens, thaïlandais,... (dans le monde entier)
- Utilisant des émojis et tout autre caractère Unicode.
- Le tout en conservant la convention des autres langages: **Les symboles d'opérateurs, espaces, arobases (@), chiffres au début du nom sont interdits, le compilateur le refuse**. Swift autorise l'utilisation des mots-clés du langage seulement en entourant le mot-clé avec des apostrophes inversées (`\``), **À N'UTILISER QU'EN CAS DE NÉCESSITÉ ABSOLUE, À PROSCRIRE EN TEMPS NORMAL !**.

```swift
var english = "Hello"
var français = "Bonjour"
var السلام عليكم" = العربية"
var 日本人 = "こんにちは"
var 😀 = "🙋‍♂️"
```