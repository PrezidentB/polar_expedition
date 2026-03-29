# 🧊 EXPÉDITION POLAIRE — Challenges Linux

Deux challenges progressifs sur le thème d'une expédition arctique,
destinés à des collégiens/lycéens débutants sur Linux.

---

## 📦 Structure

```
polar-escape/
├── challenge1/     # "Le Journal du Capitaine"
│   ├── Dockerfile
│   └── setup.sh
├── challenge2/     # "Les Secrets de la Glace"
│   ├── Dockerfile
│   └── setup.sh
└── README.md
```

---

## 🚀 Lancement rapide

### Challenge 1

```bash
cd challenge1
docker build -t polar-challenge1 .
docker run -it polar-challenge1
```

### Challenge 2

```bash
cd challenge2
docker build -t polar-challenge2 .
docker run -it polar-challenge2
```

---

## 🎯 Objectifs pédagogiques

### Challenge 1 — "Le Journal du Capitaine"
**Niveau** : Débutant absolu  
**Durée estimée** : 20–35 min

| Commande | Usage appris |
|----------|-------------|
| `ls`     | Lister le contenu d'un dossier |
| `cd`     | Se déplacer dans l'arborescence |
| `cat`    | Lire un fichier texte |
| `pwd`    | Savoir où l'on se trouve |

**Scénario** : Le joueur explore le brise-glace *Aurore Boréale*
et doit retrouver le journal du Capitaine Morel, qui contient
les coordonnées de l'expédition disparue EREBUS.

**FLAG** : `EREBUS_78N_TROUVE`

---

### Challenge 2 — "Les Secrets de la Glace"
**Niveau** : Débutant+ (après le challenge 1)  
**Durée estimée** : 30–50 min

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

## 💡 Conseils pour l'animation

- **Imprimer l'énoncé** sur papier pour chaque élève (cf. section ci-dessous)
- Laisser les élèves chercher avant d'aider : l'exploration fait partie de l'apprentissage
- Le fichier `valider_mission.sh` permet une validation autonome : `bash valider_mission.sh`
- Pour les plus rapides : inviter à explorer toutes les pistes narratives (fausses pistes incluses)

---

## 📋 Énoncés élèves

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

## 🔧 Identifiants de connexion

| Paramètre | Valeur |
|-----------|--------|
| Utilisateur | `player` |
| Mot de passe | `arctique` |
