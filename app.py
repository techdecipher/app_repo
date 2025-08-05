from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Flask app running from Docker on EC2!"
