#!/usr/bin/env bash
# exit on error
set -o errexit

# Install Python dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Create necessary directories
mkdir -p static/uploads

# Create database
python << END
from app import app, db
with app.app_context():
    db.create_all()
END 