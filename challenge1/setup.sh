#!/bin/bash
# =============================================================
#  EXPÉDITION POLAIRE — Challenge 1 : "Le Journal du Capitaine"
#  Compétences : cd, ls, cat, navigation filesystem
# =============================================================

# --- Structure du brise-glace ---
mkdir -p /home/player/brise_glace/{pont_superieur,salle_des_machines,cabines/{capitaine,docteur,ingenieure},cale/{provisions,equipement}}
mkdir -p /home/player/brise_glace/bibliotheque

# --- Pont supérieur : message de bienvenue ---
cat > /home/player/brise_glace/pont_superieur/message_accueil.txt << 'EOF'
=== BIENVENUE À BORD DE L'AURORE BORÉALE ===

Matelot, vous venez d'embarquer sur le plus grand brise-glace
de la flotte polaire. Notre mission : retrouver les traces de
l'expédition EREBUS, disparue il y a 6 mois dans les glaces.

Leur dernier signal provenait de ces coordonnées : 78°N 15°E.
Le Capitaine Morel a laissé des instructions avant de disparaître.

Commencez par explorer le navire. Son journal se trouve
quelque part dans sa cabine.

Bonne chance, matelot.
— Le Commandant de Bord
EOF

# --- Bibliothèque : aide aux commandes ---
cat > /home/player/LISEZ_MOI.txt << 'EOF'
=== MANUEL DU MATELOT NUMÉRIQUE ===

Pour naviguer dans ce navire virtuel, vous aurez besoin de :

  ls          → lister le contenu d'un dossier
  ls -la      → lister TOUT le contenu (y compris fichiers cachés)
  cd NOM      → entrer dans un dossier
  cd ..       → remonter d'un niveau
  cat FICHIER → lire un fichier
  pwd         → savoir où vous êtes

Vous pouvez utiliser le bouton "Tab" pour l'autocomplétion des noms de fichiers et dossiers. Ça facilite la navigation !

Exemple :
  cd cabines/capitaine
  ls
  cat journal.txt

Bonne exploration !
EOF

# --- Salle des machines : fausse piste narrative ---
cat > /home/player/brise_glace/salle_des_machines/rapport_technique.txt << 'EOF'
RAPPORT TECHNIQUE — Salle des machines
Date : 14 janvier

Les moteurs fonctionnent à 80% de capacité.
La glace est plus épaisse que prévu à cette latitude.

Note de l'ingénieure Chen : "J'ai laissé quelque chose
dans ma cabine qui pourrait vous intéresser."
EOF

# --- Cabine de l'ingénieure : indice intermédiaire ---
cat > /home/player/brise_glace/cabines/ingenieure/note_chen.txt << 'EOF'
Note personnelle — Yuki Chen, Ingénieure en chef

Le Capitaine Morel était bizarre ces derniers jours.
Il passait des heures dans la bibliothèque et dans sa cabine.
Il m'a dit que son journal contenait les dernières coordonnées
connues de l'expédition EREBUS.

Sa cabine est au bout du couloir des cabines.
EOF

# --- Cabine du docteur : fausse piste ---
cat > /home/player/brise_glace/cabines/docteur/carnet_medical.txt << 'EOF'
Carnet médical — Dr. Amara Diallo

Tout l'équipage est en bonne santé.
Le Capitaine souffrait d'insomnies depuis le départ.
Il restait éveillé la nuit à écrire dans son journal.

Je n'ai pas accès à sa cabine. Vous devrez y aller vous-même.
EOF

# --- Cale : provisions, élément narratif ---
cat > /home/player/brise_glace/cale/provisions/inventaire.txt << 'EOF'
Inventaire des provisions — Semaine 3

- Rations de survie : 847 unités
- Eau potable : 2300 litres
- Carburant : 65% restant

Note : Des traces de pas ont été trouvées près de l'équipement
la nuit du 13 janvier. Enquête en cours.
EOF

cat > /home/player/brise_glace/cale/equipement/materiel_exploration.txt << 'EOF'
Matériel d'exploration arctique

- Combinaisons thermiques : 12
- Traîneaux motorisés : 3
- Balises GPS : 8 (dont 1 manquante — voir rapport du 13 jan.)

La balise manquante portait le numéro de série : ARC-7749
EOF

# --- Cabine du Capitaine : objectif final ---
cat > /home/player/brise_glace/cabines/capitaine/journal_morel.txt << 'EOF'
=== JOURNAL DU CAPITAINE MOREL ===
— Entrée finale, 14 janvier au soir —

Si quelqu'un lit ces lignes, l'expédition EREBUS n'a pas
disparu par accident. Ils ont trouvé quelque chose sous la glace.

Leurs dernières coordonnées transmises :
  ► 78°14'N  —  15°33'E

J'ai caché les détails de leur découverte dans un endroit
que seul un matelot courageux saura trouver.

Cherchez le fichier de mission dans la cale, dossier équipement.
Le mot de passe du prochain niveau est :

    FLAG : EREBUS_78N_TROUVE

Capitaine Henri Morel
EOF

# --- Permissions : le journal est lisible mais la cabine nécessite ls pour être trouvée ---
chmod 755 /home/player/brise_glace/cabines/capitaine
chmod 644 /home/player/brise_glace/cabines/capitaine/journal_morel.txt

echo "[setup] Challenge 1 prêt ✓"
