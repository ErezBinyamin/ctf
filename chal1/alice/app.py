# app.py
from flask import Flask

app = Flask(__name__)

@app.route("/")
def flag():
    return "<p>flag{that_was_easy!}</p>"
