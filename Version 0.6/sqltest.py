import sqlite3
import hashlib

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

            print(marvel)
            print(batman)
            print(gta)
            print(rdr2)