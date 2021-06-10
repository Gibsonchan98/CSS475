drop table EMPLOYEE;
drop table DEPARTMENT;
drop table DEPT_LOCATIONS;
drop table PROJECT;
drop table DEPENDENT;
drop table WORKS_ON;

CREATE TABLE EMPLOYEE
(Fname VARCHAR(15) NOT NULL, Minit CHAR, Lname VARCHAR(15) NOT NULL ,
Ssn CHAR(9) NOT NULL ,
bdate DATE ,
address VARCHAR(30),
sex CHAR,
salary decimal(10,2),
super_ssn char(9),
dno INT,
primary key (Ssn)
);


CREATE TABLE DEPARTMENT
(
dname VARCHAR(15) NOT NULL ,
dnumber INT NOT NULL ,
mgr_ssn CHAR(9),
mgr_start_date date,
PRIMARY KEY (dnumber), 
unique(dname)
);

 


CREATE TABLE DEPT_LOCATIONS
(
dnumber INTEGER NOT NULL,
dlocation VARCHAR(15) NOT NULL,
PRIMARY KEY (dnumber,dlocation)
);

CREATE TABLE PROJECT
(
pname VARCHAR(15) NOT NULL ,
pnumber INT NOT NULL ,
plocation VARCHAR(15) ,
dnum INT,
PRIMARY KEY (pnumber),
unique(pname)
);

CREATE TABLE WORKS_ON
(
essn char(9) NOT NULL ,
pno INT NOT NULL ,
hours decimal(3,1),
PRIMARY KEY (essn,pno)
);

CREATE TABLE DEPENDENT
(
essn char(9) NOT NULL,
dependent_name VARCHAR(15) NOT NULL,
sex CHAR ,
bdate DATE,
relationship VARCHAR(8),
PRIMARY KEY (essn, dependent_name)
);


insert into EMPLOYEE values ('John', 'B', 'Smith', 123456789, '1965-01-09','731 Tardis, Gallifrey, WA','M',30000, 333445555, 5);
insert into EMPLOYEE values ('Gandalf', 'T', 'Grey', 333445555, '1955-12-08','638 Cedar, Seattle, WA','M',40000, 888665555, 5);
insert into EMPLOYEE values ('Luke', 'J', 'Skywalker', 999887777, '1968-01-19','3321 Castle, Gallifrey, WA','F',25000, 987654321, 4);
insert into EMPLOYEE values ('Snow', 'S', 'White', 987654321, '1981-06-20','291 Berry, Bellevue, WA','F',43000, 888665555, 4);
insert into EMPLOYEE values ('Frodo', 'K', 'Baggins', 666884444, '1982-09-15','975 Fire Oak, Gallifrey, WA','M',38000, 333445555, 5);
insert into EMPLOYEE values ('Dean', 'A', 'Winchester', 453453453, '1972-07-31','5631 Rice, Seattle, WA','M',25000, 333445555, 5);
insert into EMPLOYEE values ('Egon', 'V', 'Spengler', 987987987, '1969-03-29','980 Elm, Seattle, WA','M',25000, 987654321, 4);
insert into EMPLOYEE values ('Hocky', 'E', 'Parsons', 888665555, '1987-11-10','450 Stone, Seattle, WA','M',55000, NULL, 1);


insert into DEPARTMENT values ('Research', 5, 333445555, '1988-05-22');
insert into DEPARTMENT values ('Administration', 4, 987654321, '1995-01-01');
insert into DEPARTMENT values ('Headquarter', 1, 888665555, '1981-06-19');


insert into DEPT_LOCATIONS values(1, 'Seattle'),(4,'Stafford'),(5,'Bellevue'),(5,'Gallifrey'),(5,'Seattle');

INSERT INTO PROJECT VALUES ('ProductX', 1, 'Bellevue', 5);
INSERT INTO PROJECT VALUES ('ProductY', 2, 'Gallifrey', 5);
INSERT INTO PROJECT VALUES ('ProductZ', 3, 'Seattle', 5);
INSERT INTO PROJECT VALUES ('Computerization', 10, 'Stafford', 4);
INSERT INTO PROJECT VALUES ('Reorganization', 20, 'Seattle', 1);
INSERT INTO PROJECT VALUES ('Newbenefits', 30, 'Stafford', 4);



insert into WORKS_ON values
(123456789, 1, 32.5), 
(123456789, 2, 7.5),
(666884444, 3, 40.0),
(453453453, 1, 20.0),
(453453453,2, 20.0),
(333445555, 2, 10.0),
(333445555,3, 10.0), 
(333445555, 10, 10.0),
(333445555, 20, 10.0), 
(999887777, 30, 30.0), 
(999887777, 10, 10.0), 
(987987987, 10, 35.0),
(987987987, 30, 5.0),
(987654321, 30, 20.0), 
(987654321, 20, 15.0), 
(888665555, 20, NULL);

insert into DEPENDENT values(333445555, 'Alice','F', '1986-04-05','Daughter'),(333445555, 'Theodore','M', '1983-10-25','Son'),(333445555, 'Joy','F', '1958-05-03','Spouse'),(987654321, 'Charming','M', '1942-02-28','Spouse'),(123456789, 'Michael','M', '1988-01-04','Son'),(123456789, 'Alice','F', '1988-12-30','Daughter'),(123456789, 'River','F', '1967-05-05','Spouse');

