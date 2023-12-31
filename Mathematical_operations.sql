-- mathematical functions in mysql:

-- FLOOR
-- CEIL
-- ROUND
-- ABS
-- LOG
-- LOG10
-- POWER
-- RAND
-- SQRT
-- EXP
-- MOD

-- abs
-- absolute it gives  absolute values
-- IT GIVES ONLY POSITIVE VALUES
SELECT ABS(-23) AS ABSOLUTE;

-- CEIL
-- THIS WILL ROUND UP TO THE NEXT NUMBER
SELECT CEIL(34.1) AS CEIL;

-- FLOOR
-- THIS WILL ROUND UP THEN DOWN THE VALUE
SELECT FLOOR(23.9) AS FLOOR;

-- ROUND
-- THIS WILL ROUND THE VALUES AND ALSO WE CAN MENTION 
-- HOW MANY DECIMAL POINTS WE NEED?
SELECT ROUND(45.50) AS ROUND;
SELECT ROUND(22.934532112,1) AS ROUND_DECIMAL;

-- CEIL IS TO ROUND UP TO THE NEXT INTEGER VALUES
SELECT CEIL(3.1) AS CEIL;

-- FLOOR IS TO ROUND UP AND DOWN THE VALUES
SELECT FLOOR(2.999) AS FLOOR;

SELECT ROUND(3.6543,3) AS ROUND;

-- POWER
SELECT POWER(3,4) AS POWER;

-- SQRT
SELECT SQRT(144) AS SQUARE_ROOT;

-- EXP
-- EULERS VALUE IS APPROXIMATELT 2.71828
SELECT EXP(1) AS EXPONENT;

-- LOG
SELECT LOG(80) AS LOG;

-- LOG10
SELECT LOG10(900) AS LOG10;

-- RAND
SELECT FLOOR(1+RAND()*20) AS RANDOM;

-- MOD
SELECT MOD(419 ,3) AS MODULO;

SELECT FLOOR(1+RAND()*10) AS RANDOM_NUMBER;