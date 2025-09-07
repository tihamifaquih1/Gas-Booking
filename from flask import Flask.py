from flask import Flask

app = Flask(__name__)

@app.route('/')
def happy_birthday():
    name = "Alice"
    return "Happy Birthday, {}!".format(name)

if __name__ == '__main__':
    app.run()
