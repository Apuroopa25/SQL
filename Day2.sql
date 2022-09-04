ALIAS NAME FOR COLUMNS:
=======================

SELECT FIRST_NAME "NAME OF THE EMPLOYEE", JOB_ID "JOB ID", SALARY FROM HR.EMPLOYEES
-- For single word/name you don't have to give quotations
SELECT FIRST_NAME NAME, JOB_ID "JOB ID", SALARY FROM HR.EMPLOYEES


operators:
==========
1. Comparison operator:
=======================
-- (<, <=, >, >=, =, !=, <>)

-- Less than or equal to (<=)
SELECT * FROM HR.EMPLOYEES
WHERE SALARY <= 10000

-- Equal to (=)
SELECT * FROM HR.EMPLOYEES
WHERE JOB_ID = 'IT_PROG'

-- Not equal to (<>):
SELECT * FROM HR.EMPLOYEES
WHERE JOB_ID <> 'IT_PROG'



2. Logical oprator:
================
-- (AND, OR, NOT)

Requirement 1:
==============
Show all the employees whose salary is greater than 8000
and their department id is 50

Query:
=====
AND:
====
Select * From HR.EMPLOYEES
WHERE
    SALARY > 8000 AND DEPARTMENT_ID = 50

OR:
===
Select * From HR.EMPLOYEES
WHERE
    SALARY > 8000 OR DEPARTMENT_ID = 50

NOT:
====
Select * From HR.EMPLOYEES
WHERE NOT JOB_ID = 'IT_PROG'
            (0r) -- Also can use comparison operator for this requirement
Select * From HR.EMPLOYEES
WHERE JOB_ID <> 'IT_PROG'
            (0r) -- Also can use comparison operator for this requirement
Select * From HR.EMPLOYEES
WHERE JOB_ID != 'IT_PROG'  

Requirement 2:
==============
Show the employees First_name, salary, department_id
who belongs to below criteria
    salary greater than 10000
    or he should be in department 1000
    
Query:
=====
SELECT FIRST_NAME, EMAIL, SALARY, DEPARTMENT_ID 
FROM HR.EMPLOYEES
WHERE SALARY > 10000 OR DEPARTMENT_ID = 100
            

Requirement 3:
==============
Employee should be an IT programmer with salary greater than 5000
and department_id should be 60

Query:
=====
SELECT * FROM HR.EMPLOYEES
WHERE SALARY > 5000 AND JOB_ID = 'IT_PROG' AND DEPARTMENT_ID = 60

3. Arithmetic operators:
=======================
-- (+, -, *, /, **)

Requirement 1:
==============
Show emplyee first_name, salary, bonus (12% of salary)
for all the employees

Query:
======
SELECT FIRST_NAME, SALARY, SALARY*12/100 "BONUS"
FROM HR.EMPLOYEES


Requirement 2:
==============
15% of salary + 1000 for all

Query:
=====
SELECT FIRST_NAME, SALARY, SALARY*(15/100) + 1000 "BONUS_EXTRA"
FROM HR.EMPLOYEES
        (or)
SELECT FIRST_NAME, SALARY, (SALARY*15/100) + 1000 "BONUS_EXTRA"
FROM HR.EMPLOYEES

4. Range operator:
=================
-- (BETWEEN / NOT BETWEEN)

Requirement 1:
==============
Show all the employees with all details
whose salary in the range of 5000 to 10000

Query:
======
SELECT * FROM HR.EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 10000


SELECT * FROM HR.EMPLOYEES
WHERE SALARY NOT BETWEEN 5000 AND 10000

5. List operator:
=================
-- (IN / NOT IN)

Requirement 1:
==============
Show all the employees who belongs to any of the department
10,20,30,70,90,100

Query:
======
SELECT * FROM HR.EMPLOYEES WHERE DEPARTMENT_ID IN (10,20,30,70,90,100)
-- NOT IN means except in the values given in paranthesis
SELECT * FROM HR.EMPLOYEES WHERE DEPARTMENT_ID NOT IN (10,20,30,70,90,100)

6. Pattern matching matching:
=============================
-- (LIKE / NOT LIKE)

Requirement 1:
==============
Show the employees whose name start with 's'

QUERY:
======
SELECT * FROM HR.EMPLOYEES 
WHERE FIRST_NAME LIKE 'S%'

SELECT * FROM HR.EMPLOYEES 
WHERE FIRST_NAME LIKE 'Ne%'

Requirement 2:
==============
First name starts with 'N' and ends with 'a'
Last name starts with 'K' and ends with 'r'

Query:
======
SELECT * FROM HR.EMPLOYEES 
WHERE FIRST_NAME LIKE 'N%a' 
AND LAST_NAME LIKE 'K%r'

