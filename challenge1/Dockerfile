FROM tsl0922/ttyd:latest

RUN useradd -m -s /bin/bash player && \
    echo "player:arctique" | chpasswd

COPY setup.sh /tmp/setup.sh
RUN chmod +x /tmp/setup.sh && bash /tmp/setup.sh

# Message de bienvenue au login
RUN echo 'echo ""' >> /home/player/.bashrc && \
    echo 'echo "╔══════════════════════════════════════════╗"' >> /home/player/.bashrc && \
    echo 'echo "║   EXPÉDITION POLAIRE — Challenge 1       ║"' >> /home/player/.bashrc && \
    echo 'echo "║   Le Journal du Capitaine                ║"' >> /home/player/.bashrc && \
    echo 'echo "╚══════════════════════════════════════════╝"' >> /home/player/.bashrc && \
    echo 'echo ""' >> /home/player/.bashrc && \
    echo 'echo "Vous êtes dans votre dossier de départ."' >> /home/player/.bashrc && \
    echo 'echo "Tapez  ls  pour voir ce qui vous entoure."' >> /home/player/.bashrc && \
    echo 'echo "Tapez  cat  NOM_FICHIER  pour voir ce que ce dernier contient."' >> /home/player/.bashrc && \
    echo 'echo ""' >> /home/player/.bashrc && \
    echo 'cd /home/player' >> /home/player/.bashrc

USER player
# WORKDIR /home/player

EXPOSE 7681
CMD ["ttyd", "--once", "-W", "-p", "7681", "/bin/bash"]