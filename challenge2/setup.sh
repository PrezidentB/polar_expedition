#!/bin/bash
# =============================================================
#  EXPÉDITION POLAIRE — Challenge 2 : "Les Secrets de la Glace"
#  Compétences : ls -la, fichiers cachés (.), variables d'env, env/export
# =============================================================

# --- Structure de la base de recherche EREBUS ---
mkdir -p /home/player/base_erebus/{laboratoire,quartiers/{elena,marcus,inconnu},archives,exterieur}

# --- Message d'introduction ---
cat > /home/player/MISSION.txt << 'EOF'

=== MISSION : LES SECRETS DE LA GLACE ===

Grâce aux coordonnées du Capitaine Morel, l'Aurore Boréale
a retrouvé la base de l'expédition EREBUS, abandonnée dans la glace.

Vous êtes l'un des premiers à pénétrer dans la base.
Les membres de l'expédition ont disparu, mais leurs affaires
sont toujours là.

Votre objectif : retrouver le code d'accès au laboratoire principal
et découvrir ce que l'expédition EREBUS a trouvé sous la glace.

Conseil : certains fichiers sont cachés. Utilisez  ls -la  
pour tout voir, y compris les fichiers qui commencent par un point (.)

Bonne chance.

EOF

# --- Extérieur de la base : indice sur les fichiers cachés ---
cat > /home/player/base_erebus/exterieur/rapport_exploration.txt << 'EOF'

Rapport d'exploration préliminaire
Rédigé par : Équipe de reconnaissance de l'Aurore Boréale

La base EREBUS est intacte. Les portes étaient déverrouillées.
Aucun signe de violence. Les chercheurs semblent être partis
précipitamment en laissant tout sur place.

Observation : plusieurs fichiers des ordinateurs semblent avoir
été cachés intentionnellement, comme si quelqu'un ne voulait pas
qu'on les trouve facilement.

Rappel technique : sous Linux, un fichier caché commence par un
point. Ex : ".secret"  ou  ".notes_privees"
Pour les voir, utilisez la commande :  ls -la

EOF

# --- Quartier d'Elena : chercheuse principale ---
cat > /home/player/base_erebus/quartiers/elena/carnet.txt << 'EOF'

Carnet de recherche — Elena Vasquez, Glaciologue

Semaine 8 de l'expédition.

Nous avons détecté une anomalie thermique sous la calotte glaciaire.
Une source de chaleur inexpliquée à -340 mètres de profondeur.

Marcus pense que c'est géothermique. Je ne suis pas convaincue.
Les lectures ne correspondent à aucun modèle connu.

J'ai noté les paramètres détaillés dans un fichier que j'ai préféré
cacher sur l'ordinateur du laboratoire. On ne sait jamais.

— Elena

EOF

# --- Fichier caché dans le quartier d'Elena ---
cat > /home/player/base_erebus/quartiers/elena/.coordonnees_anomalie.txt << 'EOF'

DONNÉES CONFIDENTIELLES — Elena Vasquez
Ne pas diffuser sans autorisation

Anomalie thermique sous-glaciaire :
  Position exacte : 78°14'22"N  15°33'47"E
  Profondeur : 340 mètres sous la glace
  Température mesurée : +4°C (aberrant pour cette profondeur)
  Diamètre estimé : 200 mètres
  Masse : ░▒▓░▒▓░▒▓░▒▓░▒▓░▒▓░▒▓

Ces données ont été transmises au laboratoire principal.
Le code d'accès au labo a été partagé via la variable
d'environnement système le jour de notre départ.

Vérifiez les variables d'environnement du système :
utilisez la commande  env  ou  echo $NOM_VARIABLE
La variable s'appelle : CODE_LABO

EOF

# --- Quartier de Marcus ---
cat > /home/player/base_erebus/quartiers/marcus/journal.txt << 'EOF'

Journal de bord — Marcus Okonkwo, Géophysicien

Je maintiens mon hypothèse géothermique malgré le scepticisme d'Elena.
La Terre est pleine de surprises à ces latitudes.

Cependant... les lectures d'hier soir m'ont troublé.
La source de chaleur a une forme trop régulière. Trop symétrique.

J'ai changé le code d'accès du laboratoire et l'ai stocké
de façon sécurisée dans les variables d'environnement du système.
Seule Elena est au courant.

Si quelqu'un lit ceci : consultez les variables d'environnement.

Commande :  env | grep CODE

EOF

# --- Archives : contexte narratif ---
cat > /home/player/base_erebus/archives/historique_mission.txt << 'EOF'

EXPÉDITION EREBUS — Fiche de mission officielle

Durée prévue : 3 mois
Objectif : cartographie sous-glaciaire du secteur 78°N

Équipe :
  - Elena Vasquez    — Glaciologue (responsable scientifique)
  - Marcus Okonkwo   — Géophysicien
  - ìñçöññüé         — (ñøñ répertørié) ░▒▓

Note : un troisième membre de l'expédition n'apparaît dans
aucun registre officiel. Son quartier a été retrouvé fermé.
Des bruits ont été entendus de l'autre côté de la porte.

EOF

# --- Quartier inconnu : porte fermée, fichier caché avec indice ---
cat > /home/player/base_erebus/quartiers/inconnu/porte.txt << 'EOF'

[ La porte de ce quartier est fermée de l'intérieur. ]
[ Vous entendez un léger bourdonnement électronique.  ]

Peut-être qu'un autre indice vous permettra d'en savoir plus
sur ce mystérieux troisième membre...

EOF

cat > /home/player/base_erebus/quartiers/inconnu/.identite.txt << 'EOF'

FICHIER CHIFFRÉ — Partiellement décodé

Nom : [CLASSIFIÉ] ░▒▓ ìñçöññüé
Affiliation : ██████ de Recherche Arctique International

Mission parallèle : surveiller l'anomalie thermique et
s'assurer qu'elle ne soit pas rendue publique.

Ce fichier ne devait pas être trouvé.
Si vous êtes arrivé jusqu'ici, vous êtes plus habile que prévu.

Statut : [████████] — Accès restreint
Niveau de classification : ███████
Données sensibles : ███████████████

→ Récupérez maintenant le CODE_LABO pour valider votre mission et détruire les données sensibles.

EOF

# --- Variable d'environnement : injectée pour tous les shells ---
echo 'export CODE_LABO="BZHDLS{GLACE_PROFONDE_340}"' >> /etc/environment
echo 'export CODE_LABO="BZHDLS{GLACE_PROFONDE_340}"' >> /home/player/.bashrc
echo 'export HINT_EREBUS="Les secrets sont parfois invisibles à première vue"' >> /home/player/.bashrc

echo "[setup] Challenge 2 prêt ✓"
