# EXERCISE 3 


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

#TASK 1 

SELECT CONCAT_WS(':',emp_id,fname,desig,dept) FROM employees3;

#TASK 2 (Function in Function method)

SELECT CONCAT_WS(':',emp_id,CONCAT(fname,' ',lname),desig,dept) FROM employees3;

#TASK 3 

SELECT CONCAT_WS(':',emp_id,fname,UPPER(desig),dept) FROM employees3 WHERE emp_id=101;

SELECT CONCAT('L',CONCAT(emp_id,' ',fname)) FROM employees3 WHERE emp_id =101;





