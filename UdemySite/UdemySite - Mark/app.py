from flask import Flask, render_template
import sqlite3


con = sqlite3.connect("Database.db")
cur = con.cursor()




app = Flask(__name__)

def login(user,email,password):
    test = cur.execute("CREATE TABLE IF NOT EXISTS test()") 

    
    



#---------------------------------------------------------------------------------------------------



@app.route('/')
@app.route("/home")
def home():
    return render_template("index.html", name = "Mark")

@app.route("/courses")
def courses():
    allCourses = [(1, "Lego Marvels"), (2, "GTA V")]
    return render_template("courses.html", courses=allCourses)

@app.route("/login")
def login():

    return render_template("login.html", )

@app.route("/user")
def user():
    allUsers = [(1,"Mark"), (2,"Luke"), (3,"Jack"), (4, "Matthew")]
    return render_template("user.html", users=allUsers )


if __name__ == "__main__":
    app.run()


