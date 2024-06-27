import sqlite3
import hashlib

with sqlite3.connect("udemy.db") as conn:
    cursor = conn.cursor()
    res = cursor.execute("SELECT User_Id FROM user WHERE User_Name = 'Mark' ")
    id = res.fetchall()

    cursor.execute(f"UPDATE user SET User_Name = 'JIM' WHERE User_Id = {id[0][0]}")
