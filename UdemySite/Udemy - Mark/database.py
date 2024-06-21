import sqlite3
import hashlib

names = ["Luke", "Jack", "Matthew", "Jim", "Reuben"]
emails = ["Luke@gmail.com", "Jack@gmail.com", "Matthew@gmail.com", "Jim@gmail.com", "Reuben@gmail.com"]
passwords = ["LukeIsGreat", "JackIsGreat", "MatthewIsGreat", "JimIsGreat", "ReubenIsGreat"]

for i in range(len(names)):
    with sqlite3.connect("new.db") as conn:
            cursor = conn.cursor()
            cursor.execute(
                "INSERT INTO USERS (name, email, password) VALUES (?, ?, ?)", 
                (hashlib.sha256(names[i].encode()).hexdigest(), 
                 hashlib.sha256(emails[i].encode()).hexdigest(), 
                 hashlib.sha256(passwords[i].encode()).hexdigest()
                )
            )
            conn.commit()

            