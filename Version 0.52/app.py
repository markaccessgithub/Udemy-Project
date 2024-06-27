from flask import Flask, render_template, request, redirect, url_for
import sqlite3
import hashlib

app = Flask(__name__)

@app.route('/')
@app.route("/home")
def home():
    return render_template("home.html", logged_in = False)

@app.route("/courses")
def courses():
    allCourses = [(1, "Lego Marvels"), (2, "GTA V")]
    return render_template("courses.html", courses=allCourses)

@app.route('/welcome', methods=['GET', "POST"])
def login():
    if request.method == "POST":
        try:
            name = request.form['username']
            password = request.form['userpassword']
            print("SIGN UP reached")
            with sqlite3.connect("udemy.db") as conn:
                cursor = conn.cursor()
                res = cursor.execute("SELECT User_Name FROM user;")
                names = res.fetchall()
                for i in range(len(names)):
                    if names[i][0] == name :
                        return render_template('welcome.html')
                    else:
                        with sqlite3.connect("./udemy.db") as conn:
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
            print("LOGIN reached")
            name = request.form['name']
            password = request.form['password']
            with sqlite3.connect("./udemy.db") as conn:
                cursor = conn.cursor()
                res = cursor.execute("SELECT User_Name FROM user")
                names = res.fetchall()
                res = cursor.execute("SELECT User_Password FROM user")
                passwords = res.fetchall()
                hash_password = hashlib.sha256(password.encode()).hexdigest()
                count = 0
                for i in range(len(names)):
                    if name in names[i][0]:
                        location = count
                    count += 1
            
                print("Password Check")

                if hash_password == passwords[location][0]:
                    print("Password Check Passed")
                    return render_template("home.html", username = name, logged_in = True)
            
                else:
                    print("Password check Failed")
                    return render_template("error.html")
                return render_template("welcome.html")
    else:
        return render_template("welcome.html")
    return render_template("welcome.html")



@app.route("/user")
def user():
    return render_template("user.html")


if __name__ == "__main__":
    app.run()

