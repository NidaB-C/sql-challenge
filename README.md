# Module 9 - SQL Challenge

![ERD](https://github.com/NidaB-C/sql-challenge/assets/147389952/b1cde4df-beda-4187-a1ae-ea2416b3a4bb)

### ERD Explanation:
#### Employees to Titles: 
One employee has one title, but one title can belong to many employees.
#### Employees to Dept_Emp: 
One employee can belong to many departments, and one department can have many employees (many-to-many relationship, resolved through the Dept_Emp junction table).
#### Departments to Dept_Manager: 
One department can have multiple managers over time, and one manager can manage multiple departments (resolved through the Dept_Manager table).
#### Employees to Salaries: 
One employee has one salary record in this structure. (Note: In a real-world scenario, this might be a one-to-many relationship if salary history is tracked).
