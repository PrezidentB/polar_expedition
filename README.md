# 🧊 EXPÉDITION POLAIRE — Challenges Linux

Deux challenges progressifs sur le thème d'une expédition arctique,
destinés à des collégiens/lycéens débutants sur Linux.

---

## 📦 Structure

```
.
├── LICENSE
├── README.md
├── challenge1
│   ├── Dockerfile
│   └── setup.sh
├── challenge2
│   ├── Dockerfile
│   └── setup.sh
├── dispatcher
│   ├── Dockerfile
│   └── app.py
└── docker-compose.yml
```

---

## 🚀 Lancement rapide

```
docker compose up -d
```

---
## Objectifs

### Challenge 1 — "Le Journal du Capitaine"
**Niveau** : Débutant absolu  

| Commande | Usage appris |
|----------|-------------|
| `ls`     | Lister le contenu d'un dossier |
| `cd`     | Se déplacer dans l'arborescence |
| `cat`    | Lire un fichier texte |

**Scénario** : Le joueur explore le brise-glace 
et doit retrouver le journal du Capitaine Morel, qui contient
les coordonnées de l'expédition disparue EREBUS.

**FLAG** : `EREBUS_78N_TROUVE`

---
### Challenge 2 — "Les Secrets de la Glace"
**Niveau** : Débutant+ (après le challenge 1)  

| Commande | Usage appris |
|----------|-------------|
| `ls -la` | Voir les fichiers cachés (commençant par `.`) |
| `cat`    | Lire des fichiers cachés |
| `env`    | Afficher les variables d'environnement |
| `echo $VAR` | Lire la valeur d'une variable |

**Scénario** : Le joueur pénètre dans la base abandonnée EREBUS
et doit retrouver le code d'accès du laboratoire principal,
caché dans les variables d'environnement système.

**FLAG** : `GLACE_PROFONDE_340` (valeur de `$CODE_LABO`)

---

## Énoncés

### Énoncé — Challenge 1

> **EXPÉDITION POLAIRE — Mission 1 : Le Journal du Capitaine**
>
> Vous venez d'embarquer à bord de l'*Aurore Boréale*, un brise-glace
> en route pour retrouver l'expédition EREBUS, disparue depuis 6 mois.
>
> Le Capitaine Morel a disparu, mais il a laissé des indices.
> Explorez le navire et retrouvez son journal.
>
> **Commandes utiles :** `ls`, `cd`, `cat`, `pwd`, `cd ..`
>
> Une fois le FLAG trouvé, tapez : `bash valider_mission.sh`

---

### Énoncé — Challenge 2

> **EXPÉDITION POLAIRE — Mission 2 : Les Secrets de la Glace**
>
> Grâce aux coordonnées du Capitaine, vous avez rejoint la base
> abandonnée de l'expédition EREBUS.
>
> Les chercheurs ont caché des informations sensibles.
> Certains fichiers sont **invisibles** avec un simple `ls`.
> Et le code du laboratoire est stocké dans les **variables d'environnement**.
>
> **Commandes utiles :** `ls -la`, `cat`, `env`, `echo $NOM_VARIABLE`
>
> Une fois le code trouvé, tapez : `bash valider_mission.sh`

---

## Identifiants de connexion 
*on ne devrait pas en avoir besoin*

| Paramètre | Valeur |
|-----------|--------|
| Utilisateur | `player` |
| Mot de passe | `arctique` |
