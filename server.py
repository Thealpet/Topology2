from flask import Flask, request
from flask_restful import Api #vet ikke om man trenger dette

app = Flask(__name__)
api = Api(app)



if __name__ == "__main__":
    app.run()