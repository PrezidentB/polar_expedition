# Challenge 1 — "Le Journal du Capitaine"
**Niveau** : Débutant

| Commande | Usage |
|----------|-------------|
| `ls`     | Lister le contenu d'un dossier |
| `cd`     | Se déplacer dans l'arborescence |
| `cat`    | Lire un fichier texte |

**Arborescence** :
```
.
|-- LISEZ_MOI.txt
`-- brise_glace
    |-- cabines
    |   |-- capitaine
    |   |   `-- journal_morel.txt <-- le flag est ici
    |   |-- docteur
    |   |   `-- carnet_medical.txt
    |   `-- ingenieure
    |       `-- note_chen.txt
    |-- cale
    |   `-- provisions
    |       `-- inventaire.txt <-- purement décoratif
    |-- pont_superieur
    |   `-- message_accueil.txt
    `-- salle_des_machines
        `-- rapport_technique.txt <-- purement décoratif
```
Chacune des autres notes redirige vers la cabine du capitaine.

**FLAG** : `BZHCTF{EREBUS_TROUVE}`