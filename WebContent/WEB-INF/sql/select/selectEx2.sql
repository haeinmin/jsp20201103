SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE salary>1000;
SELECT
    *
FROM employee WHERE commission<500;
SELECT
    *
FROM employee WHERE salary>=300;
SELECT
    *
FROM employee WHERE salary <= 2000;
SELECT
    *
FROM employee WHERE ename <= 'C';
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH';
SELECT * FROM employee WHERE ename ^= 'SMITH';
SELECT * FROM employee WHERE hiredate = '1981/02/20';

SELECT
    *
FROM employee WHERE salary >= 1500;

SELECT * FROM employee WHERE dno = 10;

SELECT * FROM employee WHERE hiredate >= '1981/01/01' AND salary > 3000;

SELECT * FROM employee WHERE hiredate >= '1981/01/01' OR salary>3000;

SELECT * FROM employee WHERE NOT salary > 3000;

SELECT * FROM employee WHERE ename > 'C' AND salary > 2000 AND dno <> 30;

SELECT
    *
FROM employee WHERE salary >= 3000 AND salary<= 5000;

SELECT
    *
FROM employee WHERE salary BETWEEN 3000 AND 5000;

SELECT
    *
FROM employee WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT
    *
FROM employee
WHERE salary < 3000 OR salary > 5000;

SELECT
    *
FROM employee
WHERE salary NOT BETWEEN 3000 AND 5000;

SELECT
    *
FROM employee
WHERE dno = 10 AND dno = 20;

SELECT
    *
FROM employee
WHERE dno IN (10,20);

SELECT
*
FROM employee
WHERE dno NOT IN (20);

SELECT
    *
FROM employee
WHERE commission NOT IN (300,400,500);

SET SERVEROUTPUT OFF;

SELECT ename, salary, salary+300 FROM employee;

SELECT ename, dno FROM employee WHERE eno=7788;

SELECT ename, salary FROM employee WHERE salary NOT BETWEEN 2000 AND 3000;

SELECT ename, job, hiredate FROM employee WHERE hiredate BETWEEN '1981/02/20' AND '1981/05/01';

SELECT ename, job, salary FROM employee WHERE job='CLERK' or job='SALESMAN' AND salary NOT IN(1600,950,1300);

SELECT ename, salary, commission FROM employee WHERE commission>=500;

SELECT ename FROM employee WHERE eno = 7499;
SELECT ename FROM employee WHERE eno = 7499;