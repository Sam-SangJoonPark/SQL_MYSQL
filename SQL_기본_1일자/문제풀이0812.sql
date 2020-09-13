use employees;
select * from abc ; 
select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;

-- 2번 
select * from employees where emp_no >= 400000 ;
select * from employees where birth_date = '1960-07-28';
select * from employees where first_name = 'Karlis';
select * from employees where gender != 'F' ;

-- 3번
select * from employees where emp_no >= 200000 and emp_no < 300000 ;
select * from employees where hire_date like '1985%' or hire_date like '1990%' ;
-- 첨삭 : select * from employees where year(hire_date) = 1985 or year(hire_date) = 1990 ;
select * from employees where birth_date = '1990-05-20' and gender = 'F' ;

-- 4번
select first_name,last_name,gender from employees where emp_no >= 400000 ;
select first_name,last_name,gender from employees where birth_date = '1960-07-28';
select first_name,last_name,gender from employees where last_name = 'Karlis' ; 
select emp_no, salary, salary*1.1 as 넘버샐러리 from salaries limit 1000;
select last_name,first_name,gender from employees where gender !='F';
-- select last_name,first_name,gender from employees where not(gender ='F') ; 일케하면 작업한번 더하는것이라 비추


-- 5번 
select first_name,last_name,gender from employees where emp_no >= 400000 ; 
select CONCAT(last_name,first_name) from employees ;
-- 첨삭 : select CONCAT(last_name,' ', first_name) as '이름' from employees ;

-- 퇴사자
select * from dept_emp where emp_no not in (
select distinct emp_no from dept_emp where to_date>curdate()) order by emp_no ;
-- 근무자 사원번호
select distinct emp_no from dept_emp where to_date>curdate();
select * from dept_emp where to_date>curdate();



-- 6번 
select emp_no,last_name,first_name from employees order by last_name ;
select emp_no,last_name,first_name from employees order by last_name desc; 
select emp_no,last_name,first_name from employees where 'on' IN (last_name) order by last_name desc, first_name ;


-- 연습문제 1 번 
select * from titles where emp_no <100000 ; 
select * from titles where title = 'Engineer' ; 
select * from titles where from_date >= '2000-01-01' ;
select * from titles where from_date not like '9999%' ; 

--  연습문제 2
select * from titles where emp_no > 400000 or emp_no<1000 ;
select * from titles where title = 'Senior Engineer' and from_date like '%-05-%' ; 
select * from titles where to_date >= '2000-01-01' and to_date <= '2001-12-31' ;

-- 연습문제 3 
select * from titles where emp_no = 400000 or emp_no < 1000 ;
select emp_no,title,from_date from titles where title ='Staff' or from_date ='%-11-%' ;
select emp_no,to_date,title from titles where to_date like '2001%' or to_date like '2002%' ;


-- 연습문제 4
select emp_no,title from titles where emp_no > 450000 and title = 'Assistant Engineer' order by title ;
select emp_no,last_name,first_name from employees where emp_no >300000 order by last_name , first_name desc ; 
select emp_no,title  from titles where title like '%Staff%' order by emp_no desc, title ;




