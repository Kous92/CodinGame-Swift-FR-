# CodinGame: Van Eck's sequence

### Puzzle de la communauté proposé par Crypticsy.

**ORIGINAL TEXT (ENGLISH)**

### Goal

The rule here is that you start with an element `A1`, and whenever you get to a number you have not seen before, the following term is a 0. But if the number `An` has appeared previously in the sequence, then you count the number of terms since the last appearance of `An`, and that number is the following term.

For a series starting with `A1` as 0, the series will be:

0, 0, 1, 0, 2, 0, 2, 2, 1, 6, 0, 5, 0, 2, 6, 5, 4, 0, 5, 3, 0, 3, …

- Term 1: The first term is 0.
- Term 2: Since we haven’t seen 0 before, the second term is 0.
- Term 3: Since we had seen a 0 before, one step back, the third term is 1
- Term 4: Since we haven’t seen a 1 before, the fourth term is 0
- Term 5: Since we had seen a 0 before, two steps back, the fifth term is 2.

And so on...

### Input
- **Line 1**: a single integer `A1` that is the first element in the sequence.
- **Line 2**: an integer `N` representing the nth position of an element in the sequence that is to be displayed as output.

### Output
A single integer that is the `N`th element of the sequence

### Constraints
- 0 < `A1` < 200
- 1 < `N` < 1 000 000

### Example

Input | Output
------------ | -------------
0<br>2 | 0

**TRADUCTION (FRANÇAIS)**

## Objectif

La règle ici est que vous commenciez avec un élément `A1` et lorsque vous obtener un nombre que vous n'avez pas vu auparavant, le terme suivant est 0. Mais si le nombre `An` est apparu précédemment dans la séquence, alors vous comptez le nombre de termes depuis la précédente apparition de `An`, et ce nombre est le terme suivant.

Pour un serie démarrant avec A1 à 0, la série sera comme ceci:

0, 0, 1, 0, 2, 0, 2, 2, 1, 6, 0, 5, 0, 2, 6, 5, 4, 0, 5, 3, 0, 3, …

- Terme 1: Le premier terme est 0.
- Terme 2: Puisque nous n'avons pas vu 0 auparavant, le second terme est 0.
- Terme 3: Puisque nous avons vu 0 auparavant, un pas en arrière, le troisième terme est 1
- Terme 4: Puisque nous n'avons pas vu 1 auparavant, le quatrième terme est 0
- Terme 5: Puisque nous avons vu 0 auparavant, deux pas en arrière, le cinquième terme est 2.

Et ainsi de suite...

### Entrée
- **Ligne 1**: Un simple entier `A1` étant le premier élément de la séquence.
- **Ligne 2**: Un entier `N` représentant la `N`ième position d'un élément de la séquence à afficher en sortie.

### Sortie
Un simple entier étant le `N`ième élément de la séquence.

## Contraintes
- 0 < `A1` < 200
- 1 < `N` < 1 000 000

### Exemple

Entrée | Sortie
------------ | -------------
0<br>2 | 0

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Facile/Van%20Eck%27s%20sequence/vanEckSequence.swift)