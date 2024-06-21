import sqlite3
import hashlib

def init_db():
    with sqlite3.connect('udemy.db') as conn:
        conn.execute('''
            CREATE TABLE user (
                User_Id INT,
                User_Name TEXT,
                User_Password TEXT,
                User_Email TEXT,
                User_Access INT
           )
        
        ''')


with sqlite3.connect('udemy.db') as conn:
    conn.execute("DROP TABLE user;")
    conn.commit()
init_db()

name = "Mark"
password = "jim"
email = "mark.gibson.989@accesscreative.ac.uk"

with sqlite3.connect('udemy.db') as conn:
    cursor = conn.cursor()

    cursor.execute(
        "INSERT INTO user (User_Id, User_Name, User_Password, User_Email, User_Access) VALUES (?,?,?,?,?)", 
        ((1), name, hashlib.sha256(password.encode()).hexdigest(), email, 1)
        )
    conn.commit()