from flask import Flask, request
from flask_restful import Api #vet ikke om man trenger dette
import flask 

import mysql.connector #pip install mysql-connector-python

mysql_user = 'user'
mysql_pwd  = 'G1f3HiAq45'
mysql_host = 'mysql1'
mysql_db   = 'shopDB'

mydb = mysql.connector.connect(user = mysql_user, password = mysql_pwd, host = mysql_host,  database = mysql_db)

mycursor = mydb.cursor()
mycursor.execute("SELECT * FROM plants")
myresult = mycursor.fetchall()

app = Flask(__name__, static_folder="/var/fullstack/frontend", static_url_path="")
api = Api(app)

@app.route('/', defaults={'path': 'index.html'}) 
@app.route('/<path>')
def serve_page(path):
    return flask.send_from_directory('/var/fullstack/frontend', path)

@app.route('/api/users', methods=['GET'])
def get_users():
    print("Requested users")
    mycursor = mydb.cursor()
    mycursor.execute("SELECT * FROM plants")
    myresult = mycursor.fetchall()
    return flask.jsonify(myresult)

'''@app.route('/api/item/<int:item_id>', methods=['GET']) 
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
    pass'''

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0")
    mydb.close()