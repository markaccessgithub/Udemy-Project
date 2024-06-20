from flask import Flask, render_template
import sqlite3

app = Flask(__name__)

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


