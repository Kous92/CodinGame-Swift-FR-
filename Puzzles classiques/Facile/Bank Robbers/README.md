# CodinGame: Bank Robbers

### Puzzle de la communauté proposé par Shotokan.

**ORIGINAL TEXT (ENGLISH)**

### Goal

A gang of `R` foolish robbers decides to heist a bank. In the bank there are `V` vaults (indexed from **0** to **`V` - 1**). The robbers have managed to extract some information from the bank's director:
- The combination of a vault is composed of `C` characters (digits/vowels).
- The first `N` characters consist of digits from **0** to **9**.
- The remaining characters consist of vowels (**A, E, I, O, U**).
- `C` and `N` may be the same or different for different vaults.

All the robbers work at the same time. A robber can work on one vault at a time, and a vault can be worked on by only one robber. Robbers deal with the different vaults in increasing order.

A robber tries the combinations at the speed of **1** combination per second. He tries all the possible combinations, i.e. he continues to try the untried combinations even after he has found the correct combination. Once he finishes one vault, he moves on to the next available vault, that is the vault with the smallest index among all the vaults that have not been worked on yet. The heist is finished when the robbers have worked on all the vaults.

Assume it takes no time to move from one vault to another.

You have to output the total time the heist takes.

### Input
- **Line 1**: An integer `R` for the number of robbers.
- **Line 2**: An integer `V` for the number of vaults.
- **Next `V` lines**: For each vault, one line of two space-separated integers `C` and `N` for the total number of characters (`C`) and the total number of digits (`N`) in the vault's combination. The vaults are ordered by their index.

### Output
- **Line 1**: An integer for the total time the heist takes in seconds.

### Constraints
- 1 ≤ `R` ≤ 5
- 1 ≤ `V` ≤ 20
- 3 ≤ `C` ≤ 8
- 0 ≤ `N` ≤ `C`

### Example

Input | Output
------------ | -------------
1<br>1<br>3 1 | 250

**TRADUCTION (FRANÇAIS)**

## Objectif

Un gang de `R` voleurs idiors décidents de braquer une banque. Dans la banque, il y a `V` coffres-forts (indexés de **0** à **`V` - 1**). Les voleurs ont réussi à extorquer certaines informations du directeur de la banque.
- La combinaison du coffre-fort est composée de `C` caractères (chiffres/voyelles).
- Les premiers `N` caractères sont des chiffres de **0** à **9**.
- Les caractères restants sont des voyelles (**A, E, I, O, U**).
- `C` et `N` peuvent être similaires ou différents de différents coffres-forts.

Tous les voleurs travaillent en même temps. Un voleur peut travailler sur un coffre-fort à la fois, et une coffre-fort peut être manipulé que par un seul voleur. Les voleurs s'occupent des différents coffres-forts dans un ordre croissant.

Un voleur tente toutes les combinaisons à la vitesse d'**1** combinaison par seconde. En tentant toutes les combinaisons, c'est-à-dire qu'il continue d'essayer toutes les combinaisons non tentées même après avoir trouvée la bonne combinaison. Une fois qu'il a fini un coffre-fort, il bouge vers le prochain coffre-fort disponible, qui est le coffre-fort avec le plus petit index parmi les coffres-forts qui n'ont pas encore été manipulés. Le braquage est terminé lorsque les voleurs ont manipulé tous les coffres-forts.

On suppose que c'est instantané de se déplacer d'un coffre à un autre.

### Entrée
- **Ligne 1**: Un entier `R` pour le nombre de voleurs.
- **Ligne 2**: Un entier `V` pour le nombre de coffres-forts.
- **`V` lignes suivantes**: Pour chaque coffre-fort, une ligne avec 2 entiers `C` et `N` séparés d'un espaces, pour le nombre total de caractères (`C`) et le nombre total de chiffres (`N`) dans la combinaison du coffre-fort. Les coffres-forts sont ordonnés par leurs index.

### Sortie
- **Ligne 1**: Un entier pour le temps total en secondes qu'aura pris le braquage.

## Contraintes
- 1 ≤ `R` ≤ 5
- 1 ≤ `V` ≤ 20
- 3 ≤ `C` ≤ 8
- 0 ≤ `N` ≤ `C`

### Exemple

Entrée | Sortie
------------ | -------------
1<br>1<br>3 1 | 250

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Facile/Bank%20Robbers/bankRobbers.swift)