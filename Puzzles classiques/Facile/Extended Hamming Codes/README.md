# CodinGame: Extended Hamming Codes

## Puzzle de la communauté proposé par Dogeek

**ORIGINAL TEXT (ENGLISH)**

## Goal
Hamming Codes are a way of validating and fixing blocks of binary data using **parity bits**. Each block is **2**^`N` bits long. Here, we are only interested in the case where `N = 4` (i.e. **16** bit blocks)

Consider the following, generic, block of data, **abcdefghijklmnop**, which can be rewritten as:
```
a b c d
e f g h
i j k l
m n o p
```

- Bit **a** is a global parity bit. A valid message has an **even** number of **1**'s
- Bit **b** is a parity bit for the bits **[d, f, h, j, l, n, p]** (**odd** columns), meaning that the subset **bdfhjlnp** has an **even** number of **1**'s.
- Bit **c** is a parity check on bits **[d, g, h, k, l, o, p]** (**last two** columns), meaning that the subset **cdghklop** has an **even** number of **1**'s.
- Bit **e** is a parity check on bits **[f, g, h, m, n, o, p]** (**odd** lines), meaning that the subset **efghmnop** has an **even** number of **1**'s.
- Bit **i** is a parity check on bits **[j, k, l, m, n, o, p]** (**last two** lines), meaning that the subset **ijklmnop** has an **even** number of **1**'s.

Given a message encoded with this error-checking algorithm, it's possible to locate any 1 faulty bit and correct it, and locate if there are 2 faulty bits (but not correct them).

For instance, if **bdfhjlnp** is **odd**, **cdghklop** is even, **efghmnop** is **even** and **ijklmnop** is **odd**, then the bit **j** needs to be flipped. Furthermore, bit **a** can be used to detect if there are 2 errors in the block. If bit **j** needs to be flipped, but the whole message is **even**, then there are two errors.

You are given a string in binary of length 16. Your goal is to check whether this string has an error, and if so correct it. If the string has only one error, or is valid, print out the corrected string. Print out 'TWO ERRORS' if the string has two errors.

### Input
- **Line 1:** A string of 16 binary digits, representing a message block protected with the Hamming ECC scheme.

### Output
- If the message has **no errors**: print out the original message.
- If it has **1 error**: print out the **corrected** message.
- If it has **2 errors**: print out **'TWO ERRORS'**.

### Constraints
At most 2 errors in the message.

### Example

Input | Output
------------ | -------------
1100101010110110 | 1100101011110110

**TRADUCTION (FRANÇAIS)**

## Objectif

Les codes de Hamming sont des moyens de validation et de correction de blocs de données binaires utilisant des **bits de parité**. Chaque bloc est d'une longueur de **2**^`N` bits. Ici, nous sommes seulement intéressé par le cas où `N = 4 `(c'est à dire des blocs de **16** bits).

On considère le bloc de données générique suivant, **abcdefghijklmnop**, qui peut être réecrit comme ceci:
```
a b c d
e f g h
i j k l
m n o p
```

- Le bit **a** est le bit global de parité. Un message valide a un nombre **pair** de **1**.
- Le bit **b** est le bit de parité pour les bits **[d, f, h, j, l, n, p]** (colonnes **impaires**), signifiant que le sous-ensemble **bdfhjlnp** a un nombre **pair** de **1**.
- Le bit **c** est une vérification de parité pour les bits **[d, g, h, k, l, o, p]** (**2 dernières** colonnes), signifiant que le sous-ensemble **cdghklop** a un nombre **pair** de **1**.
- Le bit **e** est une vérification de parité pour les bits **[f, g, h, m, n, o, p]** (lignes **impaires**), signifiant que le sous-ensemble **efghmnop** a un nombre **pair** de **1**.
- Le bit **i** est une vérification de parité pour les bits **[j, k, l, m, n, o, p]** (**2 dernières** lignes), signifiant que le sous-ensemble **ijklmnop** a un nombre **pair** de **1**.

Étant donné un message encodé avec cet algorithme de vérification d'erreurs, il est possible de localiser n'importe quel bit erroné et le corriger, et localiser s'il y a 2 bits erronés (mais sans les corriger).


Par example, si **bdfhjlnp** est **impair**, **cdghklop** est **pair**, **efghmnop** est **pair** et **ijklmnop** est **impair**, alors le bit **j** doit être retourné. De plus, le bit **a** peut être utilisé pour détecter s'il y a 2 erreurs dans le bloc. Si le bit **j** doit être retourné, mais que le message est **pair**, alors il y a 2 erreurs.

Étant donné une chaîne binaire de longueur 16, votre objectif est de vérifier si cette chaîne a une erreur, et la corriger si c'est le cas. Si la chaîne n'a qu'une seule erreur ou si elle est valide, affichez la chaîne corrigée. Affichez 'TWO ERRORS' si la chaîne a 2 erreurs.

### Entrées
- **Ligne 1:** Une chaîne de 16 chiffres binaires, représentant un bloc de message protégé par le schéma ECC de Hamming.

### Sortie
- Si le message n'a **pas d'erreurs**: affichez le **message original**.
- S'il y a **1 erreur**: print out the corrected message.
- S'il y a **2 erreurs**: affichez **'TWO ERRORS'**.

### Contraintes
Au plus 2 erreurs dans le message

### Exemple

Entrée | Sortie
------------ | -------------
1100101010110110 | 1100101011110110

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Facile/Extended%20Hamming%20Codes/extendedHammingCodes.swift)