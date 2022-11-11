from flask import Flask
app = Flask(__name__)

@app.route('/invoke', methods=['POST'])
def hello_world():
    import train

app.run(host="0.0.0.0", port=9091)