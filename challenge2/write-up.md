# Challenge 2 — "Les Secrets de la Glace"
**Niveau** : Débutant+ (après le challenge 1)  

| Commande | Usage |
|----------|-------------|
| `ls -la` | Voir les fichiers cachés (commençant par `.`) |
| `cat`    | Lire des fichiers cachés |
| `env`    | Afficher les variables d'environnement |
| `echo $VAR` | Lire la valeur d'une variable |

**Arborescence** :
```
.
|-- MISSION.txt
`-- base_erebus
    |-- archives
    |   `-- historique_mission.txt <-- redirige vers les quartiers de inconnu car il est suspect
    |-- exterieur
    |   `-- rapport_exploration.txt <-- donne une commande pour les fichiers cachés
    |-- laboratoire
    |   `-- .coordonnees_anomalie.txt <-- Donne le nom de la variable
    `-- quartiers
        |-- elena
        |   `-- carnet.txt <-- redirige vers le laboratoire
        |-- inconnu
        |   |-- .identite.txt <-- nom de la variable donnée aussi ici
        |   `-- porte.txt <-- seul fichier qui apparait avec ls seul
        `-- marcus
            `-- journal.txt <-- Donne une autre façon de récupérer la variable
```

**Solve** :
```sh
echo $CODE_LABO
# ou
env | grep CODE_LABO
# ou
env
# ou
printenv
#...
```

**FLAG** : `BZHCTF{GLACE_PROFONDE}`