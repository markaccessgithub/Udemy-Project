CREATE TABLE user(
    u_id INTEGER,
    u_name TEXT,
    u_age INTEGER
);


CREATE TABLE user(
    User_Id INTEGER PRIMARY KEY,
    User_Name TEXT,
    User_Phone INTEGER,
    User_Email TEXT);

CREATE TABLE courses(
    Course_Id INTEGER PRIMARY KEY,
    Course_Name TEXT);

CREATE TABLE enrolment(
    Enrolment_Id INTEGER PRIMARY KEY,
    Course_Id INT,
    User_Id INT,
    FOREIGN KEY (Course_Id) REFERENCES courses(Course_Id)
    FOREIGN KEY (User_Id) REFERENCES user(User_Id)
);

INSERT INTO user VALUES (1, 'Mat', 12345612345, 'Mat@gmail'), (2, 'Luke', 98657483921, 'Luke@gmail');

SELECT * FROM user;

INSERT INTO courses VALUES (1, 'LEGO Marvels'), (2, 'LEGO Batman'), (3, 'GTA IV');

SELECT * FROM courses;

