# CodinGame: Don't panic - Episode 1

## Objectif
Vous devez aider Marvin et ses clones (ou est-ce l'inverse ?) à atteindre la sortie pour s'échapper de la zone du générateur.

## Règles
La zone est rectangulaire et de taille variable. Elle est composée de plusieurs étages (**0** = étage inférieur) et chaque étage comporte plusieurs positions possible pour les clones (**0** = position la plus à gauche, `width - 1` = position la plus à droite).

**L'objectif est de sauver au moins un clone en un nombre limité de tours.**

La zone est rectangulaire et de taille variable. Elle est composée de plusieurs étages (0 = étage inférieur) et chaque étage comporte plusieurs positions possible pour les clones (0 = position la plus à gauche, width - 1 = position la plus à droite).

L'objectif est de sauver au moins un clone en un nombre limité de tours.

En détail :
- Les clones sortent d'un unique générateur **à intervalles réguliers, tous les 3 tours.** Le générateur est placé à l'étage **0**. Les clones sortent en se dirigeant vers la droite.
- Les clones avancent d'une position par tour en ligne droite, **dans leur direction actuelle**.
- Un clone est détruit par un laser s'il dépasse la position **0** ou la position `width - 1`.
- **La zone dispose d'ascenseurs pour monter d'un étage à l'autre.** Quand un clone arrive sur une position où se trouve un ascenseur, il monte d'un étage. **Monter d'un étage prend un tour de jeu.** Au tour suivant le clone continue sa progression dans la direction qu'il avait avant de monter.
- À chaque tour vous pouvez soit ne rien faire, **soit bloquer le clone de tête** (c-à-d celui qui est sorti le plus tôt).
- Une fois qu'un clone est bloqué, vous ne pouvez plus agir dessus. Le clone suivant prend le rôle de clone de tête et peut être bloqué à son tour.
- **Quand un clone avance ou se trouve sur une position sur laquelle se situe un clone bloqué, il change de direction.**
- Si un clone bloque au pied d'un ascenseur, l'ascenseur ne peut plus être utilisé.
- Quand un clone atteint l'étage et la position de l'aspirateur, **il est sauvé** et disparait de la zone.

**Note** : Pour ce puzzle il n'y a au maximum qu'un ascenseur par étage

**Conditions de victoire**
- Vous gagnez si vous amenez au moins un clone vers l'aspirateur en un nombre de tours limité

## Note
N'oubliez pas d'exécuter les tests depuis la fenêtre "Jeu de tests".

Les tests fournis et les validateurs utilisés pour le calcul du score sont similaires mais différents.

## Entrées du jeu
Votre programme doit d'abord lire les données d'initialisation depuis l'entrée standard, puis, dans une boucle infinie, lire les données contextuelles de la partie (position des clones) et écrire sur la sortie standard les actions.

### Entrée d'initialisation

**Ligne 1** : 8 entiers :
- `nbFloors` : le nombre d'étages de la zone. Le clone peut évoluer entre l'étage **0** et l'étage `nbFloors - 1`
- `width` : la largeur de la zone. Le clone peut évoluer sans être détruit entre la position **0** et la position `width - 1`
- `nbRounds` : le nombre maximum de tours de jeu avant la fin de la partie
- `exitFloor` : l'étage de l'aspirateur
- `exitPos` : la position de l'aspirateur à son étage
- `nbTotalClones` : le nombre de clones qui sortiront du générateur au cours de la partie
- `nbAdditionalElevators` : *non utilisé pour cette première question, vaut toujours **0***
- `nbElevators` : le nombre d'ascenseurs présents sur la zone
`nbElevators` **lignes suivantes** : un couple d'entiers `elevatorFloor` `elevatorPos` donnant respectivement l'étage et la position d'un ascenseur.

### Entrée pour un tour de jeu
**Ligne 1** : 2 entiers `cloneFloor` et `clonePos` donnant les coordonnées du clone de tête non bloqué suivi de la chaîne de caractères directionqui indique l'état du clone :
- **LEFT** le clone se dirige vers la gauche
- **RIGHT** le clone se dirige vers la droite
S'il n'y a pas de clone de tête non bloqué, la ligne vaut **-1 -1 NONE**. Cette situation arrive quand tous vos clones sortis sont bloqués et que le clone suivant n'est pas encore sorti. Dans ce cas, faites l'action `WAIT`.

### Sortie pour un tour de jeu
**Une unique ligne** (terminée par un retour chariot) indiquant l'action à effectuer :
- Soit le mot clé `WAIT` pour ne rien faire.
- Soit le mot clé `BLOCK` pour bloquer le clone de tête

Contraintes
1 ≤ nbFloors ≤ 15
5 ≤ width ≤ 100
10 ≤ nbRounds ≤ 200
0 ≤ exitFloor, elevatorFloor < nbFloors
0 ≤ exitPos , elevatorPos < width
-1 ≤ cloneFloor < nbFloors
-1 ≤ clonePos < width
2 ≤ nbTotalClones ≤ 50
0 ≤ nbElevators ≤ 100
Durée d'un tour de jeu : 100 ms

## Synopsis
Marvin original :  *Je crois que je n'aurais pas dû entrer dans le Générateur d'Improbabilité Infinie. Je vois double, ou triple, ou quadruple, ou...  *

Marvin à lunettes :  *Hein ! Tu es moi ? J'ai compris : j'ai été cloné, ou plutôt nous avons été clonés. En revanche le processus de clonage ne semble pas parfait. Je me sens plus intelligent qu'avant, ce qui est un exploit sachant que mon intelligence était déjà proche de l'infini. La vie me parait encore plus inutile qu'avant. *

Marvin peureux :  *Ça a l'air dangeureux ici. Ces lasers me font peur. *

Marvin grognon :  *Moi j'aime pas les lasers... *

Marvin à lunettes :  *Hé, mais je vois un Aspirateur Vertical de sortie et d'Allègres Transports Verticaux (des "ascenseurs" pour les moins intelligents d'entre nous). Utilisons-les pour nous échapper de la zone ! *

Grand Marvin :  *Pas de panique ! On se suit tous comme un seul Marvin et en cas de danger le Marvin de tête reste pour signaler le danger. *

Marvin peureux :  *Mais ceux qui restent vont mourir ? *

Marvin original :  *Pas d'importance, nous sommes tous le même. Un seul doit s'échapper pour continuer ma vie de déprimé. *

Marvin prétentieux :  *Tous les mêmes, ça reste à voir. Je pars le dernier si ça vous va. *

Grand Marvin :  *Au fait, combien sommes-nous ? *

Marvin Bêta :  *41 *

Marvin à lunettes :  *Idiot, tu as oublié de te compter ! *

Grand Marvin :  *En avant... *

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Moyen/Don't%20panic%20-%20Episode%201/dontPanicEP1.swift)