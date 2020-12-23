# CodinGame: Smooth

## Puzzle de la communauté proposé par JBM

**ORIGINAL TEXT (ENGLISH)**

## Goal
Ming and Ham like smoothies. To make smoothies, you need a lot of fruit. Every now and then, they'll play a little game. They'll buy a lot of fruit in bulk, and then take turns at “reducing” it.

A turn of reducing works as follows:
- Ming will neatly arrange the fruit in a first line, with the pieces evenly spread
- Ham will pick a fruit type from stock, and arrange them in a second line, evenly spread, such that each one matches a bundle of exactly `n` pieces in the first line, with `n` depending on the fruit type (see table below)
- if any fruit in the first line is left unmatched with fruit from the second line, Ming eats it and the game finishes in defeat
- else they scoop all fruit from the first line to the blender, swap roles and repeat

They have the following fruit types in stock:
- apples, that spread one for every bundle of `n` = 2
- oranges, that spread one for every bundle of `n` = 3
- bananas, that spread one for every bundle of `n` = 5
- watermelons, that spread one for every bundle of `n` = 1

The game ends in a victory if the second row ever gets reduced to a single watermelon at the end of a turn.

**Examples**

A game that starts with 15 pieces of fruit can be won: Ming would spread them out; Ham would replace them with 3 bananas; Ming would replace those with an orange; and Ham would perform the finishing move by replacing it with 1 watermelon.

A game that starts with 7 pieces of fruit can't be won: no matter what Ham attempts to replace them with, there'll always be leftovers for Ming to eat.

**Thinking time !**

You have inside information about which quantity of fruit is going to be available in bulk for the following weeks. Assuming Ming and Ham play optimally (for victory, not bloatedness!), can you predict which games they'll win?

### Input
- **Line 1:** `N` number of weeks of information
- **Next `N` lines:** `F` quantity of fruit available in bulk that week

### Output
**`N` lines: `VICTORY` OR `DEFEAT`**

### Constraints
`N` ≤ 20
`F` < 2⁵³

### Example

Input | Output
------------ | -------------
10<br>1<br>2<br>3<br>4<br>5<br>6<br>7<br>8<br>9<br>10 | VICTORY<br>VICTORY<br>VICTORY<br>VICTORY<br>VICTORY<br>VICTORY<br>VICTORY<br>DEFEAT<br>VICTORY<br>VICTORY<br>VICTORY

**TRADUCTION (FRANÇAIS)**

## Objectif

Ming et Ham adorent les smoothies. Pour faire des smoothies, vous avez besoin de beaucoup de fruits. De temps en temps, ils jouent à un petit jeu. Ils achètent beaucoup de fruits en vrac, et effectuent des tours en le "réduisant".

Un tour de réduction fonctionne selon les règles suivantes:
- Ming va soigneusement disposer le fruit dans une première lignes, avec les pièces réparties uniformément.
- Ham va prendre un type de fruit du stock, et les disposer dans une seconde ligne, répartie uniformément, de sorte que chacun corresponde à un paquet d'exactement `n` pièces dans la première ligne, avec` n` variant selon le type de fruit (voir tableau ci-dessous).
- Si un fruit de la première ligne n'est pas égalé avec le fruit de la seconde ligne, Ming le mange et la partie se solde par une défaite.
- Sinon, ils ramassent tous les fruits de la première ligne et les mettent dans le blendeur (mixeur), échangent les rôles et recommencent.

Ils ont les types de fruits suivants en stock
- Pommes, qui forment un pour chaque paquet de `n`= 2
- Oranges, qui forment un pour chaque paquet de `n`= 3
- Bananes, qui forment un pour chaque paquet de `n`= 5
- Pastèques, qui forment un pour chaque paquet de `n`= 1

La partie se solde par une victoire si la seconde ligne est réduite en une seule pastèque à la fin du tour.

**Exemples**

Une partie qui démarre avec 15 pièces d'un fruit peut être remportée: Ming les répandrait, Ham les remplacera par 3 bananes, Ham les remplacera par 1 orange et Ham effectuera le coup de grâce en le remplaçant par 1 pastèque.

Une partie qui démarre avec 7 pièces d'un fruit ne peut pas être remportée: qu'importe si Ham tente de les remplacer avec, il en restera toujours à Ming pour qu'il les mange.

**Temps de réflexion !**

Vous disposez d'informations sur la quantité de fruits en vrac disponible pour les prochaines semaines. En supposant que Ming et Ham jouent de façon optimale (pour la victoire, pas pour les ballonnements !), pouvez-vous déterminer quelles parties seront gagnantes ?

### Entrée
- **Ligne 1:** `N` pour le nombre de semaines.
- **`N` lignes suivantes:** Quantité `F` de fruits en vrac disponibles chaque semaine.

### Sorties
**`N` lignes: `VICTORY` OU `DEFEAT`** (VICTOIRE OU DÉFAITE)

### Contraintes
`N` ≤ 20
`F` < 2⁵³

### Exemple

Entrée | Sortie
------------ | -------------
10<br>1<br>2<br>3<br>4<br>5<br>6<br>7<br>8<br>9<br>10 | VICTORY<br>VICTORY<br>VICTORY<br>VICTORY<br>VICTORY<br>VICTORY<br>VICTORY<br>DEFEAT<br>VICTORY<br>VICTORY<br>VICTORY

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Facile/Smooth!/smooth.swift)