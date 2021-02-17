# CodinGame: langage Swift

![CodinGame](https://www.it-connect.fr/wp-content-itc/uploads/2017/02/codingame-wall.jpg)

## Mon profil CodinGame
Pour consulter, mon profil de développeur sur **CodinGame**, [c'est ici](https://www.codingame.com/profile/7db76a59bcdf34852132ed82e45bf4f62696733)
- **Niveau actuel: 14** (rang bronze)

## Introduction
Ici, je vais parler du **CodinGame**, et je mettrai en avant le langage Swift et ce qui réfère au développement iOS natif avec Swift et Xcode.

![Swift logo](https://codabee.com/wp-content/uploads/2019/05/1280px-Swift_logo_with_text.svg_.png)

Aujourd'hui, le **CodinGame** est utilisé par de plus en plus d'entreprises et de recruteurs (notamment dans les ESN/SSII) pour tester techniquement leurs candidats. De quoi s'agit-il au juste ?

**CodinGame**, est une plateforme en ligne de "gamification" de programmation informatique, créée en 2014 par cette start-up française de Montpellier du même nom, proposant les choses suivantes:
 - Puzzles de difficulté croissante mettant en application des notions d'algorithmique, de maths, de logique, ... Dans le jargon des gamers, c'est du PvE (Player VS Environnement).
 - Clash of Code: 8 joueurs s'affrontent en ligne sur un problème à résoudre dans 3 modes de jeu: Le plus rapide, code le plus court et mode reverse (où il faut résoudre le problème en devinant quoi faire avec les entrées et sorties données). Dans le jargon des gamers, il s'agit donc du PvP (Player VS Player) de CodinGame.
 - Combats de bots: programmation d'IA par le code dans différentes thématiques en PvE (Player VS Environnement) ou en PvP (Player VS Player).
 - Des grands challenges sous formes d'événements majeurs de la communauté.

Dans le cadre des puzzles ou du Clash of Code, le but étant de valider des jeux de tests sous forme de tests unitaires où avec des données en entrée il faut fournir le résultat attendu en sortie. Bien évidemment, l'IDE de CodinGame a été conçu pour éviter les réponses codées en dur afin que les algorithmes adéquats soient implémentés. Dans le Clash of Code, la durée est limitée à 15 minutes.

## Puzzles

Ici, je vous propose des solutions sur des puzzles que j'ai résolu (avec un score de 100%) en Swift:
- [Puzzles classiques](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques): **23 puzzles résolus**
	+ [Puzzles faciles](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Facile): **17 puzzles résolus**
	+ [Puzzles moyens](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Moyen): **5 puzzles résolus**
	+ [Puzzles difficiles](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Difficile): **1 puzzle résolu**

## Tests techniques

Pour ce qui est des tests techniques des recruteurs, **CodinGame** est une solution mise en place afin de vérifier la fiabilité des candidats et de réduire les coûts pour le recrutement des développeurs par le biais de systèmes de tests techniques sous forme de QCM, de résolution de problèmes par le code et de correction de code (dans le même type que la résolution de problèmes). Ces tests utilisés peuvent être prédéfinis par CodinGame ou fait sur-mesure. Les recruteurs évalueront par le biais de ce test technique:

 - **Les connaissances de certaines notions provenant de frameworks**. En iOS, ce sera par exemple sur UIKit, Core Data, StoreKit,... Mais aussi du langage lui-même. **Le tout dans un temps très limité, sous forme de QCM.**
 - **L'efficacité de l'algorithme lors de la résolution du problème**, avec un pourcentage. Plus les jeux de tests sont validés, plus le score est élevé. **Ici, aucun framework n'est utilisé**, mais uniquement le langage Swift en lui-même, CodinGame utilisant actuellement le compilateur pour la version 5.1.1 du langage. **Le tout dans un temps limité.**
 - **La rapidité du candidat lorsqu'il résout le problème**. Certes ce n'est pas significatif dans la réalité au sein d'un projet client, mais cela impressionne les recruteurs (n'étant pas techniques eux-mêmes, principalement des Business Developers/Business Managers/Ingénieurs d'affaires ou directement des RH) pour mettre en avant une plus-value lorsqu'ils doivent proposer des profils aux clients et chefs de projets pour ainsi valider l'embauche.

Au final, le recruteur va récupérer un rapport comprenant les résultats du candidat et va ainsi décider de la suite du processus de recrutement. **ATTENTION: Réussir au CodinGame ne va pas forcément dispenser le candidat d'un test technique plus précis par la suite ! Et particulièrement sur des frameworks spécifiques en question !**

À titre personnel, j'ai déjà effectué lors de certains processus de recrutement pour mon stage de fin d'études et pour mon premier emploi des tests techniques avec **CodinGame** sur les notions suivantes:
 - Android avec Java
 - iOS avec Swift
 - Java
 - PHP/mySQL
 - JavaScript

**Le principal inconvénient de ces tests est le fait qu'il est difficile d'écrire du code propre et bien structuré en peu de temps, étant donné que tout est automatisé et que les recruteurs ne regardent pas le code mais le score. Donc, il est très important de ne pas perdre de temps là-dessus !**

Pour nous, jeunes diplômés, étudiants et développeurs juniors, le **CodinGame** est pour nous "la bête noire", du fait que ces tests sont généralement déstabilisants par la forme dont les tests sont mis en place et plus particulièrement lorsqu'il faut résoudre le problème le plus difficile du test en temps très limité ou corriger du code avec un énoncé généralement peu clair. Il est donc nécessaire de s'entraîner dès que possible sur cette plateforme avec les puzzles et le Clash of Code pour pouvoir améliorer ses capacités à résoudre plus rapidement un problème, et exploiter davantage les astuces du langage de programmation. De plus, il faut être en mesure de connaître les notions les plus importantes du langage, framework,... pour répondre correctement aux questions du QCM. Une fois le **CodinGame** bien appréhendé, la seule difficulté restera dans l'algorithme à implémenter en fonction du problème à résoudre.

## Résolution du problème: les choses à savoir pour bien s'en sortir au CodinGame

### Les données en entrée à traiter

Lors de la résolution du problème, ici avec le langage Swift, les données sont récupérées en entrée des façons suivantes:

 - Donnée simple: Pouvant être un entier `Int`, un nombre décimal `Float` ou `Double`, une chaîne de caractères `String` ou d'autre type.
```swift
// readline() étant optionnel, il est donc "unwrappé" pour accéder au contenu
let n = readline()! // Par défaut, de type String
let entier = Int(readline()!)! // Type Int.
```
 - Plusieurs données: Soit dans une boucle `for`,  soit dans un tableau de données par extraction depuis la chaîne, ou une combinaison des 2.
```swift
// En boucle for
let N = Int(readLine()!)! // N pour le nombre de données

if N > 0 {
	for i in 0...(N-1) {
		// En Int
		let x = Int(readLine()!)
		// Ou en String
		let s = readLine()!
		// Et bien d'autres possibilités...
	}
}

// En tableau de données, par un "split" de la chaîne de caractères et l'utilisation de la closure map pour appliquer à chaque élément extrait la valeur souhaitée.
let inputs = (readLine()!).split(separator: " ").map(String.init)
let C = Int(inputs[0])!
let N = Int(inputs[1])!

// Ou bien aussi une combinaison des 2. Ici, il faudra faire un traitement spécifique
let N = Int(readLine()!)! // N pour le nombre de données

if N > 0 {
	for i in 0...(N-1) {
		let inputs = (readLine()!).split(separator: " ").map(String.init)
		let C = Int(inputs[0])!
		let N = Int(inputs[1])!
	}
}
```

### La sortie à fournir en tant que solution

Toute solution dans le CodinGame doit s'afficher avec un `print()`. Attention, dans la plupart des puzzles, Clash of Code et tests recruteurs, la solution doit être affichée d'une façon particulière, souvent une chaîne composée de chaque valeur séparée d'un espace (sauf la dernière valeur). Mais il peut y avoir plusieurs lignes à afficher via la boucle `for` en entrée avec un `print()` répété ou bien en créant la chaîne avec des sauts de lignes `\n`.

```swift
let n = Int(readline()!)!

// Solution à fournir qui sera vérifiée lors de l'exécution des jeux de tests.
print(n * 2)
```

Dans le cas d'un affichage sous forme de chaîne où chaque valeur est séparée par des espaces, il faut faire un combo de conversions de types, fonctions et closures. **ATTENTION: LA SOLUTION EST SENSIBLE À LA CASSE ! LE VÉRIFICATEUR NE VALIDERA PAS LA SOLUTION SI LE FORMAT N'EST PAS RESPECTÉ DE FAÇON EXACTE !!!**

```swift
var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// Affiche "1 2 3 4 5 6 7 8 9 10"
print(array.map{String($0)}.joined(separator: " "))
```

#### Le débug

Souvent, on utilise des `print()` pour vérifier le contenu des données afin de s'assurer que l'algorithme puisse être conforme aux jeux de tests attendus.

Pour cela, **CodinGame** exige l'utilisation du flux d'erreur (ici **errStream**) dans les affichages avec ceci:
```swift
// Débug
print("Debug messages...", to: &errStream)
```

La définition de ce flux d'erreur est systématiquement ajoutée à chaque test en Swift de CodinGame, par le biais de Glibc.
```swift
import Glibc

public struct StderrOutputStream: TextOutputStream {
	public mutating func write(_  string: String) { fputs(string, stderr) }
}

public var errStream = StderrOutputStream()

// Avec ceci, le débug par affichage est donc possible
print("Debug messages...", to: &errStream)
```

Avec ceci, l'IDE qui va exécuter les tests va donc pouvoir faire la distinction entre les messages de débug et les solutions en affichant d'abord les messages de débug puis les solutions.