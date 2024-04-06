from flask import Flask, request, jsonify
app = Flask(__name__)

@app.route('/api/process-payment', methods=['POST'])
def process_payment():
    data = request.json
    print(f"Processing payment for {data['amount']}...")
    return jsonify({"status": "success", "message": "Payment processed successfully!"})

if __name__ == '__main__':
    app.run(debug=True, port=5000)
