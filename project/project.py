from flask import Flask, render_template

config = {
    "DEBUG": True  # run app in debug mode
}

app = Flask(__name__)

@app.route('/')
def hello_world():
  return render_template('index.html')