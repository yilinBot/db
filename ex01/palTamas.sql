select * from nikovits.emp;

--1
--List the employees whose salary is greater than 2800.
select * from nikovits.emp where sal > 2800;

--2
--List the employees working on department 10 or 20.
select * from nikovits.emp where deptno=10 or deptno=20;
select * from nikovits.emp where deptno in (10,20); 

--3
--List the employees whose commission is greater than 600.
select * from nikovits.emp where comm > 600;

--5
--List the employees whose commission is not known (that is NULL).
select * from nikovits.emp where comm is null; 

--6
-- List the jobs of the employees (with/without duplication).
select job from nikovits.emp;  --with duplication
select distinct job from nikovits.emp;  --without duplication

--7
--Give the name and double salary of employees working on department 10.
select ename, 2*sal as doublesal from nikovits.emp where deptno=10;

--8
--List the employees whose hiredate is greater than 1982.01.01.
select * from nikovits.emp where hiredate > '82-JAN-01';

--10
--List the employees whose name contains a letter 'A'.
select * from nikovits.emp where ename LIKE '%A%';

--12
--List the employees whose salary is between 2000 and 3000.
select * from nikovits.emp where sal between 2000 and 3000;
--select * form nikovits.emp where sal>=2000 and sal <= 3000; 

--13
--List the name and salary of employees ordered by salary.
select ename, sal from nikovits.emp order by sal; 

--14
--List the name and salary of employees ordered by salary in descending order and 
--within that order, ordered by name in ascending order.
select ename, sal from nikovits.emp order by sal desc, ename asc;

--15
--List the employees whose manager is KING. (reading empno of KING from monitor)
select * from nikovits.emp where mgr='&mgrcode';

--------------------------------------------------

select * from paltamas.likes;
--1. 
--List the fruits that Winnie likes.
select * from paltamas.likes where name='Winnie';

--2
--List the fruits that Winnie doesn't like but someone else does.
select fruits from paltamas.likes
MINUS
select fruits from paltamas.likes where name='Winnie';

--3
--who likes apples 
select name from paltamas.likes where fruits='apple';

--4
--List those names who doesn't like pear but like something else.
select name from paltamas.likes
minus
select name from paltamas.likes where fruits='pear';

--5
--who likes raspberry or bear
select name from paltamas.likes where fruits='raspberry'
UNION
select name from paltamas.likes where fruits='pear';

select distinct name from paltamas.likes where fruits='raspberry' or fruits='pear';

--6
--who likes both apple and pear
select name from paltamas.likes where fruits='apple'
intersect 
select name from paltamas.likes where fruits='pear';













