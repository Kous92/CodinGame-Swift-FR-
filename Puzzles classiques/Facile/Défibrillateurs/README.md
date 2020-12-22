# CodinGame: Défibrillateurs

## ÉNONCÉ
Le but de cet exercice est de vous faire trouver le point le plus proche de coordonnées géographiques (latitude et longitude). Votre programme doit renvoyer le nom de l'endroit associé.

Dans ce puzzle, vous jouez beaucoup avec les conversions (degré en radian, coordonnées en distance, chaîne de caractères en flottant).

## Objectif
En entrée de votre programme sont fournies les données dont vous avez besoin, au format texte. Ces données sont notamment composées de lignes dont chacune représente un défibrillateur. Chaque défibrillateur est représenté par les champs suivants :
- Numéro identifiant le défibrillateur
- Nom
- Adresse
- Numéro de téléphone à joindre
- Longitude (en degrés)
- Latitude (en degrés)
- Ces champs sont séparés par un point-virgule (;)

*Attention : les nombres décimaux utilisent la virgule (`,`) comme séparateur pour la partie décimale. Pensez à transformer la virgule (`,`) en point (`.`) si nécessaire pour utiliser les données dans votre programme.*

**DISTANCE**
La distance `d` entre deux points `A` et `B` sera calculée en utilisant la formule suivante :

*Note : Dans cette formule, les latitudes et longitu​des sont exprimées en radians. 6371 correspond au rayon de la terre en km.*

Le programme affichera le nom du défibrillateur se trouvant au plus près de la position de l'utilisateur. Cette position est fournie en entrée au programme.

## Entrées du jeu

### Entrée
- **Ligne 1:** la longitude (en degrés) de l'utilisateur
- **Ligne 2:** la latitude (en degrés) de l'utilisateur
- **Ligne 3:** le nombre `N` de défibrillateurs équipant les rues de Montpellier
- **`N` lignes suivantes:** une description de chaque défibrillateur

### Sortie
- Le nom du défibrillateur le plus proche de la position de l'utilisateur.
 
### Contraintes
0 < `N` < 10000 

### Exemple
Entrée | Sortie
------------ | -------------
3,879483<br>43,608177<br>3<br>1;Maison de la Prevention Sante;6 rue Maguelone 340000 Montpellier;;3,87952263361082;43,6071285339217<br>2;Hotel de Ville;1 place Georges Freche 34267 Montpellier;;3,89652239197876;43,5987299452849<br>3;Zoo de Lunaret;50 avenue Agropolis 34090 Mtp;;3,87388031141133;43,6395872778854 | Maison de la Prevention Sante

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Facile/Chevaux%20de%20course/chevauxDeCourse.swift)
