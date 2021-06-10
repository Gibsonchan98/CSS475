CREATE TABLE USERS(
	Uid int NOT NULL, 
    	U_Fname varchar(40) NOT NULL,
    	U_Lname varchar(40), 
    	PRIMARY KEY(Uid)
);

create table EMPLOYEE (
	Eid INT NOT NULL,
	E_Fname VARCHAR(50) NOT NULL,
	E_Minit VARCHAR(1),
	E_Lname VARCHAR(50),
	Salary INT,
	DOB DATE NOT NULL, 
	PRIMARY KEY(Eid)
);

create table RESTAURANT (
	Rest_id INT NOT NULL,
	Website_Link VARCHAR(1000),
	Address VARCHAR(50),
	City VARCHAR(50),
	State VARCHAR(50),
	Phone VARCHAR(50),
	R_Name VARCHAR(50),
	CONSTRAINT chk_City CHECK (City IN ('Seattle')),
	CONSTRAINT chk_State CHECK (State IN ('Washington', 'WA')),
	PRIMARY KEY(Rest_id)
);


create table RESTAURANT_SCHEDULE (
	Rest_id INT NOT NULL,
	Day VARCHAR(50),
	Start_Time VARCHAR(50),
	End_Time VARCHAR(50),
	PRIMARY KEY(Rest_id),
	FOREIGN KEY(Rest_id) REFERENCES RESTAURANT(Rest_id)
);

create table WRITE_REVIEW (
	Rid INT NOT NULL,
	Uid INT NOT NULL,
	Rest_id INT NOT NULL,
	PRIMARY KEY(Rid), 
	FOREIGN KEY(Uid) REFERENCES USERS(Uid),
	FOREIGN KEY(Rest_id) REFERENCES RESTAURANT(Rest_id)
);


create table REVIEW (
	Rid INT NOT NULL,
	Rev_description VARCHAR(300),
	Rating INT NOT NULL,
	Rev_date DATE NOT NULL,
    PRIMARY KEY(Rid),
	FOREIGN KEY(Rid) REFERENCES WRITE_REVIEW(Rid)
);



create table REMOVE (
	Rem_id INT NOT NULL,
	Eid INT NOT NULL,
	Rid INT NOT NULL,
	Rem_description VARCHAR(300),
	Rem_date DATE,
    PRIMARY KEY(Rem_id),
	FOREIGN KEY(Eid) REFERENCES EMPLOYEE(Eid),
	FOREIGN KEY(Rid) REFERENCES WRITE_REVIEW(Rid)
);

create table UPDATES(
	U_date date NOT NULL,
	U_description varchar(300) NOT NULL,
	Eid int NOT NULL,
	Rest_id int NOT NULL,
    PRIMARY KEY(Eid, Rest_id, U_date),
	FOREIGN KEY(Eid) REFERENCES EMPLOYEE(Eid),
	FOREIGN KEY(Rest_id) REFERENCES RESTAURANT(Rest_id)
);

create table SEARCHED_BY (
	Rest_id INT NOT NULL,
	Uid INT NOT NULL,
    PRIMARY KEY(Rest_id, Uid),
	FOREIGN KEY(Uid) REFERENCES USERS(Uid),
	FOREIGN KEY(Rest_id) REFERENCES RESTAURANT(Rest_id)
);

/*USERS Insert queries*/
insert into USERS (Uid, U_Fname, U_Lname) values (1, 'Betsey', 'Jiggens');
insert into USERS (Uid, U_Fname, U_Lname) values (2, 'Sosanna', 'Shrimptone');
insert into USERS (Uid, U_Fname, U_Lname) values (3, 'Bil', 'Baudic');
insert into USERS (Uid, U_Fname, U_Lname) values (4, 'Valaree', 'Folland');
insert into USERS (Uid, U_Fname, U_Lname) values (5, 'Marcella', 'Reany');
insert into USERS (Uid, U_Fname, U_Lname) values (6, 'Katherine', 'Rivalant');
insert into USERS (Uid, U_Fname, U_Lname) values (7, 'Alfonso', 'Tassaker');
insert into USERS (Uid, U_Fname, U_Lname) values (8, 'Vannie', 'Pendre');
insert into USERS (Uid, U_Fname, U_Lname) values (9, 'Fletch', 'Garioch');
insert into USERS (Uid, U_Fname, U_Lname) values (10, 'Hinze', 'Conlaund');
insert into USERS (Uid, U_Fname, U_Lname) values (11, 'Nadine', 'Haydon');
insert into USERS (Uid, U_Fname, U_Lname) values (12, 'Herc', 'Podmore');
insert into USERS (Uid, U_Fname, U_Lname) values (13, 'Rana', 'Bowkley');
insert into USERS (Uid, U_Fname, U_Lname) values (14, 'Cybil', 'Kneal');
insert into USERS (Uid, U_Fname, U_Lname) values (15, 'Juliana', 'Traill');
insert into USERS (Uid, U_Fname, U_Lname) values (16, 'Antony', 'Legg');
insert into USERS (Uid, U_Fname, U_Lname) values (17, 'Brynn', 'Howlin');
insert into USERS (Uid, U_Fname, U_Lname) values (18, 'Lilia', 'Outram');
insert into USERS (Uid, U_Fname, U_Lname) values (19, 'Veda', 'Hastewell');
insert into USERS (Uid, U_Fname, U_Lname) values (20, 'Lauren', 'Franken');
insert into USERS (Uid, U_Fname, U_Lname) values (21, 'Loki', 'Frank');
insert into USERS (Uid, U_Fname, U_Lname) values (22, 'Sayre', 'McKintosh');
insert into USERS (Uid, U_Fname, U_Lname) values (23, 'Kristofor', 'Guierre');
insert into USERS (Uid, U_Fname, U_Lname) values (24, 'Lewes', 'Drinkhall');
insert into USERS (Uid, U_Fname, U_Lname) values (25, 'Isidora', 'Botright');
insert into USERS (Uid, U_Fname, U_Lname) values (26, 'Bel', 'Bareford');
insert into USERS (Uid, U_Fname, U_Lname) values (27, 'Talia', 'Luxton');
insert into USERS (Uid, U_Fname, U_Lname) values (28, 'Dewitt', 'Vautier');
insert into USERS (Uid, U_Fname, U_Lname) values (29, 'Barth', 'Moffet');
insert into USERS (Uid, U_Fname, U_Lname) values (30, 'Abel', 'Senecaut');
insert into USERS (Uid, U_Fname, U_Lname) values (31, 'Seumas', 'Hinners');
insert into USERS (Uid, U_Fname, U_Lname) values (32, 'Doe', 'Ege');
insert into USERS (Uid, U_Fname, U_Lname) values (33, 'Woodie', 'Sanper');
insert into USERS (Uid, U_Fname, U_Lname) values (34, 'Madelaine', 'Guerreau');
insert into USERS (Uid, U_Fname, U_Lname) values (35, 'Inger', 'Tidman');
insert into USERS (Uid, U_Fname, U_Lname) values (36, 'Faydra', 'Rostern');
insert into USERS (Uid, U_Fname, U_Lname) values (37, 'Rosalind', 'Santacrole');
insert into USERS (Uid, U_Fname, U_Lname) values (38, 'Pascale', 'Cornfoot');
insert into USERS (Uid, U_Fname, U_Lname) values (39, 'Meier', 'Langan');
insert into USERS (Uid, U_Fname, U_Lname) values (40, 'Rici', 'Boner');
insert into USERS (Uid, U_Fname, U_Lname) values (41, 'Danice', 'Segeswoeth');
insert into USERS (Uid, U_Fname, U_Lname) values (42, 'Halley', 'Prichet');
insert into USERS (Uid, U_Fname, U_Lname) values (43, 'Evanne', 'Blackwell');
insert into USERS (Uid, U_Fname, U_Lname) values (44, 'Deane', 'Greenard');
insert into USERS (Uid, U_Fname, U_Lname) values (45, 'Henryetta', 'Danforth');
insert into USERS (Uid, U_Fname, U_Lname) values (46, 'Kendricks', 'Kenrick');
insert into USERS (Uid, U_Fname, U_Lname) values (47, 'Kendricks', 'Eyrl');
insert into USERS (Uid, U_Fname, U_Lname) values (48, 'Tiffanie', 'Over');
insert into USERS (Uid, U_Fname, U_Lname) values (49, 'Meaghan', 'Crosse');
insert into USERS (Uid, U_Fname, U_Lname) values (50, 'Clywd', 'Abrahamovitz');
insert into USERS (Uid, U_Fname, U_Lname) values (51, 'Corabelle', 'Mealing');
insert into USERS (Uid, U_Fname, U_Lname) values (52, 'Tremaine', 'Girodias');
insert into USERS (Uid, U_Fname, U_Lname) values (53, 'Trista', 'Timson');
insert into USERS (Uid, U_Fname, U_Lname) values (54, 'Courtney', 'Harriman');
insert into USERS (Uid, U_Fname, U_Lname) values (55, 'Maurizio', 'Goodliff');
insert into USERS (Uid, U_Fname, U_Lname) values (56, 'Caryn', 'Pharo');
insert into USERS (Uid, U_Fname, U_Lname) values (57, 'Devora', 'Beadel');
insert into USERS (Uid, U_Fname, U_Lname) values (58, 'Marlena', 'Cowoppe');
insert into USERS (Uid, U_Fname, U_Lname) values (59, 'Antonetta', 'Episcopi');
insert into USERS (Uid, U_Fname, U_Lname) values (60, 'Guilbert', 'Baldelli');
insert into USERS (Uid, U_Fname, U_Lname) values (61, 'Shelagh', 'Mariyushkin');
insert into USERS (Uid, U_Fname, U_Lname) values (62, 'Cletus', 'Teasey');
insert into USERS (Uid, U_Fname, U_Lname) values (63, 'Deeyn', 'Lewing');
insert into USERS (Uid, U_Fname, U_Lname) values (64, 'Siegfried', 'Schops');
insert into USERS (Uid, U_Fname, U_Lname) values (65, 'Ely', 'Yanuk');
insert into USERS (Uid, U_Fname, U_Lname) values (66, 'Care', 'Fossitt');
insert into USERS (Uid, U_Fname, U_Lname) values (67, 'Leigh', 'Sexton');
insert into USERS (Uid, U_Fname, U_Lname) values (68, 'Lizzie', 'Colclough');
insert into USERS (Uid, U_Fname, U_Lname) values (69, 'Juliann', 'Skally');
insert into USERS (Uid, U_Fname, U_Lname) values (70, 'Dermot', 'Anderl');
insert into USERS (Uid, U_Fname, U_Lname) values (71, 'Veriee', 'Uman');
insert into USERS (Uid, U_Fname, U_Lname) values (72, 'Ximenez', 'Peggrem');
insert into USERS (Uid, U_Fname, U_Lname) values (73, 'Sidoney', 'Chasemore');
insert into USERS (Uid, U_Fname, U_Lname) values (74, 'Twila', 'Nayshe');
insert into USERS (Uid, U_Fname, U_Lname) values (75, 'Clarine', 'Brockett');
insert into USERS (Uid, U_Fname, U_Lname) values (76, 'Massimiliano', 'Knightsbridge');
insert into USERS (Uid, U_Fname, U_Lname) values (77, 'Leia', 'Burbridge');
insert into USERS (Uid, U_Fname, U_Lname) values (78, 'Herb', 'Asquez');
insert into USERS (Uid, U_Fname, U_Lname) values (79, 'Wilbert', 'Larchiere');
insert into USERS (Uid, U_Fname, U_Lname) values (80, 'Timofei', 'Dignall');
insert into USERS (Uid, U_Fname, U_Lname) values (81, 'Jeni', 'Champagne');
insert into USERS (Uid, U_Fname, U_Lname) values (82, 'Enrica', 'Florence');
insert into USERS (Uid, U_Fname, U_Lname) values (83, 'Arabel', 'Vittel');
insert into USERS (Uid, U_Fname, U_Lname) values (84, 'Quentin', 'Ong');
insert into USERS (Uid, U_Fname, U_Lname) values (85, 'Garvy', 'Ciani');
insert into USERS (Uid, U_Fname, U_Lname) values (86, 'Rosmunda', 'Camble');
insert into USERS (Uid, U_Fname, U_Lname) values (87, 'Krystyna', 'Eveque');
insert into USERS (Uid, U_Fname, U_Lname) values (88, 'Johna', 'Hammand');
insert into USERS (Uid, U_Fname, U_Lname) values (89, 'Junia', 'Lates');
insert into USERS (Uid, U_Fname, U_Lname) values (90, 'Laurie', 'Ainger');
insert into USERS (Uid, U_Fname, U_Lname) values (91, 'Hermione', 'Vasyushkhin');
insert into USERS (Uid, U_Fname, U_Lname) values (92, 'Dniren', 'Samwaye');
insert into USERS (Uid, U_Fname, U_Lname) values (93, 'Ab', 'Shakesbye');
insert into USERS (Uid, U_Fname, U_Lname) values (94, 'Erminia', 'Ollier');
insert into USERS (Uid, U_Fname, U_Lname) values (95, 'Rem', 'Preon');
insert into USERS (Uid, U_Fname, U_Lname) values (96, 'Rosemonde', 'McKinn');
insert into USERS (Uid, U_Fname, U_Lname) values (97, 'Arleta', 'Ungerechts');
insert into USERS (Uid, U_Fname, U_Lname) values (98, 'Agnella', 'Fromont');
insert into USERS (Uid, U_Fname, U_Lname) values (99, 'Tracy', 'Cobello');
insert into USERS (Uid, U_Fname, U_Lname) values (100, 'Waylen', 'Brackpool');

/*EMPLOYEE Insert queries*/
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (1, 'Connor', 'M', 'Olijve', 76870, '1932-03-08');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (2, 'Jemimah', 'D', 'Millhouse', 89556, '1923-08-03');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (3, 'Sharona', 'X', 'Cardenosa', 73696, '1951-07-17');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (4, 'Lamont', 'K', 'O''Fairy', 56881, '1956-10-02');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (5, 'Ursula', 'Z', 'Blitz', 87233, '1962-11-14');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (6, 'Vevay', 'Q', 'Hartrick', 52216, '1998-08-07');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (7, 'Stefan', 'R', 'Longega', 72551, '1969-05-30');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (8, 'Wat', 'V', 'Gallichan', 84036, '1950-12-25');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (9, 'Rik', 'Q', 'Phette', 78425, '1920-10-26');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (10, 'Shelden', 'W', 'Zavittieri', 55538, '1957-09-01');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (11, 'Denney', 'W', 'Richfield', 67742, '1935-07-20');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (12, 'Durward', 'H', 'Langfield', 84476, '1929-05-22');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (13, 'Anitra', 'N', 'Windrus', 76433, '1971-12-21');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (14, 'Nolana', 'R', 'Curl', 52920, '1975-12-11');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (15, 'Jarred', 'I', 'Yair', 61404, '1922-02-05');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (16, 'Daven', 'Y', 'Yeandel', 62516, '1976-03-12');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (17, 'Monte', 'P', 'Thomtson', 76923, '1963-03-04');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (18, 'Hannah', 'E', 'Langmaid', 88120, '1997-01-12');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (19, 'Sibeal', 'S', 'Thistleton', 83140, '1920-05-29');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (20, 'Izabel', 'Q', 'Marner', 69215, '1964-03-28');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (21, 'Archer', 'V', 'Vockins', 52078, '1925-10-13');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (22, 'Rhonda', 'J', 'Urridge', 77790, '1995-09-04');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (23, 'Bartie', 'B', 'Garie', 72871, '1965-10-19');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (24, 'Lennie', 'H', 'Shelmerdine', 58557, '1932-02-12');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (25, 'Isahella', 'B', 'Cham', 86973, '1920-10-29');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (26, 'Ddene', 'Q', 'Boman', 67284, '1929-04-23');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (27, 'Eirena', 'K', 'Binyon', 85343, '1932-04-01');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (28, 'Lombard', 'Y', 'Stryde', 74043, '1974-09-07');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (29, 'Dag', 'Q', 'Devlin', 70214, '2001-09-12');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (30, 'Troy', 'H', 'Wildey', 87606, '1975-03-14');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (31, 'Barbi', 'V', 'Sylett', 86288, '1988-09-27');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (32, 'Burr', 'B', 'Clemont', 60472, '1928-03-28');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (33, 'Lodovico', 'C', 'Le Friec', 68149, '1963-08-14');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (34, 'Elnora', 'E', 'Giovannetti', 61210, '1963-08-28');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (35, 'Zacherie', 'G', 'Orton', 50468, '1945-06-14');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (36, 'Annadiana', 'K', 'Hickford', 59799, '1960-10-30');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (37, 'Jock', 'G', 'Osmund', 83066, '1941-10-31');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (38, 'Aubrie', 'L', 'Udden', 70962, '1984-06-30');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (39, 'Markos', 'K', 'Baress', 87573, '1992-02-23');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (40, 'Rosanne', 'S', 'Merrywether', 74856, '1947-12-24');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (41, 'Lemar', 'Y', 'Budge', 58693, '1982-08-22');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (42, 'Asia', 'P', 'Hambly', 78080, '1970-04-02');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (43, 'Baudoin', 'P', 'Snugg', 71976, '1936-03-01');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (44, 'Harmony', 'X', 'Beranek', 84990, '1923-04-11');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (45, 'Lincoln', 'F', 'Phipard-Shears', 89302, '1985-01-07');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (46, 'Carling', 'N', 'Lovejoy', 85719, '1993-11-16');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (47, 'Rosabel', 'C', 'Hallows', 75381, '1921-01-11');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (48, 'Noble', 'Z', 'Alexander', 89637, '1975-03-12');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (49, 'Kearney', 'P', 'Fowells', 55637, '1938-07-30');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (50, 'Lenka', 'X', 'Stickley', 89791, '1980-01-09');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (51, 'Ester', 'F', 'Punchard', 56566, '1973-12-30');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (52, 'Edd', 'B', 'Hobell', 64124, '1952-11-03');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (53, 'Penny', 'W', 'Lamberti', 83171, '1958-11-23');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (54, 'Datha', 'W', 'Gatcliff', 77726, '1981-01-18');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (55, 'Andreas', 'H', 'Grundell', 79155, '1988-05-12');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (56, 'Kristyn', 'X', 'Sauniere', 65533, '1952-10-11');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (57, 'Romeo', 'E', 'Warrack', 73405, '1983-09-28');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (58, 'Fleurette', 'B', 'Tal', 71159, '1952-02-04');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (59, 'Lyle', 'I', 'Cluse', 52088, '1930-08-04');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (60, 'Judd', 'Y', 'Sutton', 81661, '1936-07-20');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (61, 'Mayor', 'K', 'Dreng', 55812, '1950-09-02');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (62, 'Pall', 'Z', 'Scotchforth', 76322, '1958-01-02');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (63, 'Giuditta', 'K', 'Berens', 62327, '1931-01-18');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (64, 'Domenico', 'L', 'Redley', 89113, '1967-08-03');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (65, 'Lucias', 'M', 'Lowndsbrough', 72713, '1941-12-25');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (66, 'Lou', 'D', 'Chelnam', 71577, '1958-04-21');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (67, 'Simeon', 'W', 'Brunker', 55276, '1932-12-08');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (68, 'Josefina', 'R', 'Paullin', 54922, '1962-06-05');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (69, 'Winston', 'F', 'Gullane', 70873, '1981-12-29');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (70, 'Doloritas', 'C', 'Cundy', 55610, '2000-11-24');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (71, 'Horace', 'E', 'Nolleth', 68317, '1965-10-23');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (72, 'Annalee', 'P', 'Arniz', 54470, '1982-07-15');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (73, 'Read', 'Y', 'Heal', 57813, '1922-02-26');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (74, 'Novelia', 'G', 'Nolton', 74179, '1987-06-14');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (75, 'Emery', 'X', 'Livesey', 81075, '1984-09-14');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (76, 'Ariel', 'L', 'Frail', 62942, '1964-09-21');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (77, 'Cosimo', 'B', 'Clarkson', 66177, '1952-02-18');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (78, 'Alfonso', 'W', 'Lillecrop', 87401, '1986-03-22');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (79, 'Martha', 'T', 'Littell', 54417, '1945-08-06');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (80, 'Angelia', 'D', 'Sackey', 74213, '1936-12-19');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (81, 'Erma', 'W', 'Espino', 54654, '1991-04-19');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (82, 'Abbi', 'K', 'Larcier', 65243, '1993-08-01');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (83, 'Ky', 'H', 'Maddison', 51732, '1923-12-30');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (84, 'Barnabe', 'E', 'Brunstan', 59148, '1966-01-18');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (85, 'Malina', 'P', 'Hobden', 86319, '1929-05-27');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (86, 'Dallas', 'R', 'Simonnot', 88794, '1942-12-14');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (87, 'Tabatha', 'P', 'Chartre', 88682, '1951-10-11');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (88, 'Jeni', 'C', 'Diem', 83259, '1973-04-02');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (89, 'Gwenny', 'R', 'Weir', 86500, '1922-06-29');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (90, 'Reed', 'X', 'Deniske', 89966, '1995-04-06');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (91, 'Prinz', 'E', 'Haig', 63806, '1965-07-03');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (92, 'Blanche', 'O', 'Chuney', 84536, '1929-03-15');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (93, 'Humfried', 'F', 'Neary', 52639, '1985-05-23');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (94, 'Norine', 'Q', 'Cromar', 81676, '1929-02-02');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (95, 'Charlene', 'U', 'Ales0', 54551, '1982-11-19');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (96, 'Nilson', 'S', 'Cossins', 88984, '1971-10-27');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (97, 'Norma', 'D', 'MacGeaney', 79814, '1979-03-24');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (98, 'Tedie', 'G', 'MacFarland', 57860, '1987-04-22');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (99, 'Giffard', 'V', 'Kaemena', 76092, '1948-10-04');
insert into EMPLOYEE (Eid, E_Fname, E_Minit, E_Lname, Salary, DOB) values (100, 'Darwin', 'C', 'Jindra', 89001, '1959-04-30');

/*RESTAURANT Insert queries*/
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (1, 'flickr.com', '522 Bluejay Park', 'Seattle', 'Washington', '253-669-7753', 'Howell and Sons');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (2, 'businesswire.com', '11 Killdeer Trail', 'Seattle', 'Washington', '425-741-9817', 'Smitham-Schmeler');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (3, 'google.com', '9 Starling Point', 'Seattle', 'Washington', '509-360-2031', 'Tremblay, Marquardt and Krajcik');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (4, 'cbsnews.com', '4 Beilfuss Trail', 'Seattle', 'Washington', '425-593-5639', 'Kuhlman-Weber');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (5, 'cmu.edu', '02361 Kinsman Pass', 'Seattle', 'Washington', '509-705-3838', 'Wyman and Sons');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (6, 'newyorker.com', '108 Prentice Center', 'Seattle', 'Washington', '253-674-8531', 'Wyman Group');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (7, 'yale.edu', '332 Novick Circle', 'Seattle', 'Washington', '360-341-7623', 'Beatty, Leannon and Feil');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (8, 'lulu.com', '296 Fair Oaks Crossing', 'Seattle', 'Washington', '253-219-4698', 'Maggio and Sons');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (9, 'icq.com', '74439 Porter Center', 'Seattle', 'Washington', '206-632-7665', 'Dickens Inc');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (10, 'samsung.com', '338 Karstens Park', 'Seattle', 'Washington', '360-937-7084', 'Heathcote, Bartoletti and Hessel');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (11, 'ucoz.com', '3 Colorado Terrace', 'Seattle', 'Washington', '360-379-4214', 'Casper, Quigley and McClure');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (12, 'nymag.com', '0875 Maryland Crossing', 'Seattle', 'Washington', '206-933-9078', 'Trantow, Labadie and Zulauf');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (13, 'simplemachines.org', '571 Maple Wood Hill', 'Seattle', 'Washington', '253-581-8455', 'Metz Inc');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (14, 'cnn.com', '2196 Ridgeway Trail', 'Seattle', 'Washington', '253-114-6602', 'Hudson Inc');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (15, 'disqus.com', '293 Prairie Rose Terrace', 'Seattle', 'Washington', '360-627-2954', 'Gibson, Kris and Erdman');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (16, 'google.de', '21 Fisk Trail', 'Seattle', 'Washington', '253-474-5029', 'Altenwerth-Balistreri');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (17, 'slashdot.org', '14495 Lerdahl Alley', 'Seattle', 'Washington', '360-672-9540', 'Hudson-Koepp');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (18, 'pinterest.com', '21 Corben Plaza', 'Seattle', 'Washington', '253-768-2991', 'Jacobs-Pollich');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (19, 'so-net.ne.jp', '5822 Hayes Street', 'Seattle', 'Washington', '253-850-8113', 'Lebsack Group');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (20, 'salon.com', '52 Summerview Crossing', 'Seattle', 'Washington', '253-838-5616', 'Bins-Terry');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (21, 'hud.gov', '144 Katie Center', 'Seattle', 'Washington', '509-294-4677', 'Stokes, Kovacek and McDermott');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (22, 'meetup.com', '60 Northfield Drive', 'Seattle', 'Washington', '253-535-2439', 'Herman, O''Connell and Dare');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (23, 'linkedin.com', '983 Brown Crossing', 'Seattle', 'Washington', '206-427-2670', 'Pollich Inc');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (24, 'qq.com', '89 Lunder Parkway', 'Seattle', 'Washington', '509-518-8896', 'Dare and Sons');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (25, 'mozilla.org', '84347 Coleman Road', 'Seattle', 'Washington', '206-511-3981', 'Lynch, Bosco and Shanahan');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (26, 'squarespace.com', '1630 Karstens Drive', 'Seattle', 'Washington', '253-171-6920', 'Bernhard-Rau');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (27, 'theglobeandmail.com', '76763 Del Mar Street', 'Seattle', 'Washington', '360-170-8744', 'Price Inc');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (28, 'ameblo.jp', '9965 Waxwing Point', 'Seattle', 'Washington', '253-771-9663', 'Bruen Inc');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (29, 'google.nl', '2369 Stang Crossing', 'Seattle', 'Washington', '206-541-0363', 'Reinger, Harris and Corwin');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (30, 'gmpg.org', '27725 Northwestern Lane', 'Seattle', 'Washington', '253-937-0718', 'Harvey-Stroman');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (31, 'sphinn.com', '4913 Mifflin Point', 'Seattle', 'Washington', '253-331-9573', 'Blanda-Satterfield');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (32, 'vkontakte.ru', '20 Elgar Parkway', 'Seattle', 'Washington', '253-444-5591', 'Nienow-Jaskolski');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (33, 'washingtonpost.com', '649 Hoffman Way', 'Seattle', 'Washington', '206-435-3586', 'Hagenes, Heaney and DuBuque');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (34, 'dedecms.com', '63112 Starling Avenue', 'Seattle', 'Washington', '360-187-6653', 'Reynolds, Beer and Adams');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (35, 'domainmarket.com', '55 Oriole Parkway', 'Seattle', 'Washington', '509-128-4509', 'Boehm-Schmidt');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (36, 'usatoday.com', '2625 Shasta Alley', 'Seattle', 'Washington', '509-953-0418', 'Treutel-Quitzon');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (37, 'earthlink.net', '75 Westend Hill', 'Seattle', 'Washington', '509-515-3425', 'Quitzon, Kassulke and Treutel');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (38, 'jugem.jp', '447 Pleasure Place', 'Seattle', 'Washington', '253-104-5973', 'Lueilwitz, Roob and Littel');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (39, 'technorati.com', '0 Orin Junction', 'Seattle', 'Washington', '253-444-7137', 'Stark, Kozey and Koelpin');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (40, 'jugem.jp', '1 Longview Parkway', 'Seattle', 'Washington', '509-705-8700', 'Adams-Swaniawski');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (41, 'nature.com', '175 Schmedeman Junction', 'Seattle', 'Washington', '206-890-4053', 'Rodriguez-Cummings');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (42, 'latimes.com', '980 Miller Way', 'Seattle', 'Washington', '206-804-1669', 'Borer, Kertzmann and Feil');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (43, 'go.com', '9 Grayhawk Parkway', 'Seattle', 'Washington', '206-376-0703', 'Bergstrom Group');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (44, 'oaic.gov.au', '70 Mosinee Avenue', 'Seattle', 'Washington', '253-201-7116', 'Rippin, Willms and Funk');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (45, 'sitemeter.com', '49 Sunnyside Point', 'Seattle', 'Washington', '253-422-2563', 'Mitchell, Kilback and Heaney');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (46, 'ocn.ne.jp', '69468 Dayton Place', 'Seattle', 'Washington', '253-833-1139', 'Carroll, Schumm and Dicki');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (47, 'java.com', '9068 Roxbury Terrace', 'Seattle', 'Washington', '253-852-9544', 'Fahey-Murazik');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (48, 'cyberchimps.com', '3097 Haas Trail', 'Seattle', 'Washington', '360-417-2305', 'Gusikowski, Pouros and Gulgowski');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (49, 'jimdo.com', '01585 Gulseth Crossing', 'Seattle', 'Washington', '425-532-2249', 'Schmitt LLC');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (50, 'dropbox.com', '28 Mifflin Way', 'Seattle', 'Washington', '253-288-7959', 'Reinger, Torphy and Block');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (51, 'comcast.net', '0 Division Avenue', 'Seattle', 'Washington', '206-406-1230', 'Cummings Group');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (52, 'elpais.com', '92045 Beilfuss Way', 'Seattle', 'Washington', '206-224-2209', 'Kirlin, Hane and Beatty');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (53, 'google.co.jp', '0 Hallows Pass', 'Seattle', 'Washington', '253-409-5192', 'Wolf Group');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (54, 'disqus.com', '0 Schlimgen Parkway', 'Seattle', 'Washington', '206-658-4826', 'Cormier and Sons');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (55, 'plala.or.jp', '438 Lillian Road', 'Seattle', 'Washington', '425-326-2253', 'Treutel, Quigley and Nader');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (56, 'sciencedaily.com', '5 Esch Crossing', 'Seattle', 'Washington', '509-924-4686', 'Crona and Sons');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (57, 'github.com', '753 Mcbride Crossing', 'Seattle', 'Washington', '253-328-6709', 'Koepp Inc');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (58, 'ted.com', '9352 Parkside Pass', 'Seattle', 'Washington', '253-407-1726', 'Hermann, Cruickshank and Kiehn');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (59, 'gizmodo.com', '58603 Summer Ridge Road', 'Seattle', 'Washington', '509-153-5846', 'Wiza, Bashirian and Kassulke');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (60, 'elegantthemes.com', '16011 Myrtle Lane', 'Seattle', 'Washington', '509-528-0856', 'Simonis, Jones and Heller');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (61, 'dailymail.co.uk', '9 Forest Run Parkway', 'Seattle', 'Washington', '425-594-6824', 'Ebert-Miller');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (62, 'multiply.com', '629 Anzinger Pass', 'Seattle', 'Washington', '253-506-1108', 'Larson-Grimes');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (63, 'wix.com', '079 Jackson Alley', 'Seattle', 'Washington', '253-212-6409', 'Nikolaus-Hermann');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (64, 'dyndns.org', '118 Hovde Circle', 'Seattle', 'Washington', '360-814-5959', 'Ratke LLC');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (65, 'about.com', '046 Lien Junction', 'Seattle', 'Washington', '425-655-7597', 'Emmerich-Gleichner');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (66, 'whitehouse.gov', '1 Northwestern Road', 'Seattle', 'Washington', '509-445-6933', 'Feest, Reilly and Bogisich');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (67, 'constantcontact.com', '7 5th Parkway', 'Seattle', 'Washington', '253-868-8039', 'Haag, Welch and Kautzer');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (68, 'hatena.ne.jp', '691 Hagan Hill', 'Seattle', 'Washington', '253-797-2475', 'Davis, Hegmann and Kutch');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (69, 'usnews.com', '87 Dorton Terrace', 'Seattle', 'Washington', '360-730-0773', 'Hauck Group');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (70, 'about.com', '75043 Commercial Center', 'Seattle', 'Washington', '425-890-1784', 'O''Kon-Weber');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (71, 'usgs.gov', '1038 American Plaza', 'Seattle', 'Washington', '425-689-4812', 'Goodwin LLC');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (72, 'bloglines.com', '47897 8th Way', 'Seattle', 'Washington', '509-574-3505', 'Bode Inc');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (73, 'booking.com', '0 Fuller Trail', 'Seattle', 'Washington', '253-720-0939', 'Douglas-Morissette');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (74, 'wired.com', '6709 Tennessee Hill', 'Seattle', 'Washington', '253-656-2006', 'Cartwright, Cronin and Weimann');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (75, 'amazon.co.uk', '87311 Ruskin Road', 'Seattle', 'Washington', '509-615-6501', 'Hickle Group');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (76, 'rediff.com', '1 Brickson Park Plaza', 'Seattle', 'Washington', '253-606-3268', 'Boyer Group');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (77, 'bizjournals.com', '53 Roth Lane', 'Seattle', 'Washington', '425-705-7012', 'Cruickshank, Deckow and Klein');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (78, 'eventbrite.com', '51576 Loomis Way', 'Seattle', 'Washington', '360-281-9858', 'Kirlin, Gottlieb and Rippin');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (79, 'washington.edu', '9 Mallard Point', 'Seattle', 'Washington', '253-562-4171', 'VonRueden Group');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (80, 'i2i.jp', '381 Northridge Street', 'Seattle', 'Washington', '360-279-9338', 'Koepp-Adams');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (81, 'statcounter.com', '4 Walton Parkway', 'Seattle', 'Washington', '360-544-6866', 'McDermott-Kub');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (82, 'google.ca', '03 Barby Point', 'Seattle', 'Washington', '206-547-0228', 'Stiedemann, Homenick and Homenick');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (83, 'woothemes.com', '954 Dryden Junction', 'Seattle', 'Washington', '360-477-2781', 'Homenick-Nolan');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (84, 'answers.com', '62 Karstens Trail', 'Seattle', 'Washington', '253-866-3441', 'Pfeffer LLC');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (85, 'reference.com', '8 Green Ridge Crossing', 'Seattle', 'Washington', '253-910-9187', 'Gaylord, Medhurst and O''Hara');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (86, 'bbb.org', '7 Atwood Terrace', 'Seattle', 'Washington', '360-822-9173', 'Keebler-Lakin');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (87, 'google.com.au', '2 Warbler Crossing', 'Seattle', 'Washington', '253-451-1038', 'Strosin, Murazik and Trantow');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (88, 'soup.io', '8 Grim Park', 'Seattle', 'Washington', '509-758-0884', 'Mayert-Durgan');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (89, 'wikipedia.org', '1100 Almo Street', 'Seattle', 'Washington', '425-382-9182', 'Crona-MacGyver');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (90, 'sciencedaily.com', '1 Michigan Drive', 'Seattle', 'Washington', '509-724-0670', 'Tromp-Wisoky');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (91, 'whitehouse.gov', '09 Division Center', 'Seattle', 'Washington', '253-538-5966', 'Buckridge, Kutch and Kerluke');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (92, 'cocolog-nifty.com', '4 Green Ridge Center', 'Seattle', 'Washington', '425-618-9130', 'Glover and Sons');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (93, '163.com', '4 Dawn Crossing', 'Seattle', 'Washington', '253-431-4446', 'Hammes-Hettinger');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (94, 'webs.com', '629 Vermont Way', 'Seattle', 'Washington', '360-446-1608', 'O''Conner LLC');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (95, 'quantcast.com', '41788 Brickson Park Trail', 'Seattle', 'Washington', '360-641-0949', 'Predovic, Nienow and Cummerata');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (96, 'washingtonpost.com', '4 Starling Road', 'Seattle', 'Washington', '253-427-1709', 'Will and Sons');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (97, 'usnews.com', '5512 Mosinee Place', 'Seattle', 'Washington', '206-196-3456', 'Heaney-Borer');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (98, 'ycombinator.com', '8 1st Lane', 'Seattle', 'Washington', '360-504-9533', 'Quitzon Group');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (99, 'yellowpages.com', '73 Bonner Hill', 'Seattle', 'Washington', '509-607-7196', 'Schaefer Group');
insert into RESTAURANT (Rest_id, Website_Link, Address, City, State, Phone, R_Name, Rating) values (100, 'sphinn.com', '1093 Birchwood Circle', 'Seattle', 'Washington', '253-319-2107', 'Lindgren-Steuber');

/*WRITE_REVIEW Insert queries*/
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (1, 46, 80);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (2, 53, 87);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (3, 44, 93);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (4, 79, 89);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (5, 95, 10);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (6, 37, 27);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (7, 48, 73);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (8, 3, 57);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (9, 56, 63);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (10, 31, 55);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (11, 47, 8);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (12, 51, 77);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (13, 33, 38);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (14, 11, 35);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (15, 73, 60);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (16, 10, 74);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (17, 82, 80);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (18, 87, 47);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (19, 93, 34);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (20, 50, 68);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (21, 80, 89);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (22, 72, 74);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (23, 69, 6);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (24, 63, 48);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (25, 8, 2);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (26, 97, 86);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (27, 82, 71);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (28, 73, 73);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (29, 36, 27);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (30, 9, 5);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (31, 68, 40);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (32, 64, 7);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (33, 43, 48);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (34, 9, 39);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (35, 24, 75);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (36, 12, 99);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (37, 47, 57);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (38, 8, 95);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (39, 53, 9);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (40, 29, 30);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (41, 34, 48);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (42, 72, 40);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (43, 86, 66);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (44, 52, 13);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (45, 88, 75);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (46, 38, 96);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (47, 71, 78);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (48, 35, 10);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (49, 8, 18);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (50, 48, 83);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (51, 7, 92);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (52, 41, 85);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (53, 55, 37);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (54, 20, 9);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (55, 17, 65);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (56, 65, 33);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (57, 89, 73);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (58, 15, 37);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (59, 2, 100);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (60, 34, 46);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (61, 69, 33);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (62, 99, 75);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (63, 46, 70);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (64, 14, 65);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (65, 49, 32);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (66, 38, 54);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (67, 50, 43);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (68, 25, 48);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (69, 33, 69);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (70, 53, 54);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (71, 1, 74);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (72, 93, 29);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (73, 18, 82);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (74, 69, 52);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (75, 44, 60);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (76, 59, 42);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (77, 1, 20);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (78, 6, 72);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (79, 28, 52);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (80, 49, 40);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (81, 57, 49);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (82, 66, 26);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (83, 20, 59);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (84, 22, 10);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (85, 48, 33);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (86, 37, 5);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (87, 82, 99);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (88, 42, 39);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (89, 56, 11);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (90, 45, 42);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (91, 74, 68);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (92, 66, 60);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (93, 19, 34);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (94, 74, 97);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (95, 8, 24);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (96, 24, 24);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (97, 54, 14);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (98, 76, 73);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (99, 84, 30);
insert into WRITE_REVIEW (Rid, Uid, Rest_id) values (100, 84, 28);

/*REVIEW Insert queries*/
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (1, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 4.8, '2016/04/15');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (2, 'Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 5.0, '2015/12/29');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (3, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 1.6, '2016/05/17');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (4, 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 0.8, '2006/09/04');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (5, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', 4.9, '2015/11/25');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (6, 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 3.5, '2013/03/15');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (7, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 0.3, '2008/01/18');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (8, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', 1.2, '2011/06/16');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (9, 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 1.8, '2006/12/24');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (10, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo.', 2.2, '2019/03/01');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (11, 'Curabitur in libero ut massa volutpat convallis.', 0.2, '2012/05/14');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (12, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 3.6, '2008/04/21');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (13, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 3.1, '2011/11/15');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (14, 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.', 0.7, '2013/02/14');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (15, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien no.', 2.7, '2006/12/12');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (16, 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 3.3, '2019/07/25');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (17, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam nunc.', 2.6, '2009/05/11');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (18, 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', 4.3, '2006/06/17');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (19, 'Nam tristique tortor eu pede.', 3.6, '2007/01/13');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (20, 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.', 0.8, '2012/10/14');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (21, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 0.1, '2009/02/06');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (22, 'Maecenas ut massa quis augue luctus tincidunt.', 4.6, '2021/04/14');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (23, 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 3.6, '2017/01/15');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (24, 'Donec dapibus. Duis at velit eu est congue elementum.', 0.2, '2012/10/27');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (25, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 0.4, '2020/02/13');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (26, 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 2.2, '2006/10/03');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (27, 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 0.8, '2017/11/12');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (28, 'Praesent blandit.', 4.5, '2019/05/27');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (29, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 3.1, '2018/11/13');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (30, 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 0.6, '2005/03/23');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (31, 'Cras pellentesque volutpat dui.', 1.1, '2008/02/18');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (32, 'Cras non velit nec nisi vulputate nonummy.', 0.5, '2012/11/25');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (33, 'Etiam faucibus cursus urna. Ut tellus.', 2.4, '2009/10/29');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (34, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 3.7, '2016/10/25');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (35, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 0.1, '2013/05/23');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (36, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 0.9, '2015/04/28');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (37, 'Integer a nibh. In quis justo.', 3.5, '2020/07/21');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (38, 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', 4.3, '2014/06/11');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (39, 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 1.2, '2005/01/24');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (40, 'Nullam porttitor lacus at turpis.', 1.0, '2012/02/08');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (41, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 4.6, '2009/02/23');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (42, 'Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo.', 3.8, '2012/01/31');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (43, 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi.', 2.4, '2007/02/08');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (44, 'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 2.3, '2005/03/05');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (45, 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 0.7, '2019/03/05');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (46, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', 0.0, '2013/09/19');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (47, 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 1.2, '2016/12/12');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (48, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 2.7, '2008/11/10');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (49, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 4.4, '2010/07/31');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (50, 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 4.8, '2020/01/19');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (51, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 2.7, '2017/05/20');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (52, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.', 2.3, '2013/03/10');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (53, 'Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.', 3.7, '2021/03/16');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (54, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 1.7, '2021/03/17');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (55, 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 1.6, '2009/01/23');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (56, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', 2.1, '2019/02/18');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (57, 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', 4.6, '2019/03/11');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (58, 'Suspendisse potenti.', 2.1, '2020/10/03');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (59, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 1.5, '2020/08/21');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (60, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', 0.9, '2019/01/01');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (61, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0.4, '2015/09/27');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (62, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 4.9, '2006/07/04');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (63, 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.', 4.5, '2017/03/09');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (64, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 1.3, '2010/10/12');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (65, 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.', 4.3, '2018/09/30');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (66, 'Nullam molestie nibh in lectus.', 4.6, '2008/07/22');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (67, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 3.0, '2020/05/23');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (68, 'Nunc nisl.', 2.4, '2016/09/20');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (69, 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.', 0.8, '2017/07/13');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (70, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 4.8, '2017/01/19');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (71, 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat.', 0.4, '2014/02/01');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (72, 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 4.1, '2006/05/04');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (73, 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 2.4, '2013/05/09');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (74, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', 1.5, '2019/07/28');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (75, 'Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 4.3, '2008/06/20');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (76, 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 4.4, '2016/06/24');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (77, 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', 4.5, '2011/05/26');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (78, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', 4.0, '2014/10/18');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (79, 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 4.9, '2016/03/23');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (80, 'Etiam vel augue. Vestibulum rutrum rutrum neque.', 4.3, '2018/12/27');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (81, 'Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', 4.3, '2009/09/11');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (82, 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', 1.3, '2016/09/08');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (83, 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 1.8, '2009/06/12');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (84, 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', 1.3, '2017/03/12');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (85, 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', 1.6, '2005/08/08');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (86, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', 3.7, '2018/08/11');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (87, 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.', 1.1, '2007/05/22');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (88, 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 2.6, '2017/03/25');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (89, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.', 0.8, '2006/08/13');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (90, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 2.9, '2019/06/06');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (91, 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', 0.5, '2009/08/14');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (92, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 3.8, '2012/12/24');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (93, 'Nulla tempus.', 0.9, '2011/02/25');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (94, 'In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst.', 1.3, '2005/10/08');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (95, 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', 2.2, '2007/07/27');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (96, 'Suspendisse potenti. Nullam porttitor lacus at turpis.', 2.1, '2008/06/13');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (97, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', 4.5, '2018/12/16');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (98, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 0.5, '2017/09/17');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (99, 'In congue.', 1.4, '2019/09/19');
insert into REVIEW (Rid, Rev_description, Rating, Rev_date) values (100, 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 0.4, '2011/06/19');

/*UPDATES Insert queries*/
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/06/15', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 36, 40);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/04/24', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus.', 71, 77);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/10/21', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', 42, 63);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/03/24', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 91, 17);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/03/26', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.', 29, 27);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/03/06', 'In hac habitasse platea dictumst.', 2, 59);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/05/14', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.', 74, 38);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/12/09', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', 70, 86);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/01/31', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 38, 71);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/02/16', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 81, 56);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/11/18', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 9, 66);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/03/02', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.', 32, 63);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/02/13', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue.', 94, 2);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/01/01', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 87, 89);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/05/08', 'Aenean fermentum.', 50, 42);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/12/24', 'Aenean sit amet justo. Morbi ut odio.', 22, 36);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/06/05', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 13, 11);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/08/03', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 61, 48);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/09/13', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', 40, 5);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/05/10', 'Donec semper sapien a libero.', 29, 35);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/05/20', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 8, 90);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/01/09', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', 89, 1);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/09/19', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 9, 92);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/03/12', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.', 38, 71);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/04/29', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 73, 74);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/08/19', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 11, 12);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/10/26', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 53, 88);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/02/03', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', 20, 70);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/09/24', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 83, 46);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/02/10', 'In blandit ultrices enim.', 66, 52);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/11/16', 'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 48, 4);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/09/20', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 49, 75);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/06/05', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 98, 29);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/05/09', 'Pellentesque viverra pede ac diam.', 70, 12);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/04/15', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 31, 15);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/06/20', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', 66, 9);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/05/28', 'Vestibulum ac est lacinia nisi venenatis tristique.', 65, 69);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/11/21', 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', 90, 15);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/01/24', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat.', 49, 33);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/08/30', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', 84, 88);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/12/15', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 94, 50);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/09/16', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', 99, 83);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/12/12', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 9, 24);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/11/03', 'Praesent blandit.', 49, 66);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/01/10', 'Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 68, 13);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/11/16', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 3, 8);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/05/24', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', 99, 91);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/10/23', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', 30, 39);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/02/03', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.', 52, 7);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/06/03', 'Aenean auctor gravida sem.', 62, 75);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/05/25', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 83, 63);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/10/27', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 35, 79);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/08/21', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 49, 59);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/05/01', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', 18, 48);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/12/05', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 51, 19);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/09/23', 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', 12, 97);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/05/31', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia.', 62, 33);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/09/29', 'Nunc rhoncus dui vel sem.', 71, 18);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/10/23', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.', 95, 47);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/12/18', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 93, 100);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/12/25', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 98, 74);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/06/26', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 78, 100);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/09/07', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 41, 65);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/05/25', 'Curabitur convallis.', 12, 68);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/08/22', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 94, 65);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/01/12', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', 89, 69);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/01/11', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 81, 25);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/12/01', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 22, 10);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/05/17', 'Morbi a ipsum. Integer a nibh.', 11, 58);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/11/06', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 40, 54);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/06/18', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 15, 44);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/09/20', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 9, 42);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/08/13', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', 58, 33);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/10/15', 'Cras non velit nec nisi vulputate nonummy.', 4, 12);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/07/11', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', 10, 6);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/06/05', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 77, 38);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/02/26', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 96, 96);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/03/23', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 24, 75);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/06/08', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', 6, 60);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/02/10', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 10, 22);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/01/04', 'Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst.', 59, 80);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/08/21', 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', 80, 26);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/02/24', 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 81, 30);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/03/06', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 25, 77);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/01/17', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 72, 54);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/11/24', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 82, 52);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/02/26', 'Nulla tempus.', 58, 80);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/09/10', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 91, 59);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/07/29', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 12, 28);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/09/21', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 1, 62);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/05/29', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 93, 72);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/10/11', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', 21, 68);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/08/08', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.', 4, 6);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/01/18', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 11, 24);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/02/27', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 79, 40);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/12/15', 'Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', 57, 53);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/10/29', 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius.', 87, 16);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2020/09/30', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 24, 87);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/01/31', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 32, 73);
insert into UPDATES (U_date, U_Description, Eid, Rest_id) values ('2021/02/27', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 39, 48);

/*SEARCHED_BY Insert queries*/
insert into SEARCHED_BY (Uid, Rest_id) values (22, 32);
insert into SEARCHED_BY (Uid, Rest_id) values (8, 54);
insert into SEARCHED_BY (Uid, Rest_id) values (60, 95);
insert into SEARCHED_BY (Uid, Rest_id) values (80, 75);
insert into SEARCHED_BY (Uid, Rest_id) values (90, 8);
insert into SEARCHED_BY (Uid, Rest_id) values (99, 56);
insert into SEARCHED_BY (Uid, Rest_id) values (79, 26);
insert into SEARCHED_BY (Uid, Rest_id) values (21, 95);
insert into SEARCHED_BY (Uid, Rest_id) values (38, 67);
insert into SEARCHED_BY (Uid, Rest_id) values (26, 49);
insert into SEARCHED_BY (Uid, Rest_id) values (48, 23);
insert into SEARCHED_BY (Uid, Rest_id) values (52, 57);
insert into SEARCHED_BY (Uid, Rest_id) values (43, 50);
insert into SEARCHED_BY (Uid, Rest_id) values (39, 72);
insert into SEARCHED_BY (Uid, Rest_id) values (14, 2);
insert into SEARCHED_BY (Uid, Rest_id) values (41, 22);
insert into SEARCHED_BY (Uid, Rest_id) values (55, 82);
insert into SEARCHED_BY (Uid, Rest_id) values (31, 73);
insert into SEARCHED_BY (Uid, Rest_id) values (36, 19);
insert into SEARCHED_BY (Uid, Rest_id) values (67, 49);
insert into SEARCHED_BY (Uid, Rest_id) values (11, 65);
insert into SEARCHED_BY (Uid, Rest_id) values (32, 44);
insert into SEARCHED_BY (Uid, Rest_id) values (10, 63);
insert into SEARCHED_BY (Uid, Rest_id) values (61, 72);
insert into SEARCHED_BY (Uid, Rest_id) values (92, 52);
insert into SEARCHED_BY (Uid, Rest_id) values (88, 29);
insert into SEARCHED_BY (Uid, Rest_id) values (29, 3);
insert into SEARCHED_BY (Uid, Rest_id) values (69, 6);
insert into SEARCHED_BY (Uid, Rest_id) values (5, 65);
insert into SEARCHED_BY (Uid, Rest_id) values (6, 30);
insert into SEARCHED_BY (Uid, Rest_id) values (76, 95);
insert into SEARCHED_BY (Uid, Rest_id) values (79, 11);
insert into SEARCHED_BY (Uid, Rest_id) values (11, 25);
insert into SEARCHED_BY (Uid, Rest_id) values (55, 73);
insert into SEARCHED_BY (Uid, Rest_id) values (95, 88);
insert into SEARCHED_BY (Uid, Rest_id) values (79, 94);
insert into SEARCHED_BY (Uid, Rest_id) values (35, 23);
insert into SEARCHED_BY (Uid, Rest_id) values (45, 21);
insert into SEARCHED_BY (Uid, Rest_id) values (40, 39);
insert into SEARCHED_BY (Uid, Rest_id) values (98, 69);
insert into SEARCHED_BY (Uid, Rest_id) values (63, 79);
insert into SEARCHED_BY (Uid, Rest_id) values (17, 35);
insert into SEARCHED_BY (Uid, Rest_id) values (60, 42);
insert into SEARCHED_BY (Uid, Rest_id) values (17, 56);
insert into SEARCHED_BY (Uid, Rest_id) values (46, 4);
insert into SEARCHED_BY (Uid, Rest_id) values (24, 63);
insert into SEARCHED_BY (Uid, Rest_id) values (97, 10);
insert into SEARCHED_BY (Uid, Rest_id) values (88, 62);
insert into SEARCHED_BY (Uid, Rest_id) values (28, 19);
insert into SEARCHED_BY (Uid, Rest_id) values (46, 28);
insert into SEARCHED_BY (Uid, Rest_id) values (61, 52);
insert into SEARCHED_BY (Uid, Rest_id) values (84, 4);
insert into SEARCHED_BY (Uid, Rest_id) values (100, 75);
insert into SEARCHED_BY (Uid, Rest_id) values (81, 76);
insert into SEARCHED_BY (Uid, Rest_id) values (94, 67);
insert into SEARCHED_BY (Uid, Rest_id) values (61, 24);
insert into SEARCHED_BY (Uid, Rest_id) values (29, 12);
insert into SEARCHED_BY (Uid, Rest_id) values (27, 44);
insert into SEARCHED_BY (Uid, Rest_id) values (88, 69);
insert into SEARCHED_BY (Uid, Rest_id) values (53, 55);
insert into SEARCHED_BY (Uid, Rest_id) values (37, 61);
insert into SEARCHED_BY (Uid, Rest_id) values (46, 73);
insert into SEARCHED_BY (Uid, Rest_id) values (65, 10);
insert into SEARCHED_BY (Uid, Rest_id) values (84, 96);
insert into SEARCHED_BY (Uid, Rest_id) values (81, 53);
insert into SEARCHED_BY (Uid, Rest_id) values (59, 76);
insert into SEARCHED_BY (Uid, Rest_id) values (91, 2);
insert into SEARCHED_BY (Uid, Rest_id) values (67, 93);
insert into SEARCHED_BY (Uid, Rest_id) values (11, 71);
insert into SEARCHED_BY (Uid, Rest_id) values (37, 99);
insert into SEARCHED_BY (Uid, Rest_id) values (54, 68);
insert into SEARCHED_BY (Uid, Rest_id) values (31, 94);
insert into SEARCHED_BY (Uid, Rest_id) values (3, 20);
insert into SEARCHED_BY (Uid, Rest_id) values (34, 17);
insert into SEARCHED_BY (Uid, Rest_id) values (7, 97);
insert into SEARCHED_BY (Uid, Rest_id) values (11, 97);
insert into SEARCHED_BY (Uid, Rest_id) values (95, 16);
insert into SEARCHED_BY (Uid, Rest_id) values (57, 54);
insert into SEARCHED_BY (Uid, Rest_id) values (9, 9);
insert into SEARCHED_BY (Uid, Rest_id) values (44, 1);
insert into SEARCHED_BY (Uid, Rest_id) values (22, 80);
insert into SEARCHED_BY (Uid, Rest_id) values (69, 98);
insert into SEARCHED_BY (Uid, Rest_id) values (12, 57);
insert into SEARCHED_BY (Uid, Rest_id) values (30, 23);
insert into SEARCHED_BY (Uid, Rest_id) values (84, 29);
insert into SEARCHED_BY (Uid, Rest_id) values (73, 21);
insert into SEARCHED_BY (Uid, Rest_id) values (44, 65);
insert into SEARCHED_BY (Uid, Rest_id) values (61, 37);
insert into SEARCHED_BY (Uid, Rest_id) values (9, 40);
insert into SEARCHED_BY (Uid, Rest_id) values (76, 1);
insert into SEARCHED_BY (Uid, Rest_id) values (43, 95);
insert into SEARCHED_BY (Uid, Rest_id) values (71, 23);
insert into SEARCHED_BY (Uid, Rest_id) values (64, 96);
insert into SEARCHED_BY (Uid, Rest_id) values (41, 18);
insert into SEARCHED_BY (Uid, Rest_id) values (68, 69);
insert into SEARCHED_BY (Uid, Rest_id) values (79, 99);
insert into SEARCHED_BY (Uid, Rest_id) values (12, 73);
insert into SEARCHED_BY (Uid, Rest_id) values (83, 8);
insert into SEARCHED_BY (Uid, Rest_id) values (51, 23);
insert into SEARCHED_BY (Uid, Rest_id) values (80, 15);

/*RESTAURANT_SCHEDULE Insert queries*/
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (1, 'SAT', '9:31 AM', '2:04 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (2, 'MON-FRI', '8:28 AM', '10:30 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (3, 'SAT', '9:34 AM', '10:37 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (4, 'SAT', '7:23 AM', '12:47 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (5, 'SUN', '8:34 AM', '7:09 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (6, 'SAT', '7:10 AM', '8:08 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (7, 'SUN', '8:54 AM', '12:20 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (8, 'SAT', '7:42 AM', '5:45 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (9, 'SUN', '7:54 AM', '6:44 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (10, 'MON-FRI', '7:07 AM', '5:09 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (11, 'SAT', '6:27 AM', '3:01 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (12, 'MON-FRI', '7:10 AM', '5:09 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (13, 'SUN', '8:48 AM', '10:30 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (14, 'SAT', '9:35 AM', '8:36 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (15, 'MON-FRI', '7:00 AM', '6:45 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (16, 'SAT', '8:14 AM', '12:50 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (17, 'SAT', '6:51 AM', '9:26 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (18, 'SUN', '7:19 AM', '5:16 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (19, 'SUN', '9:07 AM', '3:50 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (20, 'SAT', '6:35 AM', '8:53 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (21, 'MON-FRI', '8:26 AM', '6:26 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (22, 'SAT', '8:11 AM', '2:55 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (23, 'MON-FRI', '8:23 AM', '3:25 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (24, 'SUN', '8:24 AM', '2:12 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (25, 'SUN', '9:07 AM', '3:48 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (26, 'MON-FRI', '6:21 AM', '12:15 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (27, 'SAT', '7:30 AM', '11:49 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (28, 'SUN', '7:00 AM', '9:03 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (29, 'MON-FRI', '6:49 AM', '8:58 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (30, 'MON-FRI', '8:54 AM', '10:37 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (31, 'SUN', '9:55 AM', '8:13 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (32, 'MON-FRI', '9:54 AM', '5:47 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (33, 'MON-FRI', '6:33 AM', '12:21 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (34, 'SAT', '7:29 AM', '2:04 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (35, 'SAT', '7:05 AM', '11:51 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (36, 'SAT', '6:47 AM', '6:00 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (37, 'MON-FRI', '8:57 AM', '4:32 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (38, 'SAT', '8:12 AM', '3:29 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (39, 'MON-FRI', '6:18 AM', '9:06 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (40, 'SUN', '9:48 AM', '9:50 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (41, 'SAT', '9:25 AM', '11:23 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (42, 'SAT', '7:59 AM', '4:31 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (43, 'MON-FRI', '8:24 AM', '3:01 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (44, 'SUN', '9:31 AM', '12:29 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (45, 'SUN', '7:15 AM', '1:24 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (46, 'SUN', '9:23 AM', '2:31 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (47, 'SUN', '6:34 AM', '3:51 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (48, 'MON-FRI', '9:45 AM', '11:41 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (49, 'SAT', '9:59 AM', '8:12 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (50, 'MON-FRI', '6:38 AM', '7:20 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (51, 'SUN', '6:09 AM', '10:42 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (52, 'MON-FRI', '8:11 AM', '4:37 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (53, 'SAT', '6:06 AM', '3:54 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (54, 'SAT', '9:30 AM', '10:04 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (55, 'MON-FRI', '6:09 AM', '11:33 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (56, 'SUN', '7:27 AM', '5:05 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (57, 'SAT', '6:21 AM', '10:49 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (58, 'SUN', '6:16 AM', '4:40 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (59, 'SUN', '6:55 AM', '4:19 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (60, 'SAT', '8:12 AM', '4:26 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (61, 'SUN', '9:39 AM', '1:19 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (62, 'SAT', '6:10 AM', '4:35 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (63, 'SUN', '9:28 AM', '1:26 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (64, 'SAT', '6:35 AM', '6:06 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (65, 'SUN', '6:26 AM', '12:54 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (66, 'SAT', '6:16 AM', '1:05 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (67, 'MON-FRI', '9:27 AM', '11:43 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (68, 'MON-FRI', '9:58 AM', '11:06 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (69, 'SAT', '9:05 AM', '3:20 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (70, 'SUN', '8:59 AM', '2:40 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (71, 'MON-FRI', '9:34 AM', '10:26 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (72, 'MON-FRI', '8:25 AM', '8:46 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (73, 'SUN', '6:17 AM', '2:38 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (74, 'SUN', '8:46 AM', '10:16 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (75, 'SAT', '9:18 AM', '9:41 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (76, 'SAT', '6:38 AM', '1:58 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (77, 'MON-FRI', '7:01 AM', '3:39 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (78, 'SAT', '8:26 AM', '2:59 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (79, 'SUN', '9:42 AM', '6:08 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (80, 'SUN', '7:23 AM', '3:06 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (81, 'SAT', '9:07 AM', '11:16 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (82, 'MON-FRI', '8:35 AM', '2:13 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (83, 'SAT', '6:48 AM', '5:03 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (84, 'SAT', '8:39 AM', '6:02 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (85, 'MON-FRI', '9:00 AM', '5:18 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (86, 'MON-FRI', '9:19 AM', '3:32 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (87, 'MON-FRI', '9:57 AM', '2:05 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (88, 'SAT', '7:08 AM', '3:46 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (89, 'SUN', '8:43 AM', '10:21 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (90, 'MON-FRI', '8:07 AM', '6:24 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (91, 'MON-FRI', '7:25 AM', '9:49 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (92, 'SAT', '8:36 AM', '12:34 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (93, 'SAT', '8:21 AM', '2:00 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (94, 'MON-FRI', '7:39 AM', '6:41 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (95, 'SUN', '7:05 AM', '7:53 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (96, 'MON-FRI', '8:43 AM', '7:15 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (97, 'MON-FRI', '7:33 AM', '1:33 PM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (98, 'SAT', '7:49 AM', '4:20 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (99, 'SAT', '8:34 AM', '8:50 AM');
insert into RESTAURANT_SCHEDULE (Rest_id, Day, Start_time, End_time) values (100, 'MON-FRI', '7:55 AM', '1:38 PM');

/*REMOVE Insert queries*/
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (1, 59, 77, 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', '2020/09/28');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (2, 58, 21, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', '2020/11/20');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (3, 14, 43, 'Maecenas tincidunt lacus at velit.', '2021/02/06');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (4, 19, 64, 'Maecenas pulvinar lobortis est.', '2021/05/27');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (5, 90, 19, 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2020/11/16');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (6, 87, 33, 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', '2020/07/29');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (7, 22, 9, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2021/05/21');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (8, 38, 22, 'Aliquam quis turpis eget elit sodales scelerisque.', '2020/12/21');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (9, 86, 53, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', '2020/08/27');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (10, 88, 69, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', '2020/11/15');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (11, 29, 63, 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2021/02/16');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (12, 12, 81, 'Maecenas pulvinar lobortis est. Phasellus sit amet erat.', '2020/11/15');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (13, 66, 44, 'Nulla nisl.', '2020/09/12');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (14, 38, 60, 'Integer tincidunt ante vel ipsum.', '2020/07/02');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (15, 87, 54, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', '2020/12/21');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (16, 77, 23, 'Integer tincidunt ante vel ipsum.', '2021/02/01');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (17, 40, 15, 'In quis justo.', '2021/03/05');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (18, 48, 41, 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '2020/07/31');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (19, 21, 77, 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2021/05/26');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (20, 12, 95, 'Maecenas pulvinar lobortis est. Phasellus sit amet erat.', '2020/07/04');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (21, 59, 50, 'Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2020/07/05');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (22, 31, 53, 'Nunc purus.', '2020/09/14');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (23, 99, 36, 'Aliquam erat volutpat. In congue.', '2021/02/10');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (24, 77, 78, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', '2020/12/09');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (25, 57, 55, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', '2020/09/23');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (26, 28, 65, 'Morbi vel lectus in quam fringilla rhoncus.', '2021/05/07');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (27, 14, 55, 'Praesent blandit. Nam nulla.', '2021/05/31');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (28, 31, 7, 'Sed accumsan felis. Ut at dolor quis odio consequat varius.', '2020/08/31');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (29, 37, 45, 'Duis mattis egestas metus. Aenean fermentum.', '2021/05/21');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (30, 35, 9, 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2020/07/04');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (31, 12, 25, 'In hac habitasse platea dictumst.', '2021/05/01');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (32, 47, 23, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '2021/02/24');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (33, 51, 92, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', '2021/05/24');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (34, 20, 91, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2020/12/07');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (35, 28, 74, 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2020/07/25');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (36, 89, 19, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', '2020/07/12');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (37, 39, 82, 'Sed sagittis.', '2020/07/10');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (38, 50, 20, 'Nullam varius.', '2020/10/15');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (39, 28, 13, 'Aenean lectus. Pellentesque eget nunc.', '2020/07/16');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (40, 91, 96, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', '2021/01/06');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (41, 35, 51, 'Morbi a ipsum. Integer a nibh.', '2020/12/31');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (42, 63, 78, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '2021/01/05');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (43, 10, 40, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', '2020/12/27');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (44, 92, 57, 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2020/06/15');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (45, 42, 46, 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', '2021/01/22');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (46, 79, 20, 'Quisque ut erat. Curabitur gravida nisi at nibh.', '2020/08/30');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (47, 52, 71, 'Integer non velit.', '2020/07/20');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (48, 6, 62, 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', '2020/12/18');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (49, 79, 30, 'Vivamus tortor. Duis mattis egestas metus.', '2021/05/18');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (50, 25, 65, 'In eleifend quam a odio.', '2021/03/08');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (51, 23, 64, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', '2020/08/27');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (52, 1, 50, 'Sed accumsan felis.', '2020/11/21');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (53, 81, 98, 'In eleifend quam a odio.', '2020/12/30');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (54, 39, 4, 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', '2020/09/26');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (55, 31, 71, 'Nunc rhoncus dui vel sem. Sed sagittis.', '2021/02/06');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (56, 94, 18, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', '2020/12/17');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (57, 17, 100, 'Phasellus sit amet erat.', '2021/05/07');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (58, 14, 82, 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2021/04/11');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (59, 28, 32, 'Duis ac nibh.', '2021/03/23');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (60, 16, 2, 'Suspendisse potenti.', '2020/07/17');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (61, 47, 76, 'Cras pellentesque volutpat dui.', '2020/08/06');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (62, 23, 83, 'Nulla nisl. Nunc nisl.', '2020/08/14');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (63, 26, 82, 'Morbi vel lectus in quam fringilla rhoncus.', '2021/02/23');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (64, 97, 64, 'Maecenas ut massa quis augue luctus tincidunt.', '2021/01/13');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (65, 82, 32, 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.', '2020/12/20');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (66, 47, 91, 'Phasellus sit amet erat. Nulla tempus.', '2020/10/01');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (67, 68, 16, 'Etiam vel augue. Vestibulum rutrum rutrum neque.', '2020/08/23');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (68, 74, 84, 'Etiam justo.', '2020/06/15');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (69, 1, 34, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', '2021/03/20');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (70, 88, 83, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', '2021/04/06');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (71, 93, 84, 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', '2020/09/22');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (72, 97, 43, 'Etiam justo. Etiam pretium iaculis justo.', '2021/01/30');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (73, 22, 100, 'Etiam pretium iaculis justo.', '2021/01/06');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (74, 9, 22, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', '2021/04/21');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (75, 94, 99, 'In hac habitasse platea dictumst.', '2020/11/12');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (76, 76, 10, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', '2021/02/06');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (77, 83, 79, 'Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2020/12/08');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (78, 84, 79, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2020/10/01');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (79, 19, 33, 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', '2021/01/16');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (80, 92, 70, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', '2020/08/03');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (81, 24, 74, 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '2020/11/02');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (82, 98, 27, 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', '2020/11/26');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (83, 1, 82, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '2021/04/12');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (84, 57, 47, 'Aenean sit amet justo. Morbi ut odio.', '2020/07/24');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (85, 2, 71, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', '2020/06/25');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (86, 99, 39, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis.', '2020/08/15');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (87, 64, 89, 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', '2020/06/16');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (88, 78, 94, 'Proin eu mi.', '2020/07/22');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (89, 1, 87, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '2021/03/22');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (90, 63, 49, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', '2020/12/25');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (91, 67, 66, 'Cras non velit nec nisi vulputate nonummy.', '2020/08/13');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (92, 61, 72, 'Sed vel enim sit amet nunc viverra dapibus.', '2020/07/10');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (93, 2, 37, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', '2020/10/13');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (94, 12, 27, 'Vivamus vestibulum sagittis sapien.', '2020/09/11');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (95, 89, 2, 'Nulla ac enim.', '2020/10/03');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (96, 86, 22, 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '2020/07/05');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (97, 3, 93, 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.', '2020/08/10');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (98, 92, 78, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', '2021/02/17');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (99, 63, 83, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', '2020/09/14');
insert into REMOVE (Rem_id, Eid, Rid, Rem_description, Rem_date) values (100, 29, 42, 'Nam nulla.', '2020/06/22');


#This query updates restaurant ratings based on the review input
#UPDATE RESTAURANT 
#SET Rating = (SELECT AVG(Rating) FROM REVIEW, WRITE_REVIEW
#WHERE WRITE_REVIEW.Rid = REVIEW.Rid AND RESTAURANT.Rest_id = WRITE_REVIEW.Rest_id);

/*This function is to update restaurant rating every time a review is written
delimiter //
CREATE TRIGGER Restaurant_Update AFTER INSERT ON REVIEW 
	FOR EACH ROW 
	BEGIN 
		UPDATE RESTAURANT 
		SET Rating = (SELECT AVG(Rating) FROM REVIEW, WRITE_REVIEW
		WHERE WRITE_REVIEW.Rid = REVIEW.Rid AND RESTAURANT.Rest_id = WRITE_REVIEW.Rest_id);
	END; 
delimiter;
*/
		