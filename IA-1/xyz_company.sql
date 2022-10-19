DROP DATABASE IF EXISTS XYZ;
CREATE DATABASE XYZ;
USE XYZ;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
    GENDER ENUM('Female','Male'),
	SALARY DECIMAL(10,2),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, GENDER, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Kwame', 'Asare','Male', 1000.00, '2020-02-20 09.00.00', 'HR'),
		(002, 'Issac', 'Lamptey','Male', 800.00, '2021-06-11 09.00.00', 'Admin'),
		(003, 'John', 'Kummah','Male', 3000.00, '2020-02-20 09.00.00', 'HR'),
		(004, 'Alice', 'Arthor','Female', 5000.00, '2021-06-20 09.00.00', 'Admin'),
		(005, 'Venice', 'Brown','Female', 5000.00, '2021-06-11 09.00.00', 'Admin'),
		(006, 'Elcy', 'Adjie','Female', 2000.00, '2021-06-11 09.00.00', 'Account'),
		(007, 'Joycelyn', 'Armah','Female', 750.00, '2021-01-20 09.00.00', 'Account'),
		(008, 'Gideon', 'Adjie','Male', 900.00, '2020-04-11 09.00.00', 'Admin'),
        (009, 'kojo', 'Asare','Male', 1000.00, '2020-02-20 09.00.00', 'HR'),
		(0010, 'Ismael', 'Lamptey','Male', 800.00, '2021-06-11 09.00.00', 'Admin'),
		(0011, 'Jonattan', 'Kummah','Male', 3000.00, '2021-02-20 09.00.00', 'HR'),
		(0012, 'Elsie', 'Arthor','Female', 5000.00, '2021-06-20 09.00.00', 'Admin'),
		(0013, 'Vera', 'Brown','Female', 5000.00, '2020-06-11 09.00.00', 'Admin'),
		(0014, 'Evelyn', 'Adjie','Female', 2000.00, '2021-06-11 09.00.00', 'Account'),
		(0015, 'Juan', 'Armah','Female', 750.00, '2021-01-20 09.00.00', 'Account'),
		(0016, 'Evans', 'Adjie','Male', 900.00, '2020-04-11 09.00.00', 'Admin');

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT DECIMAL (10,2),
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');