FROM tsl0922/ttyd:latest

RUN useradd -m -s /bin/bash player && \
    echo "player:arctique" | chpasswd

COPY setup.sh /tmp/setup.sh
RUN chmod +x /tmp/setup.sh && bash /tmp/setup.sh

# Message de bienvenue au login
RUN echo 'CYAN="\e[36m"; RED="\e[1;31m"; BOLD="\e[1;37m"; RESET="\e[0m"' >> /home/player/.bashrc && \
    echo 'echo ""' >> /home/player/.bashrc && \
    echo 'echo -e "${CYAN}╔══════════════════════════════════════════╗${RESET}"' >> /home/player/.bashrc && \
    echo 'echo -e "${CYAN}║${RESET}   ${BOLD}EXPÉDITION POLAIRE — Challenge 1${RESET}       ${CYAN}║${RESET}"' >> /home/player/.bashrc && \
    echo 'echo -e "${CYAN}║${RESET}   Le Journal du Capitaine                ${CYAN}║${RESET}"' >> /home/player/.bashrc && \
    echo 'echo -e "${CYAN}╚══════════════════════════════════════════╝${RESET}"' >> /home/player/.bashrc && \
    echo 'echo ""' >> /home/player/.bashrc && \
    echo 'echo -e "Vous êtes dans votre dossier de départ."' >> /home/player/.bashrc && \
    echo 'echo -e "Tapez  ${RED}ls${RESET}  pour voir ce qui vous entoure."' >> /home/player/.bashrc && \
    echo 'echo -e "Tapez  ${RED}cat NOM_FICHIER${RESET}  pour voir ce que ce dernier contient."' >> /home/player/.bashrc && \
    echo 'echo -e "Vous devriez commencer par lire  ${RED}LISEZ_MOI.txt${RESET}."' >> /home/player/.bashrc && \
    echo 'echo ""' >> /home/player/.bashrc && \
    echo 'cd /home/player' >> /home/player/.bashrc

USER player
# WORKDIR /home/player

EXPOSE 7681
CMD ["ttyd", "--once", "-W", "-p", "7681", "/bin/bash"]