# CodinGame: Rubgy score

## Puzzle de la communauté proposé par BiMathAx

**ORIGINAL TEXT (ENGLISH)**

## Goal
As an FBI agent you intercepted a message from terrorists.
This message has to be decrypted, and to do so you have access to 2 pieces of information : `P` and `C`.

`C` is the alphabet used to write the message, and contains all the letters/characters needed to decode it.

`P` corresponds to the encoded value of the message.
Thankfully, you happen to know how this value is computed, and now need to reverse the following process :
- Assuming the alphabet is 'abcd', each letter is associated to its index : a = 0, b = 1, c = 2, d = 3.
- For the following values, a new letter is either added or switched :
- aa = 4, ba = 5, ca = 6, da = 7
- ab = 8, bb = 9, cb = 10, db = 11
- ...
- aaa = 20, baa = 21, caa = 22, daa = 23, and so on.
- The whole message gets a unique value this way. For example with a full alphabet (26 letters) 'hello' would be 7073801.

Get it done agent ! (Good Luck)

### Input
- **Line 1:** an integer `P`, the encoded value of the message.
- **Line 2:** a string `C`, the alphabet used for the message. Every character in the string is unique, and a space can be one of them.

### Output
One line containing the decoded message.

### Constraints
0 < `P` < 10^16

### Example

Input | Output
------------ | -------------
35<br>abcdefghijklmnopqrstuvwxyz | ja

**TRADUCTION (FRANÇAIS)**

## Objectif

En tant qu'agent du FBI, vous avez intercepté un message venant des terroristes.
Ce message doit être décryptén et vous avez accès à 2 pièces d'information: `P` et `C`.

`C` est l'alphabet utilisé pour écrire le message, et contient toutes les lettres/caractères nécessaires pour le décoder.

`P` correspond à la valeur codée du message.
Heureusement, vous savez comment cette valeur est calculée, et vous devez maintenant inverser le processus suivant:
- On suppose que l'alphabet est 'abcd', chaque lettre est associée à son index : a = 0, b = 1, c = 2, d = 3.
- Pour les valeurs suivantes, une nouvelle lettre est chaque fois ajoutée ou échangée:
- aa = 4, ba = 5, ca = 6, da = 7
- ab = 8, bb = 9, cb = 10, db = 11
- ...
- aaa = 20, baa = 21, caa = 22, daa = 23, and so on.
- L'ensemble du message obtient ainsi une valeur unique. Par exemple avec un alphabet complet (26 lettres), 'hello' serait 7073801.

Faites-le, agent ! (Bonne chance)

### Entrées
- **Line 1:** Un entier `P`, la valeur codée du message.
- **Line 2:** Une chaîne `C`, l'alphabet utilisé pour le message. Chaque caractère est unique, et l'espace peut être l'un d'entre eux.

### Sortie
Une ligne contenant le message décodé.

### Contraintes
0 < `P` < 10^16

### Exemple

Entrée | Sortie
------------ | -------------
35<br>abcdefghijklmnopqrstuvwxyz | ja

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Facile/Decode%20the%20message/decodeTheMessage.swift)