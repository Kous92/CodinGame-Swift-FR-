# CodinGame: The River II

### Puzzle de la communauté proposé par ng201.

**ORIGINAL TEXT (ENGLISH)**

### Goal
A digital river is a sequence of numbers where every number is followed by the same number plus the sum of its digits. In such a sequence 123 is followed by 129 (since 1 + 2 + 3 = 6), which again is followed by 141.

We call a digital river **river K**, if it starts with the value K.

For example, river 7 is the sequence beginning with {7, 14, 19, 29, 40, 44, 52, ... } and river 471 is the sequence beginning with {471, 483, 498, 519, ... }.

Digital rivers can meet. This happens when two digital rivers share the same values. River 32 meets river 47 at 47, while river 471 meets river 480 at 519.

Given a number decide, whether it can be a meeting point of two or more digital rivers. For example, it is easy to check that only river 20 contains the number 20 in its sequence (as a starting point).

(Idea : BIO'99)

### Input
- **Line 1**: An integer `r1`.

### Output
- **Line 1**: **YES** if `r1` can be a meeting points of two digital rivers, **NO** otherwise.

### Constraints
- 1 ≤ `r1` < 100000

### Example

Input | Output
------------ | -------------
20 | NO

**TRADUCTION (FRANÇAIS)**

## Objectif

Une rivière digitale est une séquence de nombres où chaque nombre est suivi par le même nombre additionnée avec la somme de ses chiffres. Dans une telle séquence, 123 est suivi par 129 (du fait que 1 + 2 + 3 = 6), qui encore est suivi par 141.

On nomme une rivière digitale **rivière K**, si elle commence par la valeur K.

Par exemple, la rivière 7 est une séquence commençant par {7, 14, 19, 29, 40, 44, 52, ... } la rivière 471 est une séquence commençant par {471, 483, 498, 519, ... }.

Les rivières digitales peuvent se croiser. Cela se produit lorsque 2 rivières digitales partagent la même valeur. La rivière 32 croise la rivière 47 à 47, pendant que la rivière 471 croise la rivière 480 à 519.

Étant donné un certain nombre, déterminez s'il peut s'agir d'un point de rencontre de deux ou plusieurs rivières digitales. Par exemple, il est facile de vérifier que seule la rivière 20 contient le nombre 20 dans sa séquence (en tant que point de départ).

(Idée : BIO'99)

### Entrée
- **Ligne 1**: Un entier `r1`.

### Sortie
- **Ligne 1**: **YES** si `r1` peut être un point de rencontre de 2 rivières digitales ou plus, **NO** dans le cas contraire.

## Contraintes
- 1 < `r1` < 100000

### Exemple

Entrée | Sortie
------------ | -------------
20 | NO

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Facile/The%20River%20II/theRiver2.swift)