FROM tsl0922/ttyd:latest

# Créer l'utilisateur joueur
RUN useradd -m -s /bin/bash player && \
    echo "player:arctique" | chpasswd

# Copier et exécuter le script de setup
COPY setup.sh /tmp/setup.sh
RUN chmod +x /tmp/setup.sh && bash /tmp/setup.sh

# Charger la variable d'environnement pour le joueur
ENV CODE_LABO="GLACE_PROFONDE_340"
ENV HINT_EREBUS="Les secrets sont parfois invisibles à première vue"

# Message de bienvenue au login
RUN echo 'echo ""' >> /home/player/.bashrc && \
    echo 'echo "╔══════════════════════════════════════════╗"' >> /home/player/.bashrc && \
    echo 'echo "║   EXPÉDITION POLAIRE — Challenge 2       ║"' >> /home/player/.bashrc && \
    echo 'echo "║   Les Secrets de la Glace                ║"' >> /home/player/.bashrc && \
    echo 'echo "╚══════════════════════════════════════════╝"' >> /home/player/.bashrc && \
    echo 'echo ""' >> /home/player/.bashrc && \
    echo 'echo "Vous pénétrez dans la base abandonnée EREBUS."' >> /home/player/.bashrc && \
    echo 'echo "Lisez le fichier MISSION.txt pour commencer."' >> /home/player/.bashrc && \
    echo 'echo "Tapez :  cat MISSION.txt"' >> /home/player/.bashrc && \
    echo 'echo ""' >> /home/player/.bashrc && \
    echo 'cd /home/player' >> /home/player/.bashrc

USER player
# WORKDIR /home/player

EXPOSE 7681
CMD ["ttyd", "-W", "-p", "7681", "/bin/bash"]
