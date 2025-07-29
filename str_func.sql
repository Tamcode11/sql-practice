
USE bank_db;
CREATE TABLE employees3(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
fname VARCHAR(100),
lname VARCHAR(100),
desig VARCHAR(100) DEFAULT 'Probation',
dept VARCHAR(100)
);

ALTER TABLE employees3 AUTO_INCREMENT = 101;

INSERT INTO employees3(fname ,lname,desig,dept)
VALUES ("KAPIL","SHARMA","Manager","LOAN"),
       ("RAJU","RASTOGI","ACCOUNTANT","ACCOUNT"),
       ("RISHI","KAPOOR","CASHIER","CASH"),
       ("FEROZ","KHAN","MANAGER","DEPOSIT");
       
SELECT * FROM employees3;


SELECT DISTINCT fname FROM employees3;

SELECT * FROM employees3 ORDER BY fname;

SELECT * FROM employees3 WHERE dept LIKE "%ACC%";

SELECT * FROM employees3 LIMIT 2;

# ADD NEW COLUMN SALARY 
ALTER TABLE employees3 
ADD COLUMN 
SALARY INT NOT NULL DEFAULT 25000;

UPDATE employees3 
SET SALARY =10000
WHERE emp_id =101;

UPDATE employees3 
SET SALARY =10000
WHERE emp_id =102;

UPDATE employees3 
SET SALARY =30000
WHERE emp_id =103;

SELECT * FROM employees3;

SELECT fname FROM employees3 GROUP BY  fname;  

 SELECT dept, COUNT(fname) FROM employees3 GROUP
 BY dept;

SELECT COUNT(*) FROM employees3;

SELECT MAX(SALARY) FROM employees3; 

SELECT MIN(SALARY) FROM employees3; 

SELECT SALARY ,COUNT(fname) FROM employees3 WHERE SALARY =10000;

SELECT SUM(SALARY) FROM employees3;

SELECT AVG(SALARY) FROM employees3;

# EXERCISE 4 

 # 1:  Find Different type of departments in database?
 SELECT DISTINCT dept FROM employees3;
 # 2: Display records with High-low salary
 SELECT emp_id ,fname,lname,desig,dept, SALARY FROM employees3 ORDER BY (SALARY) ;
 #3: How to see only top 3 records from a table?
 SELECT * FROM employees3 LIMIT 3;
 # 4: Show records where first name start with letter 'R'
 SELECT emp_id,fname,lname,desig,dept ,SALARY  FROM employees3 WHERE fname LIKE "%R%";
 # 5: Show records where length of the lname is 4 characters  
SELECT emp_id,fname,lname,desig,dept ,SALARY  FROM employees3 WHERE lname LIKE "____";