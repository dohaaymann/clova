from flask import Flask, request, jsonify
import numpy as np
from PIL import Image
import tensorflow as tf

app = Flask(__name__)

# Load the pre-trained model
model = tf.keras.models.load_model('model7.h5', compile=False)

label_map = {0: "your ultrasound image is abnormal", 1: "your ultrasound image is normal"}

# Define a function to preprocess the image
def preprocess_image(image):
    img = Image.open(image)
    img = img.resize((224, 224))
    img_array = np.array(img) / 255.0
    img_array = np.expand_dims(img_array, axis=0)
    return img_array

# Define a function to map predicted values to labels
def get_label(val):
    return label_map.get(val, "Unknown")

@app.route('/api', methods=['POST'])
def predict():
    if request.method == 'POST':
        # Check if an image file is present in the request
        if 'image' not in request.files:
            return jsonify({'error': 'No image found in request'}), 400

        image_file = request.files['image']

        # Check if the file is empty
        if image_file.filename == '':
            return jsonify({'error': 'No image selected for uploading'}), 600

        # Check if the file is an allowed format
        allowed_extensions = {'png', 'jpg', 'jpeg'}
        if '.' not in image_file.filename or image_file.filename.split('.')[-1].lower() not in allowed_extensions:
            return jsonify({'error': 'Invalid image format. Only PNG, JPG, and JPEG are allowed.'}), 700

        try:
            image = preprocess_image(image_file)
            prediction = model.predict(image)
            result = get_label(np.argmax(prediction))
            return jsonify(result), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0',port=8000)
