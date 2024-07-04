from flask import Flask, render_template, request, redirect, url_for, session
import sqlite3
from datetime import timedelta  
import hashlib

app = Flask(__name__)

with sqlite3.connect("udemy.db") as conn:
            cursor = conn.cursor()
            res = cursor.execute("SELECT * FROM individual_tasks WHERE Course_Id = 1 ")
            marvel = res.fetchall()
            cursor = conn.cursor()
            res = cursor.execute("SELECT * FROM individual_tasks WHERE Course_Id = 2 ")
            batman = res.fetchall()
            cursor = conn.cursor()
            res = cursor.execute("SELECT * FROM individual_tasks WHERE Course_Id = 3 ")
            gta = res.fetchall()
            cursor = conn.cursor()
            res = cursor.execute("SELECT * FROM individual_tasks WHERE Course_Id = 4 ")
            rdr2 = res.fetchall()
            



@app.route('/')
@app.route("/home", methods=['GET', 'POST'])
def home():
    if request.method == "POST":
        try:
            print()
            name = request.form["name"]
            old_username = request.form["username"]
            with sqlite3.connect("udemy.db") as conn:
                cursor = conn.cursor()
                res = cursor.execute(f"SELECT User_Id FROM user WHERE User_Name = '{old_username}'")
                id = res.fetchall()
                print(id)
                cursor.execute(f"UPDATE user SET User_Name = '{name}' WHERE User_Id = {id[0][0]}")
            
                return render_template("home.html", logged_in = True, username = name, lego_marvel = marvel, lego_batman = batman, gtav = gta, red_dead = rdr2)
        except:
            print("Error")
            return render_template("home.html", logged_in = False, lego_marvel = marvel, lego_batman = batman, gtav = gta, red_dead = rdr2 )
       
    else:
        print("HOME")
        return render_template("home.html", logged_in = False, lego_marvel = marvel, lego_batman = batman, gtav = gta, red_dead = rdr2 )

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
                                "INSERT INTO user (User_Id, User_Name, User_Password, User_Access) VALUES (?,?,?)", 
                                ((id+1), name, hashlib.sha256(password.encode()).hexdigest())
                                )
                            conn.commit()
                        return render_template('home.html', username = name, logged_in = True, lego_marvel = marvel, lego_batman = batman, gtav = gta, red_dead = rdr2)
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
                    return render_template("home.html", username = name, logged_in = True, lego_marvel = marvel, lego_batman = batman, gtav = gta, red_dead = rdr2)
            
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

