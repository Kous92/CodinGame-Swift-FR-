# CodinGame: MIME Type

## Que vais-je apprendre ?
Dans ce puzzle, vous devez séparer une chaîne de caractères en plusieurs morceaux, comparer et reconnaître des chaînes de caractères similaires en utilisant un algorithme qui n'est pas sensible à la casse.

Vous devez aussi créer et utiliser un tableau associatif et parcourir un large ensemble de données.

## Objectifs
Le *type MIME* est utilisé dans de nombreux protocoles internet pour associer un type de média (html, image, vidéo, ...) avec le contenu envoyé. Ce type MIME est généralement déduit de l'extension du fichier à transférer.

Vous devez écrire un programme qui permet de détecter le *type MIME* d'un fichier à partir de son nom.

## Règles
Une table qui associe un *type MIME* avec une extension de fichier vous est fournie. Une liste de noms de fichier à transférer vous sera aussi fournie et vous devrez déduire pour chacun d'eux, le *type MIME* à utiliser.

L'extension d'un fichier se définit par la partie du nom qui se trouve après le dernier point qui le compose.
Si l'extension du fichier est présente dans la table d'association (la casse ne compte pas. ex : TXT est équivalent à txt), alors affichez le *type MIME* correspondant . S'il n'est pas possible de trouver le *type MIME* associé à un fichier, ou si le fichier n'a pas d'extensions, affichez `UNKNOWN`.

## Entrées du jeu

### Entrée
- **Ligne 1:** Nombre `N` d’éléments composant la table d'association. 
- **Ligne 1:** Nombre `Q` de noms de fichiers à analyser.
- **`N` lignes suivantes:** Une extension de fichier par ligne et son type *MIME* correspondant (séparé par un espace).
- **`Q` lignes suivantes:** Un nom de fichier par ligne.

### Sortie
- Pour chacun des `Q` noms de fichiers, afficher sur une ligne le type *MIME* associé. S'il n'y a pas de correspondance, afficher `UNKNOWN`.
 
### Contraintes
0 < `N` < 10000
0 < `Q` < 10000
- Les extensions de fichiers sont composées d'un maximum de 10 caractères ascii alphanumériques.
- Les *type MIME* sont composés d'un maximum de 50 caractères ascii alphanumérique et de ponctuations.
- Les noms de fichiers sont composés d'un maximum de 256 caractères ascii alphanumériques et points.
- Il n'y a pas d'espaces dans les noms de fichiers, les extensions et les *types MIME*.

### Exemple
Entrée | Sortie
------------ | -------------
2<br>4<br>html text/html<br>png image/png<br>test.html<br>noextension<br>portrait.png<br>doc.TXT | text/html<br>UNKNOWN<br>image/png<br>UNKNOWN

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Facile/MIME%20Type/mimeType.swift)