drop table if exists departments;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees;
drop table if exists salaries;
drop table if exists titles;

--Create Tables for data--
-- Import data from CSV--

create table employees (
		emp_no int not null,
		birth_date date not null,
		first_name varchar(14) not null,
		last_name varchar(16) not null,
		gender varchar(1) not null,
		hire_date date not null,
		primary key(emp_no)
);

create table departments (
		dept_no varchar(4) not null,
		dept_name varchar(40) not null,
		primary key (dept_no),
		unique (dept_name)
);

create table dept_emp (
		emp_no int not null, 
		dept_no varchar(4) not null,
		from_date date not null,
		to_date date not null,
		foreign key (emp_no) references employees(emp_no),
		foreign key (dept_no) references departments(dept_no),
		primary key (emp_no, dept_no)
);

create table dept_manager (
		dept_no varchar(4) not null,
		emp_no int not null,
		from_date date not null,
		to_date date not null,
		foreign key (dept_no) references departments(dept_no),
		foreign key (emp_no) references employees(emp_no)
);



create table salaries (
		emp_no int not null,
		salary int not null,
		from_date date not null,
		to_date date not null,
		foreign key (emp_no) references employees(emp_no),
		primary key(emp_no, from_date)
	
);

create table titles (
		emp_no int not null,
		title varchar(50) not null,
		from_date date not null,
		to_date date not null,
		foreign key (emp_no) references employees(emp_no),
		primary key(emp_no, title, from_date)
);

--Import data in to tables, check availability-- 

select * from departments limit 10
select * from dept_emp limit 10
select * from dept_manager limit 10
select * from employees limit 10
select * from salaries limit 10
select * from titles limit 10

--List details for each employee--

select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
from employees
join salaries
on employees.emp_no = salaries.emp_no

--List employees hired in 1986--

select emp_no, first_name, last_name, hire_date
from employees 
where hire_date between '1986-01-01' and '1987-01-01'

--List manager of each department with information--

select departments.dept_no, departments.dept_name, dept_manager.emp_no, employeesw.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date 
from departments 
join dept_manager 
on departments.dept_no = dept_manager.dept_no
join employees
on dept_manager.emp_no = employees.emp_no;

-- List department of each employee--

select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees
on dept_emp.emp_no = emp.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no

-- List all employees first name Hercules, last name B--

select first_name, last_name
from employees 
where first_name = 'Hercules'
and last_name like 'B%';
		
-- List all sales employees

select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name 
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

-- List all employees Sales and Development--

select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name 
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' 
or departments.dept_name = 'Development'

-- List frequency of employee last names, descending--

select last_name, 
count(last_name)
from employees
group by last_name
order by 
count(last_name) desc;
