FROM tsl0922/ttyd:latest

RUN apt-get update && apt-get install -y \
    bash \
    coreutils \
    findutils \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash player && \
    echo "player:arctique" | chpasswd

COPY setup.sh /tmp/setup.sh
RUN chmod +x /tmp/setup.sh && bash /tmp/setup.sh

# Message de bienvenue
RUN CYAN="\e[36m"; RED="\e[1;31m"; BOLD="\e[1;37m"; RESET="\e[0m" && \
    echo 'CYAN="\e[36m"; RED="\e[1;31m"; BOLD="\e[1;37m"; RESET="\e[0m"' >> /home/player/.bashrc && \
    echo 'echo ""' >> /home/player/.bashrc && \
    echo 'echo -e "${CYAN}╔══════════════════════════════════════════╗${RESET}"' >> /home/player/.bashrc && \
    echo 'echo -e "${CYAN}║${RESET}   ${BOLD}EXPÉDITION POLAIRE — Challenge EXPERT${RESET}  ${CYAN}║${RESET}"' >> /home/player/.bashrc && \
    echo 'echo -e "${CYAN}║${RESET}   Le Terminal Fantôme                   ${CYAN}║${RESET}"' >> /home/player/.bashrc && \
    echo 'echo -e "${CYAN}╚══════════════════════════════════════════╝${RESET}"' >> /home/player/.bashrc && \
    echo 'echo ""' >> /home/player/.bashrc && \
    echo 'echo -e "Commencez par lire  ${RED}MISSION.txt${RESET}."' >> /home/player/.bashrc && \
    echo 'echo ""' >> /home/player/.bashrc && \
    echo 'cd /home/player' >> /home/player/.bashrc

USER player
# WORKDIR /home/player

EXPOSE 7681
CMD ["ttyd", "--once", "-W", "-p", "7681", "/bin/bash"]