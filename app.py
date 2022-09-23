import os
from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"


@app.route("/yaw")
def kaw():
    return "<p>eh ya kemo!</p>"

app.run()