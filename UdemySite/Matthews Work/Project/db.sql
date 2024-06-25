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
    FOREIGN KEY (Course_Id) REFERENCES courses(Course_Id),
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
INSERT INTO individual_tasks VALUES (52, 'Character', 'Stan Lee', '7HWU4L', 1);
INSERT INTO individual_tasks VALUES (53, 'Character', 'Arnim Zola', 'N7KQ4T', 1);
INSERT INTO individual_tasks VALUES (54, 'Character', 'Beetle', 'KXFQ87', 1);
INSERT INTO individual_tasks VALUES (55, 'Character', 'Black Cat', 'P9OWL0', 1);
INSERT INTO individual_tasks VALUES (56, 'Character', 'Black Panther', 'J58RSS', 1);
INSERT INTO individual_tasks VALUES (57, 'Character', 'Blob', 'P8SEL9', 1);
INSERT INTO individual_tasks VALUES (58, 'Character', 'Carnage', 'AA0Z50', 1);
INSERT INTO individual_tasks VALUES (59, 'Character', 'Chase Stein', 'Q5E42T', 1);
INSERT INTO individual_tasks VALUES (60, 'Character', 'Curt Connors', 'S94766', 1);
INSERT INTO individual_tasks VALUES (61, 'Character', 'Darkstar', 'S94766', 1);
INSERT INTO individual_tasks VALUES (62, 'Character', 'Demolition Man', 'D5B7O3', 1);
INSERT INTO individual_tasks VALUES (63, 'Character', 'Diamond Girl', '3ZDB2W', 1);
INSERT INTO individual_tasks VALUES (64, 'Character', 'Fandral', 'XTIY22', 1);
INSERT INTO individual_tasks VALUES (65, 'Character', 'Green Goblin', 'V3ZZFN', 1);
INSERT INTO individual_tasks VALUES (66, 'Character', 'Hawkeye', 'AA0Z50', 1);
INSERT INTO individual_tasks VALUES (67, 'Character', 'Howard the Duck', '2NGSRZ', 1);
INSERT INTO individual_tasks VALUES (68, 'Character', 'Iron Man (Hulkbuster)', 'CK7SDS', 1);
INSERT INTO individual_tasks VALUES (69, 'Character', 'Loki', '5T3CQU', 1);
INSERT INTO individual_tasks VALUES (70, 'Character', 'Odin', 'ODIN', 1);
INSERT INTO individual_tasks VALUES (71, 'Character', 'Polaris', 'B7AA3K', 1);
INSERT INTO individual_tasks VALUES (72, 'Character', 'Red Hulk', '4U9M8Z', 1);
INSERT INTO individual_tasks VALUES (73, 'Character', 'Ronan the Accuser', 'QMGLE', 1);
INSERT INTO individual_tasks VALUES (74, 'Character', 'Squirrel Girl', 'CC9H39', 1);
INSERT INTO individual_tasks VALUES (75, 'Character', 'Thanos', '8HG9HC', 1);
INSERT INTO individual_tasks VALUES (76, 'Character', 'Thor', 'UUDDLRLRBA', 1);
INSERT INTO individual_tasks VALUES (77, 'Vehicle', 'Deadpool''s Scooter', 'G6RE7P', 1);
INSERT INTO individual_tasks VALUES (78, 'Vehicle', 'Hydra Tank (Marvel)', '8W8K2P', 1);
INSERT INTO individual_tasks VALUES (79, 'Vehicle', 'Spider Bike (Marvel)', 'SH9MZQ', 1);
INSERT INTO individual_tasks VALUES (80, 'Vehicle', 'Stark Jet (Marvel)', 'B7AA3K', 1);
INSERT INTO individual_tasks VALUES (52, 'Character', 'Alfred', 'ZAQ637', 1);
INSERT INTO individual_tasks VALUES (53, 'Character', 'Batgirl', 'JKR331', 1);
INSERT INTO individual_tasks VALUES (54, 'Character', 'Bruce Wayne', 'BDJ327', 1);
INSERT INTO individual_tasks VALUES (55, 'Character', 'Catwoman (Classic)', 'M1AAWW', 1);
INSERT INTO individual_tasks VALUES (56, 'Character', 'Clown Goon', 'HJK327', 1);
INSERT INTO individual_tasks VALUES (57, 'Character', 'Commissioner Gordon', 'DDP967', 1);
INSERT INTO individual_tasks VALUES (58, 'Character', 'Fishmonger', 'HGY748', 1);
INSERT INTO individual_tasks VALUES (59, 'Character', 'Freeze Girl', 'XVK541', 1);
INSERT INTO individual_tasks VALUES (60, 'Character', 'Freeze Henchman', 'NJL412', 1);
INSERT INTO individual_tasks VALUES (61, 'Character', 'The Joker (Tropical)', 'CCB199', 1);
INSERT INTO individual_tasks VALUES (62, 'Character', 'Joker Goon', 'UTF782', 1);
INSERT INTO individual_tasks VALUES (63, 'Character', 'Joker Henchman', 'YUN924', 1);
INSERT INTO individual_tasks VALUES (64, 'Character', 'LexBot', 'W49CSJ', 1);
INSERT INTO individual_tasks VALUES (65, 'Character', 'Mad Hatter', 'JCA283', 1);
INSERT INTO individual_tasks VALUES (66, 'Character', 'Man-Bat', 'NYU942', 1);
INSERT INTO individual_tasks VALUES (67, 'Character', 'Military Policeman', 'MKL382', 1);
INSERT INTO individual_tasks VALUES (68, 'Character', 'Nightwing', 'MVY759', 1);
INSERT INTO individual_tasks VALUES (69, 'Character', 'Penguin Goon', 'BJH782', 1);
INSERT INTO individual_tasks VALUES (70, 'Character', 'Penguin Henchman', 'NKA238', 1);
INSERT INTO individual_tasks VALUES (71, 'Character', 'Penguin Minion', 'KJP748', 1);
INSERT INTO individual_tasks VALUES (72, 'Character', 'Policeman', 'PLB946', 1);
INSERT INTO individual_tasks VALUES (73, 'Character', 'Poison Ivy Goon', 'GTB899', 1);
INSERT INTO individual_tasks VALUES (74, 'Character', 'Police Marksman', 'HKG984', 1);
INSERT INTO individual_tasks VALUES (75, 'Character', 'Riddler Goon', 'CRY928', 1);
INSERT INTO individual_tasks VALUES (76, 'Character', 'Riddler Henchman', 'XEU824', 1);
INSERT INTO individual_tasks VALUES (77, 'Character', 'Riddler''s Girlfriend', 'XWP645', 1);
INSERT INTO individual_tasks VALUES (78, 'Character', 'S.W.A.T.', 'HTF114', 1);
INSERT INTO individual_tasks VALUES (79, 'Character', 'Two-Face Goon', 'EER929', 1);
INSERT INTO individual_tasks VALUES (80, 'Character', 'Two-Face Henchman', 'MMN786', 1);
INSERT INTO individual_tasks VALUES (81, 'Character', 'Ventriloquist', 'KJK327', 1);
INSERT INTO individual_tasks VALUES (82, 'Vehicle', 'Bat-Tank', 'KNTT4B', 1);
INSERT INTO individual_tasks VALUES (83, 'Vehicle', 'Bruce Wayne''s Private Jet', 'LEA664', 1);
INSERT INTO individual_tasks VALUES (84, 'Vehicle', 'Catwoman''s Motorcycle', 'HPL826', 1);
INSERT INTO individual_tasks VALUES (85, 'Vehicle', 'Garbage Truck', 'DUS483', 1);
INSERT INTO individual_tasks VALUES (86, 'Vehicle', 'Goon Helicopter', 'GCH328', 1);
INSERT INTO individual_tasks VALUES (87, 'Vehicle', 'Harley Quinn''s Hammer Truck', 'RDT637', 1);
INSERT INTO individual_tasks VALUES (88, 'Vehicle', 'Mad Hatter''s Glider', 'HS000W', 1);
INSERT INTO individual_tasks VALUES (89, 'Vehicle', 'Mad Hatter''s Steamboat', 'M4DM4N', 1);
INSERT INTO individual_tasks VALUES (90, 'Vehicle', 'Penguin Submarine', 'BTN248', 1);
INSERT INTO individual_tasks VALUES (91, 'Vehicle', 'Police Bike', 'LJP234', 1);
INSERT INTO individual_tasks VALUES (92, 'Vehicle', 'Police Boat', 'PLC999', 1);
INSERT INTO individual_tasks VALUES (93, 'Vehicle', 'Police Car', 'KJL832', 1);
INSERT INTO individual_tasks VALUES (94, 'Vehicle', 'Police Helicopter', 'CWR732', 1);
INSERT INTO individual_tasks VALUES (95, 'Vehicle', 'Police Van', 'MAC788', 1);
INSERT INTO individual_tasks VALUES (96, 'Vehicle', 'Riddler''s Jet', 'HAHAHA', 1);
INSERT INTO individual_tasks VALUES (97, 'Vehicle', 'The Joker''s Van', 'JUK657', 1);
INSERT INTO individual_tasks VALUES (98, 'Extra', 'Disguise (Detective)', 'BWQ458', 1);
INSERT INTO individual_tasks VALUES (99, 'Extra', 'Fast Build', 'KLJ584', 1);
INSERT INTO individual_tasks VALUES (100, 'Extra', 'Fast Grapple', 'RM4PR8', 1);
INSERT INTO individual_tasks VALUES (101, 'Extra', 'Flaming Batarangs', 'JRBDCB', 1);
INSERT INTO individual_tasks VALUES (102, 'Extra', 'Immune to Freeze', 'JXUDY6', 1);
INSERT INTO individual_tasks VALUES (103, 'Extra', 'Invincibility', 'WYD5CP', 1);
INSERT INTO individual_tasks VALUES (104, 'Extra', 'More Batarang Targets', 'XWP645', 1);
INSERT INTO individual_tasks VALUES (105, 'Extra', 'Regenerate Hearts', 'HJH7HJ', 1);

INSERT INTO individual_tasks (id, category, description, code) VALUES
(52, 'Health and Stamina', 'Refills health, stamina, and dead eye bars', '"You flourish before you die"'),
(53, 'Weapons and Ammo', 'Grants infinite ammo supply', '"Abundance is the dullest desire"'),
(54, 'Weapons and Ammo', 'Adds Pump-Action Shotgun, Bolt Action Rifle, Mauser Pistol, and Semi-Automatic Pistol', '"Greed is American virtue"'),
(55, 'Horses', 'Increases your horse\''s bonding level', '"My kingdom is a horse"'),
(56, 'Money and Items', 'Grants a set of basic weapons', '"Share"'),
(57, 'Money and Items', 'Adds $500 to your in-game funds', '"Greed is now a virtue"'),
(58, 'Dead Eye', 'Allows for manual targeting in Dead Eye', '"Guide me better"'),
(59, 'Miscellaneous', 'Spawns a cart', '"A simple life, a beautiful death"'),
(60, 'Miscellaneous', 'Spawns a race horse', '"Keep your dreams simple"'),
(70, 'Miscellaneous', 'Increases your wanted level', '"You want punishment"'),
(71, 'Miscellaneous', 'Decreases your wanted level', '"You want freedom"');



--DQL

SELECT * FROM courses;

SELECT * FROM user;

