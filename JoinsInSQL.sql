-- JOINS --  RETRIVE DATA FROM MULTIPLE TABLES

-- ANSI FORMAT AND NON-ANSI FORMAT
-- ANSI AGAIN DIVIDED INTO -------------> INNER JOIN
						   -- ----------> OUTER JOIN
                                            -- LEFT OUTER JOIN
                                            -- RIGHT OUTER JOIN
                                            -- FULL OUTER JOIN
						   -- -----------> CROSS JOIN
-- NON ANSI DIVIDED INTO 3
                    -- BASED ON WHERE KEYWORD THEN JOINING CONDITION
                     -- ---> EQUI-JOIN
                     -- ---> NON-EQUI JOIN
                     -- ---> SELF JOIN

-- WE CAN USE ANSI  BY
                       -- USE ON KEYWORD THEN JOINIG CONDITION
                       -- SELECT * FROM TABLE-1 
                       -- JOIN KEY TABLE-2
                       -- ON TABLE-1.COLUMN_NAME = TABLE-2.COLUMN_NAME
-- WE CAN USE NON-ANSI BY
                      -- USE WHERE KEYWORD THEN JOINING CONDITION
      
      
-- INNER JOIN IS THE CONDITION WE CAN USE
-- BOTH TABLE HAVING SAME COULMN
-- BOTH TABLE HAVING SAME COLUMN TYPE
-- MATCHING ROWS OR MATCHING CONDITION
-- RETRIVE THE MATCHED DATA ONLY BASED ON EQUALITY

USE SQL_FULL;

CREATE TABLE STUDENT
(
STUD_ID VARCHAR(15) NOT NULL,
STUD_NAME VARCHAR(30),
COURSE_ID VARCHAR(20) NOT NULL
);
DROP TABLE COURSE;

CREATE TABLE COURSE
(
COURSE_ID VARCHAR(20) NOT NULL,
COURSE_NAME VARCHAR(40),
COURSE_FEE decimal(5,2)
);
DESCRIBE STUDENT;
SELECT * FROM STUDENT;

INSERT INTO STUDENT(STUD_ID,STUD_NAME,COURSE_ID) VALUES (1,'John mathew',10);
INSERT INTO STUDENT(STUD_ID,STUD_NAME,COURSE_ID) VALUES (2,'VijayRaghavan',20);
INSERT INTO STUDENT(STUD_ID,STUD_NAME,COURSE_ID) VALUES (3,'Sriveni',80),(4,'Heena',50);

SELECT * FROM COURSE;

INSERT INTO COURSE(COURSE_ID,COURSE_NAME,COURSE_FEE) VALUES(40,'JAVA_FULLSTACK_DEVELOPMENT',100),
(30,'TESTING',290);


INSERT INTO COURSE(COURSE_ID,COURSE_NAME,COURSE_FEE) VALUES(10,'WEB DEVELOPMENT',600),
(20,'MYSQL',500);

SELECT * FROM STUDENT AS STUD
INNER JOIN COURSE AS COUR
ON STUD.COURSE_ID = COUR.COURSE_ID;
















