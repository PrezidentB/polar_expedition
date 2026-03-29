from flask import Flask, redirect, request
import docker
import random
import string
import threading
import time

app = Flask(__name__)
client = docker.from_env()

def random_id():
    return ''.join(random.choices(string.ascii_lowercase + string.digits, k=8))

def find_free_port():
    import socket
    with socket.socket() as s:
        s.bind(('', 0))
        return s.getsockname()[1]

def cleanup_container(name, delay=3600):
    """Supprime le conteneur après 1h (durée max d'une session)"""
    def _delete():
        time.sleep(delay)
        try:
            c = client.containers.get(name)
            c.remove(force=True)
            print(f"[cleanup] {name} supprimé")
        except:
            pass
    threading.Thread(target=_delete, daemon=True).start()

@app.route("/challenge/<int:num>")
def dispatch(num):
    if num not in [1, 2]:
        return "Challenge inexistant", 404

    image = f"polar-challenge{num}"
    name = f"player-c{num}-{random_id()}"
    port = find_free_port()

    try:
        client.containers.run(
            image,
            detach=True,
            name=name,
            ports={"7681/tcp": port},
            auto_remove=True,
        )
        cleanup_container(name)
        print(f"[dispatch] {name} → port {port}")

        host = request.host.split(":")[0]
        return redirect(f"http://{host}:{port}", code=302)

    except Exception as e:
        return f"Erreur : {e}", 500

@app.route("/")
def index():
    return """
    <h2>🧊 Expédition Polaire</h2>
    <ul>
      <li><a href="/challenge/1">Challenge 1 — Le Journal du Capitaine</a></li>
      <li><a href="/challenge/2">Challenge 2 — Les Secrets de la Glace</a></li>
    </ul>
    """

app.run(host="0.0.0.0", port=5000)