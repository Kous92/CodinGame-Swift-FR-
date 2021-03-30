# CodinGame: Ils sont fous ces Romains ! (These Romans are crazy !)

## Puzzle de la communauté proposé par nicola.

**ORIGINAL TEXT (ENGLISH)**

## Goal

You are given 2 expressions representing 2 numbers written in roman numerals.
You have to provide the result of the sum of these 2 numbers, also in roman numerals.

- **I** has a value of 1 (maximum 3 in a row)
- **V** has a value of 5 (maximum 1 in a row)
- **X** has a value of 10 (maximum 3 in a row)
- **L** has a value of 50 (maximum 1 in a row)
- **C** has a value of 100 (maximum 3 in a row)
- **D** has a value of 500 (maximum 1 in a row)
- **M** has a value of 1000 (maximum 4 in a row)

- The character **I** just before an **V** or **X** has a value of -1 (example IX equals 9)
- The character **X** just before an **L** or **C** has a value of -10 (example XL equals 40)
- The character **C** just before an **D** or **M** has a value of -100 (example CM equals 900)

### Input
- **Line 1:** `Rom1` (the 1st number in roman numerals)
- **Line 2:** `Rom2` (the 2nd number in roman numerals)

### Output
- **Line 1:** The result of `Rom1` + `Rom2` written in roman numerals

### Constraints
- 1 ≤ `Rom1` ≤ 4999
- 1 ≤ `Rom2` ≤ 4999
- 1 ≤ `Rom1` + `Rom2` ≤ 4999

### Example

Input | Output
------------ | -------------
VI<br>VII | XIII

**TRADUCTION (FRANÇAIS)**

## Objectif

Il vous est donné 2 expressions représentant 2 nombres écrits en chiffres romains.
Vous avez à donner le résultat de la somme de ces 2 nombres, aussi en chiffres romains.

- **I** a une valeur de 1 (maximum 3 à la suite)
- **V** a une valeur de 5 (maximum 1 à la suite)
- **X** a une valeur de 10 (maximum 3 à la suite)
- **L** a une valeur de 50 (maximum 1 à la suite)
- **C** a une valeur de 100 (maximum 3 à la suite)
- **D** a une valeur de 500 (maximum 1 à la suite)
- **M** a une valeur de 1000 (maximum 4 à la suite)

- Le caractère **I** juste avant un **V** or **X** a une valeur de -1 (exemple IX vaut 9)
- Le caractère **X** juste avant un **L** or **C** a une valeur de -10 (exemple XL vaut 40)
- Le caractère **C** juste avant un **D** or **M** a une valeur de -100 (exemple CM vaut 900)

### Entrées
- **Ligne 1:** `Rom1` (le 1er nombre en chiffres romains)
- **Ligne 2:** `Rom2` (the 2nd nombre en chiffres romains)

### Sortie
- **Ligne 1:** Le résultat de `Rom1` + `Rom2` écrit en chiffres romains.

### Contraintes
- 1 ≤ `Rom1` ≤ 4999
- 1 ≤ `Rom2` ≤ 4999
- 1 ≤ `Rom1` + `Rom2` ≤ 4999

### Exemple

Entrée | Sortie
------------ | -------------
VI<br>VII | XIII

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Moyen/Ils%20sont%20fous%20ces%20Romains%20%21/ilsSontFousCesRomains.swift)