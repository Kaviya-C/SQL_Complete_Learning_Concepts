-- DDL   CREATE ALTER DROP TRUNCATE RENAME
CREATE DATABASE DEMO;
USE DEMO;
SHOW TABLES;

CREATE TABLE EMP(ID INT,FIRST_NAME VARCHAR(20),AGE INT);

INSERT INTO EMP VALUES(1,'KAVIYA',22),(2,'UV',23),(3,'GEETHA',24);

-- ALTER COMMAND TO ADD A NEW COLUMN
ALTER TABLE EMP
ADD COLUMN EMAIL VARCHAR(30)
DEFAULT 'yahoo@123gmail.com';


SELECT * FROM EMP;

-- ALTER COMMAND TO DROP A COLUMN
ALTER TABLE EMP
DROP COLUMN EMAIL;

-- ALTER COMMAND TO RENAME A TABLE NAME
ALTER TABLE EMP
RENAME TO SAMPLE;


-- ALTER COMMAND TO MODIFY THE COLUMN DATA TYPE
ALTER TABLE SAMPLE
MODIFY COLUMN FIRST_NAME VARCHAR(40);

-- ALTER COMMAND TO MODIFY THE COLUMN NAME
ALTER TABLE SAMPLE
RENAME COLUMN FIRST_NAME TO FULL_NAME;

SELECT * FROM SAMPLE;

-- TRUNCATE WILL DELETE ONLY THE RECORDS NOT THE STRUCTURE AND NOT THE TABLE
TRUNCATE TABLE SAMPLE;

-- DROP THE TABLE WILL DELETE THE STRUCTURE AND RECORDS IN THE TABLE
DROP TABLE SAMPLE;