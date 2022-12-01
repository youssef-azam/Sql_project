USE employees;
#######################
SELECT 
    *
FROM
    departments;
#####################
SELECT 
    *
FROM
    dept_emp;
################
    
SELECT 
    *
FROM
    employees;
################
SELECT 
    *
FROM
    salaries;
    ########dept_manager
    SELECT 
    *
FROM
   dept_manager;
###################
SELECT 
    *
FROM
    titles;
###################

select  distinct dept_name from departments;
#############
select  count(dept_no) from dept_emp ;
###
###`dept_name`		`gender`	`hire_date`		`salary`		`title`  `first_name`
SELECT 
    em.emp_no,
    first_name,
    last_name,
    birth_date,
    dept_name,
    title,
    hire_date,
    gender,
    salary
FROM
    employees.employees em,
    employees.departments de,
    employees.salaries sa,
    employees.titles ti,
    employees.dept_emp dp
WHERE
    em.emp_no = sa.emp_no
        AND em.emp_no = ti.emp_no
        AND em.emp_no = dp.emp_no
        AND dp.dept_no = de.dept_no
order by salary desc
        
SELECT 
    MAX(salary)
FROM
    salaries
SELECT 
    AVG(salary)
FROM
    salaries
        
select  first_name,gender ,salary
from employees.employees em ,employees.salaries sa
where em.emp_no=sa.emp_no
order by salary desc limit 20;




SELECT 
    salary, dept_name, title, de.from_date
FROM
    employees.salaries sa,
    employees.departments dp,
    employees.titles ti,
    employees.dept_emp de
WHERE
    sa.emp_no = ti.emp_no
        AND dp.dept_no = de.dept_no
ORDER BY dept_name
LIMIT 10
######################################










