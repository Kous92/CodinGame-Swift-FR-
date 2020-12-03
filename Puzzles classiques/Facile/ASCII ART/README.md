# CodinGame: ASCII ART

## ÉNONCÉ

Votre programme doit afficher une ligne de texte en art ASCII.

Vous devez séparer des chaînes de caractères, les enregistrer et en recréer d'autres. Vous pouvez utiliser une structure de donnée (comme un tableau) ou une structure de donnée associative (comme une table de hachage ou dictionnaire).

## Objectif

 Dans les gares et aéroports on croise souvent ce type d'écran :
 
![Affichage ASCII ART](https://www.codingame.com/fileservlet?id=21824381272)

Vous êtes-vous demandé comment il serait possible de simuler cet affichage dans un bon vieux terminal ? Nous oui : avec l'art ASCII !

## Règles
L'art ASCII permet de représenter des formes en utilisant des caractères. Dans notre cas, ces formes sont précisément des mots. Par exemple, le mot "MANHATTAN" pourra être affiché ainsi en art ASCII :

                    "       # #  #  ### # #  #  ### ###  #  ###        "
                    "       ### # # # # # # # #  #   #  # # # #        "
                    "       ### ### # # ### ###  #   #  ### # #        "
                    "       # # # # # # # # # #  #   #  # # # #        "
                    "       # # # # # # # # # #  #   #  # # # #        "
 
​Votre mission : Ecrire un programme capable d'afficher une ligne de texte en art ASCII dans un style qui vous est fourni en entrée.

## Entrées du jeu

### Entrée
- Ligne 1 : la largeur `L` d'une lettre représentée en art ASCII. Toutes les lettres font la même largeur.
- Ligne 2 : la hauteur `H` d'une lettre représentée en art ASCII. Toutes les lettres font la même hauteur.
- Ligne 3 : La ligne de texte `T`, composée de N caractères ASCII.
- Lignes suivantes : La chaîne de caractères ABCDEFGHIJKLMNOPQRSTUVWXYZ? représentée en art ASCII.

### Sortie
- Le texte `T` en art ASCII.
- Les caractères de a à z seront affichés en art ASCII par leur équivalent en majuscule.
- Les caractères qui ne sont pas dans les intervales [a-z] ou [A-Z], seront affichés par le point d'interrogation en art ASCII.

### Contraintes
- 0 < `L` < 30
- 0 < `H` < 30
- 0 < `N` < 200

# Solution

Un exercice qui peut s'avérer difficile étant donné qu'en plus de récupérer les codes ASCII de chaque caractère du texte, la principale difficulté de ce problème est de positionner le curseur dans chaque ligne du texte en ASCII ART et de faire des sous-chaînes (Substring) de chaque caractère ASCII ART pour ensuite les concaténer et afficher la solution. En Swift, les sous-chaines ne sont pas aussi simples à faire qu'en Java ou autres langages.

1. Initialiser une chaîne de caractères (String) vide qui va être concaténée de toutes les lignes de l'entrée.
```swift
var ROWS = ""

if H > 0 {
    for i in 0...(H-1) {
        let ROW = readLine()!
        ROWS += ROW
    }
}
```
2. Il faut s'assurer que le texte à convertir en ASCII ART soit en majuscules. Initialiser par la suite une chaîne pour la solution.
```swift
T = T.uppercased()
var solution = ""
```
3. Transformer la chaîne en tableau de caractères `String -> [Character]`
```swift
var array = Array(T)
```
4. Itérer par rapport à la hauteur de la lettre ASCII ART
```swift
for row in 0 ..< H {
```
5. Itérer sur chaque caractère du texte, cette boucle est imbriquée dans la précédente (4)
```swift
for c in array {
```
6. Convertir chaque caractère en code ASCII, ce n'est pas automatique en Swift.
7. Récupérer la position ASCII parmi les 27 caractères disponibles (A à Z et ?)
   - Si code ASCII < 65 ou > 90: valeur ASCII définie à 26
   - Sinon: valeur actuelle - 65
```swift
let position = ascii < 65 || ascii > 90 ? 26 : ascii - 65
```
8. Préparer le curseur pour extraire la sous-chaîne de la chaîne initialement déclarée avec la position, l'itérateur de la hauteur (H) et de la longueur (L).
```swift
let start = (L * 27) * row + Int(position) * L
```
9. Extraire l'intervalle de la sous-chaîne entre la position de départ (start) et la position (start + L).
```swift
let startSub = ROWS.index(ROWS.startIndex, offsetBy: start)
let endSub = ROWS.index(ROWS.startIndex, offsetBy: start + L)
let range = startSub ..< endSub
```      
10. Extraire la sous-chaîne avec l'intervalle et la concaténer à la chaîne faisant office de solution (initialement vide)
```swift
solution += ROWS[range]
```
11. **NE PAS OUBLIER LE RETOUR À LA LIGNE !!!!**
```swift
solution += "\n"
```

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Facile/ASCII%20ART/asciiart.swift)