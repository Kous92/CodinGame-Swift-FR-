# CodinGame: Benford's law

## Puzzle de la communauté proposé par Alcalyn.

**ORIGINAL TEXT (ENGLISH)**

## Goal
In this puzzle that shows a real-life phenomenon, you have to detect whether a bank account have a high risk to contain fraudulent transactions.

The Benford law is used on real anti-fraud systems to detect frauds about government accounting fraud, fiscal fraud, or even election cheating.

See the Wikipedia page about the Benford law: https://en.wikipedia.org/wiki/Benford%27s_law

Your program receives in input a list of transactions, like:
- +1122.85 $
- -10.69 $
- -21.79 $
- +12.08 $

You have to count how much transactions start with "1", "2", ...

For example:
- "+1122.85 $" starts with 1
- "-0.50" starts with 5
- "$ 242.00" starts with 2

And you must output "**true**" if the bank account seems fraudulent, or "**false**" if it seems regular.

For this puzzle, your program will naively output whether a bank account seems fraudulent or not. You will be given the Benford law percentages:
- 1: 30.1%
- 2: 17.6%
- 3: 12.5%
- 4: 9.7%
- 5: 7.9%
- 6: 6.7%
- 7: 5.8%
- 8: 5.1%
- 9: 4.6%

An account is considered **regular** if the account starting numbers percentage **follow these percentages**, with a margin of 10 percent. Which means that you may find:

transactions starting with 1: 30.1%, so between 20.1% and 40.1%
transactions starting with 2: 17.6%, so between 7.6% and 27.6%
...

If at least one of these percentage is outside the expected range, the account is considered as fraudulent, you must then output "**true**".

Note that transactions may be formatted like this:
```
-48.12$
5,00 €
+0.99
350.10
-25 €
$ 500.00
42 £
```

It can be any currency.

### Input
- **Line 1:** The number of transactions `N`.
- **Next `N` lines:** The transaction. Can be formatted like "-48.12$"  "-5,00€", "+0.99", "350.10", "-25€", ...

### Output
- **One line:** "**true**" if the account seems fraudulent, "**false**" if it seems regular.

### Constraints
- 0 < `N` < 1000

### Example

Input | Output
------------ | -------------
1808.13 €<br>
-54.84 €<br>
-123.34 €<br>
-2455.42 €<br>
291.16 €<br>
...
608.51 €<br>
-372.28 €<br>
-0.69 €<br>
0.60 €<br>
18.25 € | false

**TRADUCTION (FRANÇAIS)**

## Objectif

In this puzzle that shows a real-life phenomenon, you have to detect whether a bank account have a high risk to contain fraudulent transactions.
Dans ce puzzle qui montre un phénomène de la vie réelle, vous avez à détecter si un compte bancaire a un haut risque de contenir des transactions frauduleuses.

La loi de Benford est utilisée dans des systèmes anti-fraudes réels pour détecter les fraudes sur la fraude comptable du gouvernement, la fraude fiscale ou même la triche électorale.

Consultez la page à propos de la loi de Benford: https://fr.wikipedia.org/wiki/Loi_de_Benford

Votre programme reçoit en entrée une liste de transactions, comme:
- +1122.85 $
- -10.69 $
- -21.79 $
- +12.08 $

Vous avez à comptez combien de transactions démarrent avec "1", "2", ...

Par exemple:
- "+1122.85 $" commence par 1
- "-0.50" commence par 5
- "$ 242.00" commence par 2

Et vous devez afficher "**true**" si le compte bancaire semble frauduleux, ou "**false**" s'il semble en règle.

Pour ce puzzle, votre programme va naïvement afficher si un compte bancaire semble frauduleux ou non. Il vous est donné les pourcentages de la loi de Benford:
- 1: 30.1%
- 2: 17.6%
- 3: 12.5%
- 4: 9.7%
- 5: 7.9%
- 6: 6.7%
- 7: 5.8%
- 8: 5.1%
- 9: 4.6%

Un compte est considéré **en règle** si le pourcentage des chiffres de départ du compte **suit ces pourcentages**, avec une marge d'erreur de 10%. Cela veut dire que vous pouvez trouver:
- Transactions commençant par 1: 30.1%, donc entre 20.1% et 40.1%
- Transactions commençant par 2: 17.6%, donc entre 7.6% et 27.6%

S'il y au moins 1 de ces pourcentages qui est en dehors des intervalles attendus, le compte est considéré comme frauduleux, vous devez donc afficher "**true**".

Notez que les transactions peuvent être formatées comme ceci:
```
-48.12$
5,00 €
+0.99
350.10
-25 €
$ 500.00
42 £
```

Ils peuvent être de n'importe quelle devise.

### Entrées
- **Ligne 1:** Le nombre de transactions `N`.
- **`N` lignes suivantes:** La transaction. Peut être formatée comme "-48.12$"  "-5,00€", "+0.99", "350.10", "-25€", ...

### Sortie
- **Une ligne:** "**true**" si le compte bancaire semble frauduleux, "**false**" s'il semble en règle.

### Contraintes
- 0 < `N` < 1000

### Exemple

Entrée | Sortie
------------ | -------------
1808.13 €<br>
-54.84 €<br>
-123.34 €<br>
-2455.42 €<br>
291.16 €<br>
...
608.51 €<br>
-372.28 €<br>
-0.69 €<br>
0.60 €<br>
18.25 € | false

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Facile/Benford%27s%20law/benfordLaw.swift)