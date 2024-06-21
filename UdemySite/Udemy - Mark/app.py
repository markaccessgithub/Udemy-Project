from flask import Flask, render_template, request, redirect, url_for
import sqlite3
import hashlib

app = Flask(__name__)

#def init_db():
   # with sqlite3.connect('new.db') as conn:
       # conn.execute('''
          #  CREATE TABLE IF NOT EXISTS USERS (
          #      name TEXT,
           #     email TEXT,
          #      password TEXT
           # )
       # ''')



#init_db()



@app.route('/')
@app.route("/home")
def home():
    return render_template("index.html", name = "Mark")

@app.route("/courses")
def courses():
    allCourses = [(1, "Lego Marvels"), (2, "GTA V")]
    return render_template("courses.html", courses=allCourses)

@app.route('/sign_up', methods=['GET', 'POST'])
def sign_up():
    if request.method == 'POST':
        name = request.form['name']
        email = request.form['email']
        password = request.form['password']

        with sqlite3.connect("new.db") as conn:
            cursor = conn.cursor()
            cursor.execute(
                "INSERT INTO USERS (name, email, password) VALUES (?, ?, ?)", 
                (hashlib.sha256(name.encode()).hexdigest(), 
                 hashlib.sha256(email.encode()).hexdigest(), 
                 hashlib.sha256(password.encode()).hexdigest()
                )
            )
            conn.commit()
        return redirect(url_for('login'))
    return render_template('sign_up.html')

@app.route('/login', methods=['GET', "POST"])
def login():
    if request.method == "POST":
        name = request.form['name']
        password = request.form['password']

        with sqlite3.connect("new.db") as conn:
            cursor = conn.cursor()
            res = cursor.execute("SELECT name FROM USERS")
            names = res.fetchall()
            res = cursor.execute("SELECT password FROM USERS")
            passwords = res.fetchall()

            print(names)

            hash_name = hashlib.sha256(name.encode()).hexdigest()
            hash_password = hashlib.sha256(password.encode()).hexdigest()
            count = 0
            for i in range(len(names)):
                if hash_name in names[i][0]:
                    location = count
                count += 1

            if hash_password == passwords[location][0]:
                return render_template("user.html", username = name)

        return render_template("login.html")
    else:

        return render_template("login.html")


@app.route("/user")
def user():
    allUsers = [(1,"Mark"), (2,"Luke"), (3,"Jack"), (4, "Matthew")]
    return render_template("user.html", users=allUsers )


if __name__ == "__main__":
    app.run()


