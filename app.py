from flask import Flask, render_template, redirect, url_for, session
from dotenv import load_dotenv
from flask_wtf import CSRFProtect
from pymongo import MongoClient
from bunnet import init_bunnet
from models import Library, Patrons, Staff
import os

app = Flask(__name__)
app.config['SECRET_KEY'] = os.environ.get('SECRET_KEY')
app.config['DATABASE_URL'] =os.environ.get('DATABASE_URL')
csrf_token = CSRFProtect(app)
client = MongoClient(app.config['DATABASE_URL'])
init_bunnet(database=client.db_name, document_models=[Library, Patrons, Staff])

@app.route('/')
def index():
    pass

@app.route('/register')
def register():
    pass

@app.route('/library')
def add_library():
    pass

@app.route('/library/signin')
def library_signin():
    pass

@app.route('/admin/dashboard')
def admin_dashboard():
    pass

@app.route('/admin/catalog')
def library_catalog():
    pass

@app.route('/admin/patrons')
def library_patrons():
    pass

@app.route('/admin/staff')
def library_staff():
    pass

@app.route('/admin/messages')
def admin_messages():
    pass

@app.route('/admin/settings')
def staff_settings():
    pass

@app.route('/admin/signout')
def admin_signout():
    pass

@app.route('/catalog')
def catalog():
    pass

@app.route('/favorites')
def favorites():
    pass

@app.route('/messages')
def messages():
    pass

@app.route('/settings')
def settings():
    pass

@app.route('/signout')
def signout():
    pass


if __name__ == '__main__':
    app.run(debug=True)
