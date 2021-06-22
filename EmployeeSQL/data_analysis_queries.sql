-- 1. List employee number, last name, first name, sex, and salary for each employee
select emp.emp_no, emp.last_name, emp.first_name, emp.sex, salaries.salary
from employees as emp
left join salaries
on emp.emp_no = salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

-- 3. List manager of each dept
-- List dept number, dept name, manager's employee number, last name, first name
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
left join dept_manager
on departments.dept_no = dept_manager.dept_no
left join employees
on employees.emp_no = dept_manager.emp_no;

-- 4. list dept of each employee
-- list employee number, last name, first name, department name
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
left join employees
on dept_emp.emp_no = employees.emp_no
left join departments
on dept_emp.dept_no = departments.dept_no
order by dept_name asc;

-- 5. list first name, last name, and sex
-- for employees whose first name is "Hercules" and last name begins with "B"
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

-- 6. list all employees in Sales dept.
-- incl. employee number, last name, first name, and dept. name
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
left join dept_emp
on dept_emp.emp_no = employees.emp_no
left join departments
on departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales';

-- 7. list all employees in Sales and Development depts.
-- incl. employee number, last name, first name, and dept. name
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
left join dept_emp
on dept_emp.emp_no = employees.emp_no
left join departments
on departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales'
or dept_name = 'Development'
order by dept_name asc;

-- 8. list frequency count of employee last names in descending order
-- i.e. how many employees share each last name
select last_name, count(last_name)
from employees
group by last_name
having count(last_name)>0
order by count(last_name) desc;