-- Create Departments Table 
CREATE TABLE Departments (
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(25) NOT NULL,
    PRIMARY KEY (dept_no)
);

-- Create Titles Table 
CREATE TABLE Titles (
    title_id VARCHAR(5) NOT NULL,
    title VARCHAR(30) NOT NULL,
    PRIMARY KEY (title_id)
);

-- Create Employees Table 
CREATE TABLE Employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

-- Create Dept_Emp Table 
CREATE TABLE Dept_Emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Create Dept_Manager Table 
CREATE TABLE Dept_Manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

-- Create Salaries Table 
CREATE TABLE Salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    PRIMARY KEY (emp_no)
);