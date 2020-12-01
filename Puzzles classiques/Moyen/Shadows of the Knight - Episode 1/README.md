# CodinGame: Shadows of the Knight - Episode 1

## Objectifs

Batman va rechercher les otages d'un batiment donné en sautant de fenêtre en fenêtre à l'aide de son grappin. Le but de Batman est d'arriver sur la fenêtre de la pièce où les otages se trouvent afin de désamorcer les bombes du Joker. Malheureusement il n'a qu'un nombre de sauts limités avant que les bombes n'explosent...

## Règles

Avant chaque saut, le détecteur fournira à Batman la direction des bombes par rapport à la position actuelle de Batman:
`U` (Up : les bombes sont situées au dessus de Batman)
`UR` (Up-Right : les bombes sont situées au dessus et à droite de Batman)
`R` (Right : les bombes sont situées à droite de Batman)
`DR` (Down-Right : les bombes sont situées en dessous et à droite de Batman)
`D` (Down : les bombes sont situées en dessous de Batman)
`DL` (Down-Left : les bombes sont situées en dessous et à gauche de Batman)
`L` (Left : les bombes sont situées à gauche de Batman)
`UL` (Up-Left : les bombes sont situées au dessus et à gauche de Batman)

Votre mission consiste à programmer le détecteur afin **qu'il indique la position de la fenêtre sur laquelle Batman devra se rendre au saut suivant** de sorte qu'il atteigne les bombes **le plus tôt possible**.

Les bâtiments sont représentés par des rectangles de fenêtres, la fenêtre en haut à gauche a pour position (0,0).

## Note
Pour certains tests, la position **des bombes varie d'une exécution à l'autre**. L'objectif est de vous aider à trouver le meilleur algorithme possible.
Les tests fournis et les validateurs utilisés pour le calcul du score sont similaires mais différents.

## Entrées du jeu
Le programme doit d'abord lire les données d'initialisation depuis l'entrée standard, puis, dans une boucle infinie, lire depuis l'entrée standard les données relatives à l'état courant de Batman et fournir sur la sortie standard les données demandées.

### Entrées d'initialisation
- Ligne 1 : 2 entiers `W` `H`. Le couple (`W`,`H`) représente la largeur et la hauteur du batiment en nombre de fenêtre
- Ligne 2: 1 entier `N`, qui représente le nombre de sauts que Batman peut faire avant que les bombes n'explosent.
- Ligne 2 : 2 entiers `X0` `Y0`, qui représentent la position de départ de Batman.

### Entrées pour un tour de jeu
La direction vers laquelle se trouve la bombe.

### Sortie pour un tour de jeu
Une **ligne unique** avec 2 entiers `X` `Y` séparés par un espace. (`X`,`Y`) représente la position de la prochaine fenêtre sur laquelle Batman devrait sauter. `X` représente l'index sur l'axe horizontal, `Y` représente l'index sur l'axe vertical. (0,0) se trouve dans le coin haut gauche du bâtiment.

### Sortie
- Ligne 1: La différence `D` entre les deux puissances les plus proches. `D` est un entier positif.

### Contraintes
1 ≤ W ≤ 10000
1 ≤ H ≤ 10000
2 ≤ N ≤ 100
0 ≤ X, X0 < W
0 ≤ Y, Y0 < H
Temps de réponse pour un tour ≤ 150ms

### Synopsis
**Batman**: “Allez Joker, c'est fini, sors de ta cachette ! Tu ne peux plus m'échapper maintenant...”
**Joker**: “Oh que si Batman ! Regarde derrière toi... Tu vois ces batiments ? Et bien dans chacun d'eux il y a une pièce pleine d'otages attachés à mes adorables bombes-surprises. Elles peuvent exploser à tout moment, quel joyeux feu d'artifice ce sera ! BOUM, BOUM, BOUM !!!”
**Batman**: “Soit maudit, Joker, tu ne t'en tireras pas comme ça.”
**Joker**: “À toi de choisir Batman : perdre ton temps à essayer de m'attraper ou tenter de sauver ces pauvres otages innocents ? Ha ha ha...”
**Batman**: “Alfred, je n'ai pas le temps de vérifier toutes les fenêtres des batiments: j'ai besoin d'un gadget pour accélérer la tâche.”
**Alfred**: “Bien sûr monsieur. J'ai justement l'outil idéal : un détecteur de bombes basé sur la chaleur émise par les explosifs. Je vous l'envoie dès que j'ai fini de le reprogrammer.>”
**Joker**: “À plus tard Batman ! Ha ha ha HI HI HI...”

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Moyen/Shadows%20of%20the%20Knight%20-%20Episode%201/shadowsOfTheKnightEP1.swift)