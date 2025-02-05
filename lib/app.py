from flask import Flask, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

recipes = [
    {"recipe_id": "1", "recipe_name": "Arap Tavası"},
    {"recipe_id": "2", "recipe_name": "Lahmacun"},
    {"recipe_id": "3", "recipe_name": "İskender"},
]

@app.route('/recipes', methods=['GET'])
def get_recipes():
    return jsonify({"recipes": recipes})

if __name__ == '__main__':
    app.run(debug=True)