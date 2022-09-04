Data types:
===========
NUMBER  -  NUMBER, NUMBER(3), NUMBER(6,2)
VARCHAR2 - CHAR(2000), VARCHAR(2000), VARCHAR(4000), LONG(2GB)
DATE - DATE

SELECT - show the data
CREATE - create a table
INSERT - insert the data
UPDATE - update the records/data in a table
DELETE - delete the records


Create own table:
=================
--To create a table, table name should be single word or else you have to give a underscore for multiple words to join as single word
CREATE TABLE FOOD_VERAITIES
(
    FOOD_ID NUMBER(3),
    FOOD_ITEM_NAME VARCHAR2(100),
    PRICE NUMBER(6,2),
    CATEGORIES CHAR(3)
)

SELECT * FROM FOOD_VERAITIES

-- If you want to run multiple statements at a time, you have to put semicolon (;) at the end of each statement
-- To insert a records in a table:
INSERT INTO FOOD_VERAITIES VALUES(1,'TOMATO RICE', 30.05, 'VEG');
INSERT INTO FOOD_VERAITIES VALUES(2,'CURD RICE', 25, 'VEG');
INSERT INTO FOOD_VERAITIES VALUES(3,'BIRIYANI', 150, 'NV');
INSERT INTO FOOD_VERAITIES VALUES(4,'PIZZA', 250, 'VEG');
INSERT INTO FOOD_VERAITIES VALUES(5,'CURD RICE', 40, 'VEG');

-- To update the records in the table:
UPDATE FOOD_VERAITIES
SET PRICE = 50
WHERE FOOD_ID = 2

--
UPDATE FOOD_VERAITIES
SET PRICE = PRICE*0.5
WHERE FOOD_ID = 5

-- To update more than one record in the table
UPDATE FOOD_VERAITIES
SET PRICE = PRICE*5
WHERE FOOD_ID IN (4, 1)

-- To delete the records in the table:
DELETE FROM FOOD_VERAITIES
WHERE FOOD_ITEM_NAME = 'BIRIYANI'



