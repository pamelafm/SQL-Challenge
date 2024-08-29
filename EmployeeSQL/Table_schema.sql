CREATE TABLE departments (
		dept_no VARCHAR NOT NULL,
		dept_name VARCHAR NOT NULL,
PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

CREATE TABLE title (
		title_id VARCHAR PRIMARY KEY NOT NULL,
		title VARCHAR NOT NULL
);

SELECT * FROM title;


CREATE TABLE employee (
		emp_no INT PRIMARY KEY NOT NULL,
		emp_title_id VARCHAR NOT NULL,
		birth_date DATE NOT NULL,
		first_name VARCHAR NOT NULL,
		last_name VARCHAR NOT NULL,
		sex VARCHAR NOT NULL,
		hire_date DATE NOT NULL,
FOREIGN KEY(emp_title_id) REFERENCES title(title_id)
);
SELECT * FROM employee;


CREATE TABLE dept_emp (
		emp_no INT NOT NULL,
		dept_no VARCHAR NOT NULL
FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;



CREATE TABLE dept_manager (
		dept_no VARCHAR NOT NULL,
		emp_no INT NOT NULL
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

SELECT * FROM dept_manager;


CREATE TABLE salary (
		emp_no INT NOT NULL,
		salary INT NOT NULL,
FOREIGN KEY(emp_no) REFERENCES employee(emp_no)
);
SELECT * FROM salary;

