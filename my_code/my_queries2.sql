

#Exercise 2

USE bank_db;

CREATE TABLE employees2(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL ,
desig VARCHAR(50) DEFAULT 'Probation',
dept VARCHAR(50)
);

DESC employees2 ;

ALTER TABLE employees2 AUTO_INCREMENT=101;

INSERT INTO employees2(name,desig,dept)
VALUES ('Raju','Manager','LOAN'),
       ('Sham','Cashier','Cash'),
       ('Paul','Associate','LOAN'),
       ('Alex','Accountant','Account'),
       ('victor','Associate','Deposit');

SELECT * FROM employees2 WHERE dept='LOAN';

SELECT * FROM employees2 WHERE emp_id = 101;

SELECT emp_id ,name FROM employees2 WHERE emp_id = 101;

update employees2    
SET dept='IT'
WHERE emp_id=103;

SELECT * FROM employees2;

DELETE FROM employees2
WHERE name ='sham';


SELECT * FROM employees2;














































