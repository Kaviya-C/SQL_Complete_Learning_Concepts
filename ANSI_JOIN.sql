-- OUTER JOIN
-- WE CAN ABLE TO TAKE BOTH MATCHING AND UNMATCHING DATA FROM THE TABLES
-- HERE WE ARE NOT LOOSE ANY DATA
-- OUTER --RETRIEVE MATCHED AND UNMATCHED DATA FROM THE TABLES
-- LEFT OUTER
-- RIGHT OUTER
-- FULL OUTER
-- BASED ON ABOVE KEYS WE CAN RETRIEVE THE DATA FROM THE TABLES

-- left outer join
             -- LEFT OUTER MEAN ---------> RETRIEVE MATCHING DATA FROM BOTH TABLES
                               -- -------> ALONG WITH UNMATCHING DATA FROM THE LEFT SIDE TABLES
                               -- -------> RIGHT SIDE TABLE DATA TO BE NULL
SELECT * FROM STUDENT AS S
LEFT OUTER JOIN COURSE AS C
ON S.COURSE_ID = C.COURSE_ID;

-- RIGHT OUTER JOIN
                          -- -------> RIGHT OUTER JOIN MEANT 
                          -- --------> MATCHED DATA FROM BOTH THE TABLES
                          -- ---------> DISPLAY THE UNMATCHED DATA FROM THE RIGHT SIDE TABLES
                          -- ----------> UNMATCHED DATA FROM THE LEFT SIDE TABLE TO BE NULL

SELECT * FROM  STUDENT AS S
RIGHT OUTER JOIN COURSE AS C
ON S.COURSE_ID = C.COURSE_ID 
ORDER BY C.COURSE_ID ASC;

SELECT * FROM STUDENT AS S
RIGHT OUTER JOIN COURSE AS C
ON S.COURSE_ID = C.COURSE_ID;

-- FULL OUTER JOIN   
                  -- ------------> FULL OUTER JOIN IS NOT DIRECTLY SUPPORTED IN MYSQL
                  -- ------------> WE CAN IMPLEMENT BY USING LEFT OUTER UNION RIGHT OUTER
                   -- ------------> FULL OUTER JOIN MEAN RETRIEVE ALL THE DATA FROM BOTH THE TABLES
                   
SELECT * FROM STUDENT AS S
LEFT OUTER JOIN COURSE AS C
ON S.COURSE_ID = C.COURSE_ID
UNION
SELECT * FROM STUDENT AS S
RIGHT OUTER JOIN COURSE AS C
ON S.COURSE_ID= C.COURSE_ID;


-- CROSS JOIN
 
			-- ------------> PRODUCT OF ROWS
			-- ------------->  WE CAN MERGE TWO OR MORE THAN TWO TABLES BY USING CROSS JOIN
            -- -------------> HERE WE NOT USE ANY WHERE CONDITION [ NO NEED TO USE WHERE CONDITION]
            
SELECT * FROM STUDENT CROSS JOIN COURSE ORDER BY STUDENT.COURSE_ID;

-- NATURAL JOIN

--  THIS IS THE JOIN WHERE SAME COLUMN WILL COME ONLY ONCE
-- CROSS JOIN  DISPLAY THE SAME COLUMN AS IT IS 
-- EVEN THOUGH ALL THE TABLE HAVING SAME COLUMN NAME IT DISPLAY ALL THE 
-- SAME COLUMN AS MANY AS WANTS




-- THIS IS NOT SUPPORTED BY MYSQL SERVER
-- TO AVOID DUPLICATE COLUMNS FROM OUR JOIN TABLES
-- WITH DUPLICATES RETRIEVE DATA IS INNER JOIN
-- WITHOUT DUPLICATES  RETRIEVE DATA IS NATURAL JOIN
-- THIS PROCESS CAN BE DONE IN EQUI JOIN TOO


SELECT * FROM STUDENT
CROSS JOIN COURSE;

SELECT * FROM STUDENT
NATURAL JOIN COURSE;


-- CONCLUSION 
	-- INNER JOIN
                                  -- RETRIEVE ONLY MATCHED DATA FROM THE TABLE
                                  -- DATA RETRIEVED BASED ON EQUALITY
                                  -- ANSI FORMAT (NEW STYLE FORMAT)
                                  
				-- eg:-------------------------------------------------------
                                  -- SELECT * FROM STUDENT
                                  -- INNER JOIN COURSE
                                  -- ON STUDENT.COURSE_ID = COURSE.COURSE_ID;
			   -- -----------------------------------------------------------
                  
                  
	  -- LEFT OUTER JOIN
                              -- LEFT OUTER JOIN  OR LEFT JOIN  BOTH ARE SAME
                              --  RETRIEVE DATA BOTH MATCHING AND UNMATCHING DATA FROM THE TABLE
                              -- MATCHED DATA FROM BOTH TABLES
                              -- UNMATCHED DATA OF LEFT SIDE TABLES WILL BE DISPLAYED
                              -- UNMATCHED DATA OF RIGHT SIDE TABLES WILL BE NULL IN THIS CASE
                   -- EG:------------------------------------------------------------------
                             -- SELECT * FROM STUDENT AS S
                             -- LEFT OUTER JOIN COURSE AS C
                             -- ON S.COURSE_ID = C.COURSE_ID;
                   -- --------------------------------------------------------------------------
                   
     -- RIGHT OUTER JOIN
                            -- RETRIEVE BOTH MATCHED AND NOT MATCHED DATA
                            -- MATCHED DATA FROM BOTH THE TABLES
                            -- UNMATCHED DATA OF RIGHT SIDE TABLES TO BE DISPLAYED
                            -- UNMATCHED DATA OF LEFT SIDE TABLES TO BE NULL IN THIS CASE
				-- EG:----------------------------------------------------------------------------
                
                            -- SELECT * FROM STUDENT AS S
                            -- RIGHT OUTER JOIN COURSE AS C
                            -- ON S.COURSE_ID = C.COURSE_ID;
		       -- -------------------------------------------------------------------------
     -- FULL OUTER JOIN
                             -- FULL OUTER JOIN IS NOT DIRECTLY SUPPORTED BY MYSQL
                             -- WE CAN USE UNION IN THIS CASE
			-- EG: ---------------------------------------------------------------------
                             -- SELECT * FROM STUDENT AS S
                             -- LEFT OUTER JOIN COURSE AS C
                             -- ON S.COURSE_ID= C.COURSE_ID
                             -- UNION
                             -- SELECT * FROM STUDENT AS S
                             -- RIGHT OUTER JOIN COURSE AS C
                             -- ON S.COURSE_ID = C.COURSE_ID;
			-- -----------------------------------------------------------------------------
   -- CROSS JOIN
                     -- THIS IS THE JOIN WE CAN USE WITHOUT THE CONDITION 'ON' IN THIS CASE
                     --  PRODUCT OF ROWS IS CROSS JOIN
                     -- HOW MANY ROWS THERE THAT MULTIPLICATION IS THE OUTPUT
                     -- EVEN THOUGH TABLE HAVING SAME COLUMN
                     -- IT JUST MULTIPLY THEN IT IS DISPLAYED
		-- EG: ----------------------------------------------------------------------------
                         -- SELECT * FROM STUDENT
                         -- CROSS JOIN COURSE
	   -- --------------------------------------------------------------------------------
	-- NATURAL JOIN
                        -- THIS IS THE JOIN WHERE DUPLICATE COLUMN ARE NOT SHOWN
                        -- DUPLICATE COLUMN REMOVED AND WE CAN USE WITHOUT THE CONDITIONS
		-- EG: ----------------------------------------------------------------------------
                          -- SELECT * FROM STUDENT 
                          -- NATURAL JOIN COURSE;
		-- ---------------------------------------------------------------------------------
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        