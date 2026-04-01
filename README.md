# 🧊 EXPÉDITION POLAIRE — Challenges Linux

Deux challenges progressifs sur le thème d'une expédition arctique,
destinés à des collégiens/lycéens débutants sur Linux.

Le conteneur `dispatcher` permet de créer des conteneurs identiques à la volée, avec un shell exposé sur une page web à l'aide de `ttyd`. 

Il ne reste plus qu'à trouver un moyen de faire supprimer les conteneurs une fois la connexion coupée.

---

## 📦 Structure

```
.
├── LICENSE
├── README.md
├── challenge1
│   ├── Dockerfile
│   ├── setup.sh
│   ├── write-up.md
│   └── énoncé.md
├── challenge2
│   ├── Dockerfile
│   ├── setup.sh
│   ├── write-up.md
│   └── énoncé.md
├── challenge3
│   ├── Dockerfile
│   └── setup.sh
├── dispatcher
│   ├── Dockerfile
│   ├── app.py
│   └── static
│       └── index.html
└── docker-compose.yml
```

---

## 🚀 Lancement rapide

```
docker compose up -d
```

Aller sur http://localhost/

---

## Identifiants de connexion 
*on ne devrait pas en avoir besoin*

| Paramètre | Valeur |
|-----------|--------|
| Utilisateur | `player` |
| Mot de passe | `arctique` |
