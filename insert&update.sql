use employees;
select emp_no, hire_date from employees order by hire_date asc;
select emp_no, hire_date from employees order by hire_date asc limit 5;
select emp_no, hire_date from employees order by hire_date asc limit 0,5;
use sqldb;
create table buytbl2 (select * from buytbl);
select * from buytbl2;
create table buytbl3 (select userID, prodName from buytbl);
select * from buytbl3;
select userID, amount from buytbl order by userID;
select userID, sum(amount) from buytbl group by userID;
select userID AS '사용자 아이디', sum(amount) AS '총 구매 개수' from buytbl group by userID;
select userID as '사용자 아이디', sum(price*amount) as '총 구매액' from buytbl group by userID;
use sqldb;
select avg(amount) as '평균 구매 개수' from buytbl;
select userID, avg(amount) as  '평균 구매 개수' from buytbl group by userID;
select name, max(height), min(height) from usertbl;
select name, max(height), min(height) from usertbl group by Name;
select name, height from usertbl where height = (select max(height) from usertbl) or height = (select min(height) from usertbl);
select count(*) from usertbl;
select count(mobile1) as '휴대폰이 있는 사용자' from usertbl;
use sqldb;
select userID as '사용자', sum(price*amount) as '총 구매액' from buytbl group by userID;
select userID as '사용자', sum(price*amount) as '총 구매액' from buytbl where sum(price*aomunt) > 1000 group by userID;
SELECT userID AS '사용자', SUM(price*amount) AS '총구매액'  FROM buytbl GROUP BY userID HAVING SUM(price*amount) > 1000 ;
SELECT userID AS '사용자', SUM(price*amount) AS '총구매액'  
   FROM buytbl 
   GROUP BY userID
   HAVING SUM(price*amount) > 1000 
   ORDER BY SUM(price*amount) ;
   
SELECT num, groupName, SUM(price * amount) AS '비용' 
   FROM buytbl
   GROUP BY  groupName, num
   WITH ROLLUP;

SELECT groupName, SUM(price * amount) AS '비용' 
   FROM buytbl
   GROUP BY  groupName
   WITH ROLLUP;
   use sqldb;
create table testtbl1 (id int, username char(3), age int);
insert into testtbl1 values (1, '홍길동', 25);
insert into testtbl1 (id, username) values (2, '설현');
insert into testtbl1 (username, age, id) values('하니', 26, 3);
select * from testtbl1
USE  sqldb;
CREATE TABLE testTbl2 
  (id  int AUTO_INCREMENT PRIMARY KEY, 
   userName char(3), 
   age int );
INSERT INTO testTbl2 VALUES (NULL, '지민', 25);
INSERT INTO testTbl2 VALUES (NULL, '유나', 22);
INSERT INTO testTbl2 VALUES (NULL, '유경', 21);
SELECT * FROM testTbl2;
SELECT LAST_INSERT_ID(); 
ALTER TABLE testTbl2 AUTO_INCREMENT=100;
INSERT INTO testTbl2 VALUES (NULL, '찬미', 23);
SELECT * FROM testTbl2;
CREATE TABLE testTbl3 
  (id  int AUTO_INCREMENT PRIMARY KEY, 
   userName char(3), 
   age int );
ALTER TABLE testTbl3 AUTO_INCREMENT=1000;
SET @@auto_increment_increment=3;
INSERT INTO testTbl3 VALUES (NULL, '나연', 20);
INSERT INTO testTbl3 VALUES (NULL, '정연', 18);
INSERT INTO testTbl3 VALUES (NULL, '모모', 19);
SELECT * FROM testTbl3;
CREATE TABLE testTbl4 (id int, Fname varchar(50), Lname varchar(50));
INSERT INTO testTbl4 SELECT emp_no, first_name, last_name FROM employees.employees ;
CREATE TABLE testTbl5 (SELECT emp_no, first_name, last_name  FROM employees.employees) ;
UPDATE testTbl4
    SET Lname = '없음'
    WHERE Fname = 'Kyoichi';
USE sqldb;
UPDATE buytbl SET price = price * 1.5 ;

USE sqldb;
DELETE FROM testTbl4 WHERE Fname = 'Aamer';

DELETE FROM testTbl4 WHERE Fname = 'Aamer'  LIMIT 5;

    