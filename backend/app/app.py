from flask import Flask, render_template, request, make_response, redirect
from flask_cors import CORS
import storage

app = Flask(__name__)
CORS(app)

@app.route("/v1/scannedItem", methods=["GET"])
def GetScannedItem():
    if request.method == "GET":
        item = storage.GetScannedItem()
        return item

@app.route("/v1/getRecipes", methods=["GET"])
def GetRecipes():
    if request.method == "GET":
        items = storage.GetRecipes()
        return items

@app.route("/v1/getInventory", methods=["GET"])
def GetInventory():
        if request.method == "GET":
                items = storage.GetInventory()
                return items

if __name__ == "__main__":
    app.run(debug=True)