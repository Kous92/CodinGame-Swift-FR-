# CodinGame: ANEO Sponsored Challenge

## IMPORTANT

Ce puzzle est un puzzle sponsorisé par une entreprise dans le but de recruter des développeurs, ici ANEO, étant une ESN comme Capgemini, ASTEK, ALTEN, VISEO, AUBAY, Extia, agap2IT,... située à Boulogne-Billancourt (92, Hauts-de-Seine, France). Vous ne pouvez pas dans les puzzles sponsorisés consulter les autres solutions si vous avez résolu le puzzle avec un score de 100%, le but étant de recruter des développeurs opérationnels pour les clients d'ANEO, dans le cadre de missions.

[Site de l'entreprise (à consulter impérativement si vous comptez postuler)](https://www.aneo.eu/)

Si vous réussissez à résoudre ce puzzle à 100%, vous tomberez sur cette interface ci-dessous où vous pourrez soumettre votre candidature spontanée en y déposant votre CV, et en renseignant vos coordonnées, vos disponibilités, un message, et le lien vers votre profil LinkedIn.

![ANEO recrute](ANEOrecrute.png)
![Validateurs + code](validateursANEO.png)

### Les détails concernant ANEO
- ![À propos d'ANEO](introANEO1.png)
- ![À propos d'ANEO](introANEO2.png)

- **En cliquant sur le bouton "Laisser mes coordonnées", voici l'interface pour soumettre sa candidature spontanée:**
![Coordonnées pour les recruteurs d'ANEO](coordonneesANEO.png)
![Disponibilités + CV + lien vers LinkedIn](dispoCVANEO.png)

### ATTENTION

Ne croyez pas que le fait d'avoir seulement résolu ce puzzle vous permettra d'être embauché, il faudra bien évidemment si vous êtes contacté par les recruteurs d'ANEO:
- Passer des entretiens avec les RH, les ingénieurs d'affaires et potentiellement les directeurs d'agence (en fonction du poste et du processus de recrutement).
- Passer un test recruteur **CodinGame** via la solution **CodinGame FOR WORK**.
- Passer d'autres tests techniques que ce soit par une discussion technique, questions théoriques, mini-projets lors de la rencontre avec un client d'ANEO, si celui-ci accepte de vous rencontrer.

**Et surtout bien vous renseigner sur l'entreprise <u>en interne</u> !!!!**

## ÉNONCÉ

En voiture, vous entrez sur une portion de route et vous comptez vous reposer entièrement sur votre régulateur de vitesse pour traverser la zone sans devoir vous arrêter ni ralentir.

L'objectif est de trouver la vitesse maximale (hors excès de vitesse) qui vous permettra de franchir tous les feux au vert.

*Trouvez une solution, faites-vous contacter et rencontrez l'équipe tech d'ANEO.*

## Objectif

Vous entrez sur une portion de route et vous comptez vous reposer entièrement sur votre régulateur de vitesse pour traverser la zone sans devoir vous arrêter ni ralentir.

L'objectif est de trouver la vitesse maximale (hors excès de vitesse) qui vous permettra de franchir tous les feux au vert.

**Attention:** Vous ne pouvez pas franchir un feu à la seconde où il passe au rouge !

Votre véhicule entre directement dans la zone à la vitesse programmée sur le régulateur et ce dernier veille à ce qu'elle ne change plus par la suite.

## Entrées du jeu

### Entrée

- **Ligne 1:** Un entier `speed` pour la vitesse maximale autorisée sur la portion de route (en km/h).
- **Ligne 2:** Un entier `lightCount` pour le nombre de feu de circulation sur la route.

**`lightCount` prochaines lignes:**
- Un entier `distance` représentant la distance du feu par rapport au point de départ (en mètres).
- Un entier `duration` représentant la durée du feu sur chaque couleur.

Un feu alterne une période de `duration` secondes au vert puis `duration` secondes au rouge.
Tous les feux passent au vert en même temps dès votre entrée dans la zone.

### Sortie
- **Ligne 1:** La vitesse entière (km/h) la plus élevée possible qui permet de franchir tous les feux au vert sans commettre d'excès de vitesse.

### Contraintes
- 1 ≤ `speed` ≤ 200
- 1 ≤ `lightCount` ≤ 9999
- 1 ≤ `distance` ≤ 99999
- 1 ≤ `duration` ≤ 9999

### Exemple

Entrée | Sortie
------------ | -------------
50<br>1<br>200 15 | 50

## Solution

La principale difficulté de ce puzzle est de pouvoir gérer la précision du résultat, une maladresse rendra la solution invalide. Le but est de pouvoir s'assurer qu'à une vitesse précise l'ensemble des feux soient verts.

- 1. Créer une structure pour y mettre la distance et la durée du prochain feu tricolore
```swift
struct LightTraffic {
    let distance: Int
    let duration: Int

    init(distance: Int, duration: Int) {
        self.distance = distance
        self.duration = duration
    }
}
```

- 2. Remplir un tableau avec les données en entrée de chaque feu tricolore
```swift
let maxSpeed = Int(readLine()!)! // Limite de vitesse
let lightCount = Int(readLine()!)! // Nombre de feux tricolores
var lightsTraffic = [LightTraffic]()

if lightCount > 0 {
    for _ in 0 ..< lightCount {
        let inputs = (readLine()!).split(separator: " ").map(String.init)
        lightsTraffic.append(LightTraffic(distance: Int(inputs[0])!, duration: Int(inputs[1])!))
    }
}
```

- 3. Dans une fonction, on va vérifier à une vitesse que l'ensemble des feux soient verts dans une boucle qui va parcourir l'ensemble des feux tricolores:
```swift
func isEveryLightGreen(lights: [LightTraffic], speed: Int) -> Bool {
    for light in lights {
        
    }

    return true
}

- 3.1) On calcule le temps de trajet: `distance / vitesse`. La vitesse initialement en km/h doit être en m/s:
```swift
let travelTime = Float(light.distance) / (Float(speed) / 3.6)
```

- 3.2) Il faut impérativement vérifier que le résultat soit arrondi à l'unité:
```swift
let travelTimeRounded = roundf(travelTime)

// Vérifier la précision après la virgule, aucun chiffre ne doit y être
let isRounded = travelTimeRounded - travelTime < 0.01
let totalTravelTime = isRounded ? travelTimeRounded : travelTime
```

- 3.3) L'état du feu tricolore se calcule avec le rapport entre le temps de trajet et la durée du feu tricolore. Le feu est vert si le rapport est divisible par 2, rouge sinon. Si le feu est rouge, on arrête la fonction en retournant `false`. Retourner `true` après la boucle:
```swift
let ratioWithLightDuration = floorf(totalTravelTime / Float(light.duration))

if Int(ratioWithLightDuration) % 2 != 0 {
    return false
}
```

- 3.4) L'implémentation complète de la fonction
```swift
func isEveryLightGreen(lights: [LightTraffic], speed: Int) -> Bool {
    for light in lights {
        // Time to travel: distance / (speed / 3.6). km/h to m/s = km/h / 3.6
        let travelTime = Float(light.distance) / (Float(speed) / 3.6)

        // Round to integer, no digits for the float part
        let travelTimeRounded = roundf(travelTime)

        // Checking float precision
        let isRounded = travelTimeRounded - travelTime < 0.01
        let totalTravelTime = isRounded ? travelTimeRounded : travelTime

        // Green light is even number: If total travel time / light duration is dividable by 2
        let ratioWithLightDuration = floorf(totalTravelTime / Float(light.duration))
        
        // Odd: red light, even: green light
        if Int(ratioWithLightDuration) % 2 != 0 {
            return false
        }
    }

    return true
}
```

- 4. Tester chaque vitesse de la limite jusqu'à 0 en décrémentant de 1 en exécutant la fonction précédemment implémentée. Si la vitesse est correcte, interrompez l'exécution de la boucle avec `break`.
```swift
for speed in (0 ... maxSpeed).reversed() {
    if isEveryLightGreen(lights: lightsTraffic, speed: speed) {
        print(speed)
        break
    }
}
```

[Code source de la solution](https://github.com/Kous92/CodinGame-Swift-FR-/blob/main/Puzzles%20classiques/Moyen/ANEO%20Sponsored%20Challenge/aneo.swift)