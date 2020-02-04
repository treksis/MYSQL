SELECT * FROM salesman; #select command
SELECT "This is SQL Exercise, Practice and Solution"; #how to write a text
SELECT 10 + 15 - 5 * 2;
SELECT name, commission FROM salesman;
SELECT ord_date, salesman_id, ord_no, purch_amt
FROM orders;

SELECT DISTINCT salesman_id
FROM orders; # Get rid of existing stuff in specific column 

SELECT name, salesman_id FROM salesman WHERE city = 'Paris'; #get data from specifically in other column

SELECT *FROM customer
WHERE grade=200; # with statement

SELECT ord_no, ord_date, purch_amt FROM orders WHERE salesman_id = '5001'; # same thing ez

SELECT year,subject,winner 
FROM nobel_win 
WHERE year=1970; 

SELECT winner
  FROM nobel_win
 WHERE year = 1971
   AND subject = 'Literature';
   
   SELECT YEAR, SUBJECT FROm nobel_win WHERE WINNER = 'Dennis Gabor';
   
   SELECT 
    winner
FROM
    nobel_win
WHERE
    year >= 1950 AND subject = 'Physics';
    
    SELECT * FROM nobel_win WHERE subject = 'Chemistry' AND year >= 1965 AND year <=1975;
    
    
    SELECT * FROM nobel_win
 WHERE year >1972
  AND winner IN ('Menachem Begin',
                  'Yitzhak Rabin');
                  
SELECT * FROM nobel_win WHERE WINNER LIKE 'Louis%';

SELECT WINNER FROM nobel_win WHERE year = 1970 AND subject NOT IN ('Physiology','Economics');

SELECT * FROM nobel_win
WHERE SUBJECT NOT LIKE 'P%'
ORDER BY year DESC, winner;

SELECT *
FROM nobel_win
WHERE year=1970 
ORDER BY
 CASE
    WHEN subject IN ('Economics','Chemistry') THEN 1
    ELSE 0
 END ASC,
 subject,
 winner;
 
 
 SELECT * FROM item_mast
WHERE pro_price BETWEEN 200 and 600;

SELECT AVG(pro_price) FROM item_mast
WHERE pro_com = 16;

SELECT pro_name as "Item Name", pro_price AS "Price in Rs."
    FROM item_mast;
    
    
SELECT * FROM item_mast
WHERE PRO_PRICE >=250
ORDER BY pro_price DESC, pro_name;


SELECT AVG(pro_price), pro_com
    FROM item_mast
GROUP BY pro_com;

SELECT pro_name, pro_price FROM item_mast
ORDER BY pro_price ASC;

SELECT pro_name, pro_price FROM item_mast
WHERE pro_price = (SELECT MIN(pro_price) FROM item_mast);

SELECT DISTINCT(EMP_LNAME) FROM emp_details;

SELECT * 
 FROM emp_details 
  WHERE emp_lname= 'Snares';
  
  SELECT * FROM emp_details WHERE EMP_DEPT = 57;
