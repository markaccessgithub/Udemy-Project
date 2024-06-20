import sqlite3

p_key = input("Primary Key")
name = input("Name: ")
phone = input("Phone number: ")
email = input ("Email: ")

conn = sqlite3.connect("udemyDatabase.db")

cur = conn.cursor()

query = f"INSERT INTO contacts VALUES ({p_key}, '{name}',{phone},'{email}')"

# cur.execute(query)

cur.execute(query)

res = cur.execute("SELECT * FROM contacts;").fetchall()

conn.commit()

print(res)


