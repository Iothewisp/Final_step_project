from flask import Flask, request
import socket

app = Flask(__name__)

@app.route('/')
def index():
    ip = request.remote_addr
    hostname = socket.gethostname()
    return f"Hello from pod with IP: {ip}, hostname: {hostname}", 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
