from flask import Flask, request
from flask_restful import Api #vet ikke om man trenger dette

app = Flask(__name__)
api = Api(app)

@app.route('/', methods=['GET']) 
def allItems():
    pass

@app.route('/api/item/<int:item_id>', methods=['GET']) 
def oneItem():
    pass

@app.route('/api/basket', methods=['GET']) #antall varer
def itemsInCart():
    pass

@app.route('/api/checkout', methods=['GET']) #alle varer
def allItemsInBasket():
    pass

@app.route('/api/order_complete', methods=['GET']) 
def orderComplete():
    pass


if __name__ == "__main__":
    app.run()