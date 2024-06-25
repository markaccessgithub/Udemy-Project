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
    return render_template("home.html")

@app.route("/courses")
def courses():
    allCourses = [(1, "Lego Marvels"), (2, "GTA V")]
    return render_template("courses.html", courses=allCourses)

#@app.route('/signup', methods=['GET', 'POST'])
    def sign_up():
        if request.method == 'POST':
            name = request.form['username']
            password = request.form['userpassword']
        print("SIGN UP")
        with sqlite3.connect("udemy.db") as conn:
            cursor = conn.cursor()
            res = cursor.execute("SELECT User_Name FROM user;")
            names = res.fetchall()
            for i in range(len(names)):
                if names[i][0] == name:
                    return render_template('sign_up.html')
                else:
                    with sqlite3.connect("udemy.db") as conn:
                        cursor = conn.cursor()
                        res = cursor.execute("SELECT User_Id FROM user;")
                        list = res.fetchall()
                        id = list[-1][0]
                        cursor.execute(
                            "INSERT INTO user (User_Id, User_Name, User_Password, User_Access) VALUES (?,?,?,?)", 
                            ((id+1), name, hashlib.sha256(password.encode()).hexdigest(), 0)
                            )
                        conn.commit()
                    return redirect(url_for('login'))
    return render_template('welcome.html')

@app.route('/welcome', methods=['GET', "POST"])
def login():
    if request.method == "POST":
        print("ARGHGhHHHHH")
        try:
            name = request.form['username']
            password = request.form['userpassword']
            print("SIGN UP")
            with sqlite3.connect("udemy.db") as conn:
                cursor = conn.cursor()
                res = cursor.execute("SELECT User_Name FROM user;")
                names = res.fetchall()
                for i in range(len(names)):
                    if names[i][0] == name:
                        return render_template('welcome.html')
                    else:
                        with sqlite3.connect("udemy.db") as conn:
                            cursor = conn.cursor()
                            res = cursor.execute("SELECT User_Id FROM user;")
                            list = res.fetchall()
                            id = list[-1][0]
                            cursor.execute(
                                "INSERT INTO user (User_Id, User_Name, User_Password, User_Access) VALUES (?,?,?,?)", 
                                ((id+1), name, hashlib.sha256(password.encode()).hexdigest(), 0)
                                )
                            conn.commit()
                        return render_template('welcome.html')
            return render_template('welcome.html')
    
        except:
            name = request.form['name']
            password = request.form['password']
            print("LOG IN")

            with sqlite3.connect("udemy.db") as conn:
                cursor = conn.cursor()
                res = cursor.execute("SELECT User_Name FROM user")
                names = res.fetchall()
                res = cursor.execute("SELECT User_Password FROM user")
                passwords = res.fetchall()

                print(names)
                hash_password = hashlib.sha256(password.encode()).hexdigest()
                count = 0
                for i in range(len(names)):
                    if name in names[i][0]:
                        location = count
                    count += 1

                if hash_password == passwords[location][0]:
                    return render_template("home.html", username = name)

            return render_template("welcome.html")
        else:
            return render_template("welcome.html")
    return render_template("welcome.html")



@app.route("/user")
def user():
    return render_template("user.html")


if __name__ == "__main__":
    app.run()


