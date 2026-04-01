FROM tsl0922/ttyd:latest

# Créer l'utilisateur joueur
RUN useradd -m -s /bin/bash player && \
    echo "player:arctique" | chpasswd

RUN apt-get update && apt-get install -y --no-install-recommends \
    tree \
    && rm -rf /var/lib/apt/lists/*

# Copier et exécuter le script de setup
COPY setup.sh /tmp/setup.sh
RUN chmod +x /tmp/setup.sh && bash /tmp/setup.sh

# Charger la variable d'environnement pour le joueur
ENV CODE_LABO="BZHCTF{GLACE_PROFONDE}"
ENV HINT_EREBUS="Les secrets sont parfois invisibles à première vue"

# Message de bienvenue au login
RUN echo 'CYAN="\e[36m"; RED="\e[1;31m"; BOLD="\e[1;37m"; RESET="\e[0m"' >> /home/player/.bashrc && \
    echo 'echo -e "${CYAN}╔══════════════════════════════════════════╗${RESET}"' >> /home/player/.bashrc && \
    echo 'echo -e "${CYAN}║${RESET}   ${BOLD}EXPÉDITION POLAIRE — Challenge 2${RESET}       ${CYAN}║${RESET}"' >> /home/player/.bashrc && \
    echo 'echo -e "${CYAN}║${RESET}   Les Secrets de la Glace                ${CYAN}║${RESET}"' >> /home/player/.bashrc && \
    echo 'echo -e "${CYAN}╚══════════════════════════════════════════╝${RESET}"' >> /home/player/.bashrc && \
    echo 'echo ""' >> /home/player/.bashrc && \
    echo 'echo -e "${BOLD}Vous pénétrez dans la base abandonnée EREBUS.${RESET}"' >> /home/player/.bashrc && \
    echo 'echo -e "Lisez le fichier ${RED}MISSION.txt${RESET} pour commencer."' >> /home/player/.bashrc && \
    echo 'echo -e "Tapez :  ${RED}cat MISSION.txt${RESET}"' >> /home/player/.bashrc && \
    echo 'echo ""' >> /home/player/.bashrc && \
    echo 'cd /home/player' >> /home/player/.bashrc

USER player
# WORKDIR /home/player

EXPOSE 7681
CMD ["ttyd", "--once", "-W", "-p", "7681", "/bin/bash"]
