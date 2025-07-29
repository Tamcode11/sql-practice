
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

# EXERCISE 5 

# 1:  Find Total no. of employees in database?
SELECT COUNT(fname) FROM employees3;
# 2: Find no. of employees in each department.
SELECT dept , COUNT(*) FROM employees3 GROUP BY dept;
# 3: Find lowest salary paying
SELECT MIN(SALARY) FROM employees3;
# 4: Find highest salary paying
SELECT MAX(SALARY) FROM employees3;
# 5: Find total salary paying in Loan department?
SELECT SUM(SALARY) FROM employees3 WHERE dept="LOAN"
# 6: Average salary paying in each department
SELECT dept ,AVG(SALARY) FROM employees3 GROUP BY dept ;