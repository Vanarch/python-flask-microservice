import os
from api import app, db

db_path = os.path.join('instance', 'database.db')

if os.path.exists(db_path):
    os.remove(db_path)

with app.app_context():
    db.create_all()
