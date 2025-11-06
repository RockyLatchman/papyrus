from flask import Flask, render_template, redirect, url_for, session
from dotenv import load_dotenv
from flask_wtf import CSRFProtect
from pymongo import MongoClient
from bunnet import init_bunnet
from models import Library, Patrons, Staff, Checkouts, Copies, Location, Books
import os

app = Flask(__name__)
app.config['SECRET_KEY'] = os.environ.get('SECRET_KEY')
app.config['DATABASE_URL'] = os.environ.get('DATABASE_URL')
csrf_token = CSRFProtect(app)
client = MongoClient(app.config['DATABASE_URL'])
init_bunnet(database=client.db_name, document_models=[Library, Patrons, Staff])

@app.route('/', methods=['GET', 'POST'])
def index():
    return render_template('index.j2')

@app.route('/register', methods=['GET', 'POST'])
def register():
    return render_template('register.j2')

@app.route('/library', methods=['GET', 'POST'])
def add_library():
    return render_template('staff/library.j2')

@app.route('/library/signin', methods=['GET', 'POST'])
def library_signin():
    pass

@app.route('/admin/dashboard')
def admin_dashboard():
    return render_template('staff/dashboard.j2')

@app.route('/admin/catalog')
def library_catalog():
    return render_template('staff/catalog.j2')

@app.route('/admin/patrons')
def library_patrons():
    return render_template('staff/patrons.j2')

@app.route('/admin/staff')
def library_staff():
    return render_template('staff/staff.j2')

@app.route('/admin/messages')
def staff_messages():
    return render_template('staff/messages.j2')

@app.route('/admin/settings')
def staff_settings():
    return render_template('staff/settings.j2')

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
   return render_template('patrons/messages.j2')

@app.route('/settings')
def settings():
    pass

@app.route('/signout')
def signout():
    pass


if __name__ == '__main__':
    app.run(debug=True)
