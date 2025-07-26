#Exercise 1 
CREATE TABLE bank_db;
USE bank_db;

CREATE TABLE employees1(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL ,
desig VARCHAR(50) DEFAULT 'Probation',
dept VARCHAR(50)
);

DESC employees1 ;

ALTER TABLE employees1 AUTO_INCREMENT=101;

INSERT INTO employees1(name,desig,dept)
VALUES ('Raju','Manager','LOAN'),
       ('Sham','Cashier','Cash'),
       ('Paul','Associate','LOAN'),
       ('Alex','Accountant','Account'),
       ('victor','Associate','Deposit');

SELECT * FROM employees1;

SELECT emp_id ,name FROM employees1 ;

























































