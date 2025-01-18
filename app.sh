#!/bin/bash

# Set environment variables
export FLASK_APP=app.py
export FLASK_ENV=production

# Install necessary Python packages (if needed)
echo "Installing required Python packages..."
pip install -r requirements.txt

# Start the Flask application
echo "Starting the Guestbook application..."
flask run --host=0.0.0.0 --port=5000

