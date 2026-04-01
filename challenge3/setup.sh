#!/bin/bash
# =============================================================
#  EXPÉDITION POLAIRE — Challenge EXPERT : "Le Terminal Fantôme"
#  Compétences : find, setuid, escalade de privilèges basique
# =============================================================

# --- Structure ---
mkdir -p /home/player/{documents,equipement,radio}
mkdir -p /root/coffre

# --- Flag dans /root, inaccessible directement ---
cat > /root/coffre/flag.txt << 'EOF'
FÉLICITATIONS.

Vous avez trouvé le journal crypté du Docteur Amir Haddad.

"Nous avons trouvé une structure artificielle sous la glace.
 Quelqu'un ne voulait pas que cela soit su.
 Si vous lisez ceci, continuez à chercher."

FLAG : BZHCTF{EREBUS_COMPROMISED}
EOF
chmod 600 /root/coffre/flag.txt

# --- Indices pour le joueur ---
cat > /home/player/documents/note_equipement.txt << 'EOF'
Note de l'équipe technique

Certains outils de diagnostic système ont été laissés sur la base.
Ils tournaient avec des privilèges élevés pour accéder aux capteurs.

On n'a pas eu le temps de les sécuriser avant l'évacuation.
EOF

cat > /home/player/radio/transmission.txt << 'EOF'
[TRANSMISSION INTERCEPTÉE — FRAGMENTÉE]

"...le docteur a verrouillé... /root/coffre... 
 ...un outil sur le système peut... privilèges...
 ...cherchez les binaires... permissions spéciales..."

[FIN DE TRANSMISSION]
EOF

cat > /home/player/MISSION.txt << 'EOF'
=== MISSION : LE TERMINAL FANTÔME ===

Le Docteur Haddad a verrouillé ses notes dans /root/coffre/.
Vous n'avez pas les droits pour y accéder directement.

Mais certains outils laissés sur la base tournaient avec
des privilèges root. L'un d'eux est encore présent sur le système.

Trouvez-le. Utilisez-le.

Indice : les fichiers avec des permissions spéciales
peuvent être trouvés avec la commande find.
EOF

# --- Binaire setuid : copie de cat renommée, appartenant à root ---
cp /bin/cat /usr/local/bin/diagnostic
chown root:root /usr/local/bin/diagnostic
chmod u+s /usr/local/bin/diagnostic  # setuid bit

echo "[setup] Challenge Expert prêt ✓"
echo "[setup] Binary setuid : /usr/local/bin/diagnostic"
echo "[setup] Flag : /root/coffre/flag.txt"