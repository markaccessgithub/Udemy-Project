-- DDL

CREATE TABLE user(
    User_Id INTEGER PRIMARY KEY,
    User_Name TEXT,
    User_Phone INTEGER,
    User_Email TEXT);

CREATE TABLE courses(
    Course_Id INTEGER PRIMARY KEY,
    Course_Name TEXT,
    courses_description TEXT
);

CREATE TABLE enrolment(
    Enrolment_Id INTEGER PRIMARY KEY,
    Course_Id INT,
    User_Id INT,
    FOREIGN KEY (Course_Id) REFERENCES courses(Course_Id)
    FOREIGN KEY (User_Id) REFERENCES user(User_Id)
);

CREATE TABLE courses_description(
    Course_Id INT,
    courses_description TEXT,
    FOREIGN KEY (Course_Id) REFERENCES courses(Course_Id)
);

CREATE TABLE individual_tasks(
    Task_Id INT PRIMARY KEY,
    Task_Type TEXT,
    Task_Description TEXT,
    Task_Code TEXT,
    Course_Id INT,
    FOREIGN KEY (Course_Id) REFERENCES courses(Course_Id)
);

-- DML

INSERT INTO user VALUES (1, 'Mat', 12345612345, 'Mat@gmail'), (2, 'Luke', 98657483921, 'Luke@gmail'), (3, 'Mark', 84753213982, 'Mark@gmail'), (4, 'Jack', 38475623491, 'Jack@gmail');

INSERT INTO courses VALUES (1, 'LEGO Marvels', 'Learn cheat codes to unlock characters and vehicles'), (2, 'LEGO Batman', 'Learn cheat codes to unlock characters and vehicles');
INSERT INTO courses VALUES (3, 'GTA V', 'Learn specific sequences to unlock special abilities to use offline'), (4, 'Sims 4', 'Learn how to use the chat console to enter cheats codes to gain perks');

INSERT INTO enrolment VALUES (1, 2, 2), (2, 4, 2), (3, 3, 1), (4, 4, 3), (5, 1, 4);

INSERT INTO individual_tasks VALUES (0, 'Phone', 'Invincibility', '1-999-724-654-5537', 3);
INSERT INTO individual_tasks VALUES (1, 'Phone', 'Max Health & Armor', '1-999-887-853', 3);
INSERT INTO individual_tasks VALUES (2, 'Phone', 'Recharge Special Ability', '1-999-769-3787', 3);
INSERT INTO individual_tasks VALUES (3, 'Phone', 'Super Jump', '1-999-467-8648', 3);
INSERT INTO individual_tasks VALUES (4, 'Phone', 'Run Faster', '1-999-228-8463', 3);
INSERT INTO individual_tasks VALUES (5, 'Phone', 'Swim Faster', '1-999-468-44557', 3);
INSERT INTO individual_tasks VALUES (6, 'Phone', 'Skyfall', '1-999-759-3255', 3);
INSERT INTO individual_tasks VALUES (7, 'Phone', 'Slow Motion Aim', '1-999-332-3393', 3);
INSERT INTO individual_tasks VALUES (8, 'Phone', 'Moon Gravity', '1-999-356-2837', 3);
INSERT INTO individual_tasks VALUES (9, 'Phone', 'Drunk Mode', '1-999-547-861', 3);
INSERT INTO individual_tasks VALUES (10, 'Phone', 'Explosive Melee Attacks', '1-999-4684-2637', 3);
INSERT INTO individual_tasks VALUES (11, 'Phone', 'Explosive Ammo Rounds', '1-999-444-439', 3);
INSERT INTO individual_tasks VALUES (12, 'Phone', 'Flaming Ammo Rounds', '1-999-462-363-4279', 3);
INSERT INTO individual_tasks VALUES (13, 'Phone', 'Give Parachute', '1-999-759-3483', 3);
INSERT INTO individual_tasks VALUES (14, 'Phone', 'Change Weather', '1-999-625-348-7246', 3);
INSERT INTO individual_tasks VALUES (15, 'Phone', 'Slippery Cars', '1-999-766-9329', 3);
INSERT INTO individual_tasks VALUES (16, 'Phone', 'Spawn Buzzard Attack Helicopter', '1-999-289-9633', 3);
INSERT INTO individual_tasks VALUES (17, 'Phone', 'Spawn Stunt Plane', '1-999-2276-78676', 3);
INSERT INTO individual_tasks VALUES (18, 'Phone', 'Spawn Duster', '1-999-359-77729', 3);
INSERT INTO individual_tasks VALUES (19, 'Phone', 'Spawn Comet', '1-999-266-38', 3);
INSERT INTO individual_tasks VALUES (20, 'Phone', 'Spawn Rapid GT', '1-999-727-4348', 3);
INSERT INTO individual_tasks VALUES (21, 'Phone', 'Spawn PCJ-600 Motorcycle', '1-999-762-538', 3);
INSERT INTO individual_tasks VALUES (22, 'Phone', 'Spawn Sanchez Dirt Bike', '1-999-633-7623', 3);
INSERT INTO individual_tasks VALUES (23, 'Phone', 'Spawn Trashmaster', '1-999-872-433', 3);
INSERT INTO individual_tasks VALUES (24, 'Phone', 'Spawn Stretch Limo', '1-999-846-39663', 3);
INSERT INTO individual_tasks VALUES (25, 'Phone', 'Spawn BMX Bike', '1-999-226-348', 3);
INSERT INTO individual_tasks VALUES (26, 'Vehicle', 'Spawn Buzzard Attack Helicopter', 'BUZZOFF', 3);
INSERT INTO individual_tasks VALUES (27, 'Vehicle', 'Spawn Stunt Plane', 'BARNSTORM', 3);
INSERT INTO individual_tasks VALUES (28, 'Vehicle', 'Spawn Duster', 'FLYSPRAY', 3);
INSERT INTO individual_tasks VALUES (29, 'Vehicle', 'Spawn Comet', 'COMET', 3);
INSERT INTO individual_tasks VALUES (30, 'Vehicle', 'Spawn Rapid GT', 'RAPIDGT', 3);
INSERT INTO individual_tasks VALUES (31, 'Vehicle', 'Spawn PCJ-600 Motorcycle', 'ROCKET', 3);
INSERT INTO individual_tasks VALUES (32, 'Vehicle', 'Spawn Sanchez Dirt Bike', 'OFFROAD', 3);
INSERT INTO individual_tasks VALUES (33, 'Vehicle', 'Spawn Trashmaster', 'TRASHED', 3);
INSERT INTO individual_tasks VALUES (34, 'Vehicle', 'Spawn Stretch Limo', 'VINEWOOD', 3);
INSERT INTO individual_tasks VALUES (35, 'Vehicle', 'Spawn BMX Bike', 'BANDIT', 3);
INSERT INTO individual_tasks VALUES (36, 'Player Ability', 'Invincibility (5 min)', 'PAINKILLER', 3);
INSERT INTO individual_tasks VALUES (37, 'Player Ability', 'Max Health & Armor', 'TURTLE', 3);
INSERT INTO individual_tasks VALUES (38, 'Player Ability', 'Recharge Special Ability', 'POWERUP', 3);
INSERT INTO individual_tasks VALUES (39, 'Player Ability', 'Super Jump', 'HOPTOIT', 3);
INSERT INTO individual_tasks VALUES (40, 'Player Ability', 'Run Faster', 'CATCHME', 3);
INSERT INTO individual_tasks VALUES (41, 'Player Ability', 'Swim Faster', 'GOTGILLS', 3);
INSERT INTO individual_tasks VALUES (42, 'Player Ability', 'Skyfall', 'SKYFALL', 3);
INSERT INTO individual_tasks VALUES (43, 'Player Ability', 'Slow Motion Aim', 'DEADEYE', 3);
INSERT INTO individual_tasks VALUES (44, 'Player Ability', 'Moon Gravity', 'FLOATER', 3);
INSERT INTO individual_tasks VALUES (45, 'Player Ability', 'Drunk Mode', 'LIQUOR', 3);
INSERT INTO individual_tasks VALUES (46, 'Player Ability', 'Explosive Melee Attacks', 'HOTHANDS', 3);
INSERT INTO individual_tasks VALUES (47, 'Player Ability', 'Explosive Ammo Rounds', 'HIGHEX', 3);
INSERT INTO individual_tasks VALUES (48, 'Player Ability', 'Flaming Ammo Rounds', 'INCENDIARY', 3);
INSERT INTO individual_tasks VALUES (49, 'Player Ability', 'Give Parachute', 'SKYDIVE', 3);
INSERT INTO individual_tasks VALUES (50, 'Player Ability', 'Change Weather', 'MAKEITRAIN', 3);
INSERT INTO individual_tasks VALUES (51, 'Player Ability', 'Slippery Cars', 'SNOWDAY', 3);




--DQL

SELECT * FROM courses;

SELECT * FROM user;

