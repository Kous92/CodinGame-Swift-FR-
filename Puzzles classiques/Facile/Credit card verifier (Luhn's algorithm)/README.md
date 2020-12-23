# CodinGame: Credit card verifier (Luhn's algorithm)

### Puzzle de la communauté proposé par AminGholizad.

**ORIGINAL TEXT (ENGLISH)**

### Goal
Most payment card numbers are 16 digits long. The leftmost 6 digits represent a unique identification number for the bank who has issued the card. The next 2 digits determine the type of the card (e.g., debit, credit, gift). Digits 9 to 15 are the serial number of the card, and the last digit is used as a control digit to verify whether the card number is valid. Hence, if somebody enters the card number incorrectly, there is a high chance that a payment software can easily determine it.
Most cards use an algorithm invented by Hans Peter Luhn, a nice fellow from IBM. According to Luhn’s algorithm, you can determine if a credit card number is (syntactically) valid as follows:

1. Double every second digit from right to left. If this “doubling” results in a two-digit number, subtract 9 from it get a single digit.
2. Now add all single digit numbers from step `1`.
3. Add all digits in the odd places from right to left in the credit card number.
4. Sum the results from steps `2` & `3`.
5. If the result from step `4` is divisible by `10`, the card number is valid; otherwise, it is invalid.
for example:

- Test 1:
`4556 7375 8689 9855`

1. `(5 * 2) (9 * 2) (8 * 2) (8 * 2) (7 * 2) (7 * 2) (5 * 2) (4 * 2)` = `10 18 16 16 14 14 10 8` = `1 9 7 7 5 5 1 8`
2. `1 + 9 + 7 + 7 + 5 + 5 + 1 + 8 = 43`
3. `5 + 8 + 9 + 6 + 5 + 3 + 6 + 5 = 47`
4. `43 + 47 = 90`

**The number is valid.**

- Test 2:
`4024 0071 0902 2143`

1. `(4 * 2) (2 * 2) (0 * 2) (0 * 2) (7 * 2) (0 * 2) (2 * 2) (4 * 2)` = `8 4 0 0 14 0 4 8` = `8 4 0 0 5 0 4 8`
2. `8 + 4 + 0 + 0 + 5 + 0 + 4 + 8 = 29`
3. `3 + 1 + 2 + 9 + 1 + 0 + 4 + 0 = 20`
4. `20 + 29 = 49`

Therefore the number not valid.
So, validating credit card numbers isn’t hard, but it does get a bit tedious by hand.

Your task is to read several card numbers from the input, and determine whether each one is a valid card number or not.

### Input
- **Line 1**: An integer `N` for the number of cards to verify.
- **Next `N` lines**: One line for each card to verify. Each test is consisting of four space-separated 4-digit strings.

### Output
**`N` lines**: For each test case, output a line containing `YES` or `NO` depending on whether the card number is valid or not, respectively.

### Example

Input | Output
------------ | -------------
2<br>4556 7375 8689 9855<br>4024 0071 0902 2143| YES<br>NO

**TRADUCTION (FRANÇAIS)**

## Objectif

La grande majorité des numéros de cartes bancaires ont 16 chiffres. Les 6 chiffres les plus à gauche représentent un numéro unique d'identification de la banque qui a attribué la carte. Les 2 chiffres suivants déterminent le type de la carte (débit, crédit, cadeau,...). Les chiffres 9 à 15 sont le numéro de série de la carte, et le dernier chiffre est utilisé en tant que chiffre de contrôle pour vérifier si oui ou non le numéro de carte est valide. Cependant, si une personne entre de façon incorrecte le numéro de carte, il y a une grande chance que le logiciel de paiement le détecte facilement.
La grande majorité des cartes utilisent un algorithme inventé par Hans Peter Luhn, un grand membre d'IBM. Conformément à l'algorithme de Luhn, vous pouvez déterminer si le numéro de carte est valide syntaxiquement en suivant les étapes ci-dessous:

1. Multiplier par 2 chaque second chiffre de droite à gauche. Si le résultat est un nombre à 2 chiffres, soustraire 9 de ce résultat pour obtenir un seul chiffre.
2. Ajouter maintenant tous les nombres à 1 seul chiffre de l'étape `1`.
3. Ajouter tous les chiffres du numéro de carte aux positions impaires de droite à gauche.
4. Additionner les résultats des étapes `2` et `3`.
5. Si le résultat de l'étape `4`est divisible par `10`, le numéro de carte est valide; sinon, c'est invalide, par exemple:
- Test 1:
`4556 7375 8689 9855`

1. `(5 * 2) (9 * 2) (8 * 2) (8 * 2) (7 * 2) (7 * 2) (5 * 2) (4 * 2)` = `10 18 16 16 14 14 10 8` = `1 9 7 7 5 5 1 8`
2. `1 + 9 + 7 + 7 + 5 + 5 + 1 + 8 = 43`
3. `5 + 8 + 9 + 6 + 5 + 3 + 6 + 5 = 47`
4. `43 + 47 = 90`

**Le numéro est valide.**

- Test 2:
`4024 0071 0902 2143`

1. `(4 * 2) (2 * 2) (0 * 2) (0 * 2) (7 * 2) (0 * 2) (2 * 2) (4 * 2)` = `8 4 0 0 14 0 4 8` = `8 4 0 0 5 0 4 8`
2. `8 + 4 + 0 + 0 + 5 + 0 + 4 + 8 = 29`
3. `3 + 1 + 2 + 9 + 1 + 0 + 4 + 0 = 20`
4. `20 + 29 = 49`

Ici, le numéro est invalide.
Valider un numéro de carte n'est pas compliqué, mais fastidieux à la main.
Votre tâche est de lire plusieurs numéros de carte de l'entrée, et déterminer lesquels sont valides et ceux qui sont invalides.


### Entrée
- **Line 1**: Un entier `N` pour le nombre de cartes à vérifier.
- **`N` lignes suivantes**: Une ligne pour chaque carte à vérifier. Chaque test est constitué d'une chaîne de caractères de 4 chiffres chacun, séparées par un espace.

### Sortie
**`N` lignes**: Pour chaque test, afficher une ligne contenant `YES` ou `NO` dépendant du numéro de carte s'il est valide ou non, respectivement.

### Exemple

Entrée | Sortie
------------ | -------------
2<br>4556 7375 8689 9855<br>4024 0071 0902 2143| YES<br>NO

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Facile/Credit%20card%20verifier%20(Luhn's%20algorithm)/creditCard.swift)