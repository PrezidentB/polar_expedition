from flask import Flask, redirect, request, send_from_directory, make_response
import docker
import random
import string
import threading

app = Flask(__name__, static_folder="static")
client = docker.from_env()
app.logger.setLevel("INFO")

def random_id():
    return ''.join(random.choices(string.ascii_lowercase + string.digits, k=8))

def find_free_port():
    import socket
    with socket.socket() as s:
        s.bind(('', 0))
        return s.getsockname()[1]

def watch_container(name):
    """Supprime le conteneur dès qu'il s'arrête"""
    def _watch():
        try:
            c = client.containers.get(name)
            c.wait()  # bloque jusqu'à l'arrêt du conteneur
            c.remove(force=True)
            app.logger.info(f"[watch] {name} supprimé après déconnexion")
        except Exception as e:
            app.logger.info(f"[watch] erreur sur {name} : already removed from option \"--once\" on ttyd.")
    threading.Thread(target=_watch, daemon=True).start()


@app.route("/challenge/<int:num>")
def dispatch(num):
    if num not in [1, 2, 3]:
        return "Challenge inexistant", 404

    image = f"polar-challenge{num}"
    random_num = random_id()
    name = f"player-c{num}-{random_num}"
    port = find_free_port()

    try:
        client.containers.run(
            image,
            detach=True,
            name=name,
            hostname=f"arctique-{num}",
            ports={"7681/tcp": port},
            auto_remove=True,
        )
        watch_container(name)
        app.logger.info(f"[dispatch] {name} → port {port}")

        host = request.host.split(":")[0]
        return redirect(f"http://{host}:{port}", code=302)

    except Exception as e:
        app.logger.error(f"[dispatch] erreur sur {name} : {e}")
        return f"Erreur : {e}", 500

@app.route("/")
def index():
    response = make_response(send_from_directory("static", "index.html"))
    response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    return response


app.run(host="0.0.0.0", port=5000)