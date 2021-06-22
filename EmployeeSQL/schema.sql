DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
  dept_no varchar primary key NOT NULL,
  dept_name varchar NOT NULL
);

CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dept_no varchar NOT NULL
);

CREATE TABLE dept_manager (
  dept_no varchar NOT NULL,
  emp_no integer NOT NULL
);

CREATE TABLE employees (
    emp_no integer NOT NULL,
    emp_title_id varchar NOT NULL,
    birth_date date NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    sex varchar NOT NULL,
    hire_date date NOT NULL
);

CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer NOT NULL
);

CREATE TABLE titles (
  title_id varchar NOT NULL,
  title varchar NOT NULL
);