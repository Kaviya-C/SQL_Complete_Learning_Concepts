USE SQL_FULL;

CREATE TABLE EMP
(
EMP_ID INT NOT NULL,
EMP_NAME VARCHAR(20),
AGE INT
);

INSERT INTO EMP VALUES(1,'KAVI',22),(2,'HEENA',27),(3,'RAM',24),(4,'TANU',33);
-- WE CAN DELETE THE PARTICULAR ROWS IN A TABLE USING DELETE COMMAND IN SQL
DELETE FROM EMP WHERE EMP_ID = 2;

SELECT * FROM EMP;
-- WE CAN ALSO DELETE ALL THE ROWS BY USING DELETE COMMAND WITHOUT USING WHERE CONDITION IN SQL
DELETE FROM EMP;

SELECT * FROM EMP;

DROP TABLE EMP;

TRUNCATE TABLE EMP;


-- FOR DELETE COMMAND THE PARTICULAR ROWS OR COMPLETE ROWS ONLY DELETED NOT THE STRUCTER OF THE TABLE 

-- WHILE COMING TO DROP TABLE TABLE_NAME;
                       -- STRUCTURE OF THE TABLE ARE DELETED
                       -- AFTER DROP THE TABLE 
                       -- TRY TO EXECUTE THE SELECT * FROM TABLE_NAME
                       -- IT SHOWS TABLE DOES NOT EXISTS
                       -- THIS MEAN THE WHOLE STRUCTURE AND RECORDS IN THE TABLE ARE DELETED
					   -- THIS WILL DELETE ENTIRE TABLE PERMANENTLY
                       
-- WHILE COMING TO TRUNCATE
					   -- HERE ALL THE ROWS TO BE DELETED 
                       -- WE CANNOT DELETE THE PARTICULAR ROWS IN THE TABLE
                       -- WHERE CLAUSE IS NOT SUPPORTED IN TRUNCATE
                       -- TRUNCATE TABLE TABLE_NAME
                       -- THIS WILL DELETE ALL THE ROWS IN THE TABLE NOT THE STRUCTURE
                       -- THE STRUCTURE REMAINS THERE 
                       -- AFTER TRUNCATE TRY TO EXECUTE THE SELECT * FROM TABLE_NAME
                       -- THIS WILL DISPLAY THE COLUMN NAME 
-- -----------------------------------------------------------------------------------------------------

-- DIFFERENCES
-- TRUNCATE              DELETE ALL THE RECORDS
       --                DOES NOT SUPPORT WHERE CLAUSE
       --                DELETE ONLY THE RECORDS NOT THE STRUCTURE OF THE TABLE
       --                SYNTAX :  
       --                               TRUNCATE TABLE TABLE_NAME   
-- ------------------------------------------------------------------------------------------------------------
       -- DELETE   
                          -- DELETE FROM TABLE_NAME WHERE COLUMN= VALUE;
                          -- THIS WILL DELETE THE PARTICULAR ROWS IN A TABLE
                          -- IF WE NOT MENTION ANY WHERE CONDITION THEN ALL THE RECORDS IN THE TABLE WILL BE DELETED
                          -- ONLY RECORDS ARE DELETED NOT THE STRUCTURE OF THE TABLE
     -- ----------------------------------------------------------------------------------------------------
     -- DROP
						  -- DROP TABLE TABLE_NAME
                          -- THIS WILL DELETE ALL THE RECORDS AND STRUCTURE OF THE TABLE
                          -- AFTER DROP COMMAND IF WE EXECUTE SELECT * FROM TABLE_NAME
                          -- IT SHOWS THE TABLE DOES NOT EXIST
   -- ---------------------------------------------------------------------------------------------------                       
		-- BUT IN DELETE AND TRUNCATE 
                   -- AFTER DELETE AND TRUNCATE
                   -- IF WE EXECUTE SELECT * FROM TABLE_NAME
                   -- THE STRUCTURE WILL BE DISPLAYED
                   -- THE STRUCTURE CONTAINS COLUMN NAME 
                   -- THIS STRUCTURE REMAINS THERE AFTER THE DELETE AND TRUNCATE COMMANDS
     -- ------------------------------------------------------------------------------------------------------              









