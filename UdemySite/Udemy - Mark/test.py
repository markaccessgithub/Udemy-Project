import hashlib

while True:
    val = input("Input a value: ")
    print(f"Value: {val}\n Hashed Value: {hashlib.sha256(val.encode()).hexdigest()}")