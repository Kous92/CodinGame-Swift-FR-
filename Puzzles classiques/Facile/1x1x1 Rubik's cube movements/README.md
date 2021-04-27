# CodinGame: 1x1x1 Rubik's cube movements

## Puzzle de la communauté proposé par programaths

**ORIGINAL TEXT (ENGLISH)**

## Goal
A 2×2×2 Rubik's cube is quite complicated. In this puzzle, we will focus on the mono-cube, the 1×1×1 Rubik's cube!

You are given a set of `rotations` and two `faces`. Apply the `rotations` to the cube and locate the two `faces` after the `rotations`.

**Face notation**
- **F** (Front): the side currently facing the observer
- **B** (Back): the side opposite the front
- **U** (Up): the side above or on top of the front side
- **D** (Down): the side opposite the top, underneath the cube
- **L** (Left): the side directly to the left of the front
- **R** (Right): the side directly to the right of the front

**Rotation notation**
- A rotation without the prime symbol **'** is a quarter turn clockwise.
- A rotation with the prime symbol **'** is a quarter turn counter-clockwise.
- **x**, **x'**: rotate cube on **R** (**R** and **L** still face the same directions after rotation)
- **y**, **y'**: rotate cube on **U** (**U** and **D** still face the same directions after rotation)
- **z**, **z'**: rotate cube on **F** (**F** and **B** still face the same directions after rotation)

**Example 1**
- **z**
- **D**
- **L**
Means: rotate cube clockwise on **F** and identify the new directions of **D** and **L**.
Answer: Output **L** in line 1 because the initial down face now faces left. Output **U** in line 2 because the initial left face now faces up.

Example 2
- **z z'**
- **U**
- **R**
Means: rotate cube clockwise on **F** then counter-clockwise on **F**, and identify the new directions of **U** and **R**.
Answer: Output **U** in line 1 and **R** in line 2 because both faces do not change directions after the rotations.

### Inputs
- **Line 1:** Space-separated `rotations` in **xyz** notation.
- **Line 2:** Initial direction of `face1` the first queried face.
- **Line 3:** Initial direction of `face2` the second queried face.

### Outputs
- Line 1: Direction of `face1` after the rotations.
- Line 2: Direction of `face2` after the rotations.

### Constraints
1 ≤ length of `rotations` ≤ 100

### Example

Input | Output
------------ | -------------
z<br>D<br>L | L<br>U

**TRADUCTION (FRANÇAIS)**

## Objectif

Un Rubik's cube 2x2x2 est assez compliqué. Dans ce puzzle, nous nous focalisons sur le mono-cube, le Rubik's cube 1x1x1 !

Il vous est donné un ensemble de `rotations` et 2 `faces`. Appliquez les `rotations` sur le cube et localisez les 2 `faces` après les `rotations`.

**Notation des faces**
- **F** (Avant): le côté étant en face de l'observateur
- **B** (Arrière): le coté à l'opposé de l'avant
- **U** (Haut): le côté au-dessus ou au-dessus de la face avant
- **D** (Bas): le côté opposé au sommet, sous le cube
- **L** (Gauche): le côté directement à gauche de l'avant
- **R** (Droite): le côté directement à droite de l'avant

**Notation des rotations**
- Une rotation sans le symbole **'** est un quart de tour dans le sens horaire.
- Une rotation avec le symbole **'** est un quart de tour dans le sens anti-horaire.
- **x**, **x'**: Tourner le cube sur **R** (**R** et **L** sont toujours face aux mêmes directions après la rotation)
- **y**, **y'**: Tourner le cube sur **U** (**U** et **D** sont toujours face aux mêmes directions après la rotation)
- **z**, **z'**: Tourner le cube sur **F** (**F** et **B** sont toujours face aux mêmes directions après la rotation)

**Exemple 1**
- **z**
- **D**
Signifie: Tourner le cube dans le sens horaire sur **F** et identifier les nouvelles directions de **D** et **L**.
Réponse: Afficher **L** dans la ligne 1 car la face initialement en bas est maintenant à gauche. Afficher **U** dans la ligne 2 car la face initialement à gauche est maintenant en haut.

Exemple 2
- **z z'**
- **U**
- **R**
Signifie: Tourner le cube dans le sens horaire sur **F** puis dans le sens anti-horaire sur **F**, et identifier les nouvelles directions de **U** et **R**.
Réponse: Afficher **U** dans la ligne 1 et **R** dans la ligne 2 car les 2 faces ne changent pas de directions après les rotations.

### Entrées
- **Ligne 1:** Les `rotations` séparées d'un espace en notation **xyz**.
- **Ligne 2:** Direction initiale de `face1` la première face demandée.
- **Ligne 3:** Direction initiale de `face2` la seconde face demandée.

### Sorties
- **Ligne 1:** Direction de la `face1` après les rotations.
- **Ligne 2:** Direction de la `face2` après les rotations.

### Contraintes
1 ≤ longueur de `rotations` ≤ 100

### Exemple
Entrée | Sortie
------------ | -------------
z<br>D<br>L | L<br>U

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/tree/main/Puzzles%20classiques/Facile/1x1x1%20Rubik%27s%20cube%20movements/1x1x1rubiksCubeMovements.swift)