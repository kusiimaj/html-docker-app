from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return '''<h1>Inches to Centimeters Converter</h1>
              <p>Use the endpoint <b>/convert?inches=VALUE</b> to convert inches to centimeters.</p>'''

@app.route('/convert', methods=['GET'])
def convert():
    try:
        inches = float(request.args.get('inches'))
        cm = inches * 2.54
        return jsonify({"inches": inches, "centimeters": cm})
    except (TypeError, ValueError):
        return jsonify({"error": "Invalid input. Provide a valid number."}), 400

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
