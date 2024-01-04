
create table departments(
    department_id int primary key,
    department_name varchar(50) not null
);

create table roles(
    role_id int,
    role_name varchar(50) not null,
    department_id int,
    foreign key (department_id) references departments(department_id)
);

ALTER TABLE roles
ADD CONSTRAINT roles_pk PRIMARY KEY (role_id);

create table employees(
    employee_id int primary key,
    first_name varchar(12) not null,
    surname varchar(12) not null,
    department_id int,
    role_id int,
    hire_date date,
    salary int,
    foreign key (department_id) references departments(department_id),
    foreign key (role_id) references roles (role_id)    
);

INSERT INTO departments VALUES (1, 'HR');
INSERT INTO departments VALUES (2, 'Corporate');
INSERT INTO departments VALUES (3, 'Accounting');
INSERT INTO departments VALUES (4, 'Programming');
INSERT INTO departments VALUES (5, 'Sales');
INSERT INTO departments VALUES (6, 'Marketing');
INSERT INTO departments VALUES (7, 'Digital Security');

INSERT INTO roles VALUES (1, 'Chief Executive Officer(CEO)', 2);
INSERT INTO roles VALUES (2, 'Chief Operations Officer(COO)', 2);
INSERT INTO roles VALUES (3, 'Chief Technology Officer(CTO)', 2);
INSERT INTO roles VALUES (4, 'Chief Finance Officer(CFO)', 2);
INSERT INTO roles VALUES (5, 'Chief Product Officer(CPO)', 2);
INSERT INTO roles VALUES (33, 'Chief Information Security Officer(CISO)', 2);
INSERT INTO roles VALUES (6, 'Chief Scientist', 2);
INSERT INTO roles VALUES (7, 'Executive Vice President(EVP)', 2);
INSERT INTO roles VALUES (8, 'Senior Vice President(SVP)', 2);
INSERT INTO roles VALUES (9, 'Vice President(VP)', 2);
INSERT INTO roles VALUES (10, 'Project Manager', 2);
INSERT INTO roles VALUES (11, 'Director', 2);
INSERT INTO roles VALUES (12, 'Senior Engineer', 4);
INSERT INTO roles VALUES (13, 'Accountant', 3);
INSERT INTO roles VALUES (14, 'Human Resources (HR)', 2);
INSERT INTO roles VALUES (15, 'Digital Marketing Manager', 6);
INSERT INTO roles VALUES (16, 'Sales Representative', 5);
INSERT INTO roles VALUES (17, 'Manager', 2);
INSERT INTO roles VALUES (18, 'Senior Manager', 2);
INSERT INTO roles VALUES (19, 'Assistant Manager', 2);
INSERT INTO roles VALUES (20, 'Security Manager', 7);
INSERT INTO roles VALUES (21, 'Senior Sofrware Engineer', 4);
INSERT INTO roles VALUES (22, 'Software Engineer', 4);
INSERT INTO roles VALUES (23, 'Software Developer', 4);
INSERT INTO roles VALUES (24, 'Security Analyst', 7);
INSERT INTO roles VALUES (25, 'Software Quality Assurance (QA) Engineer', 7);
INSERT INTO roles VALUES (26, 'Tech Intern', 4);
INSERT INTO roles VALUES (27, 'Financial Analyst', 3);
INSERT INTO roles VALUES (28, 'Product Manager', 6);
INSERT INTO roles VALUES (29, 'Senior Product Manager', 6);
INSERT INTO roles VALUES (30, 'Database Adminstrator', 4);
INSERT INTO roles VALUES (31, 'Database Developer', 4);
INSERT INTO roles VALUES (32, 'Front Desk', 3);

/* used chatgpt to generate random employee names because thats too much brainless work */
-- Corporate Department
INSERT INTO employees VALUES (1, 'Carmichael', 'Smith', 2, 1, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 700000); -- CEO (Chief Executive Officer)

-- Chief Officers
INSERT INTO employees VALUES (2, 'Emma', 'Brown', 2, 2, TO_DATE('2022-02-01', 'YYYY-MM-DD'), 350000); -- COO (Chief Operations Officer)
INSERT INTO employees VALUES (3, 'David', 'Garcia', 2, 3, TO_DATE('2022-03-01', 'YYYY-MM-DD'), 320000); -- CTO (Chief Technology Officer)
INSERT INTO employees VALUES (4, 'Olivia', 'Taylor', 2, 4, TO_DATE('2022-04-01', 'YYYY-MM-DD'), 300000); -- CFO (Chief Finance Officer)
INSERT INTO employees VALUES (5, 'Daniel', 'Rodriguez', 2, 5, TO_DATE('2022-05-01', 'YYYY-MM-DD'), 280000); -- CPO (Chief Product Officer)

-- Executive Vice President and Senior Vice President
INSERT INTO employees VALUES (6, 'Sophia', 'Lopez', 2, 7, TO_DATE('2022-06-01', 'YYYY-MM-DD'), 220000); -- EVP (Executive Vice President)
INSERT INTO employees VALUES (7, 'Elena', 'Conti', 2, 8, TO_DATE('2022-07-01', 'YYYY-MM-DD'), 200000); -- SVP (Senior Vice President)

-- Senior Scientist and Project Manager
INSERT INTO employees VALUES (8, 'Rahul', 'Verma', 2, 6, TO_DATE('2022-08-01', 'YYYY-MM-DD'), 180000); -- Senior Scientist
INSERT INTO employees VALUES (9, 'Simran', 'Patel', 2, 10, TO_DATE('2022-09-01', 'YYYY-MM-DD'), 160000); -- Project Manager

-- Corporate Front Desk
INSERT INTO employees VALUES (10, 'Sophia', 'Moretti', 2, 32, TO_DATE('2022-10-01', 'YYYY-MM-DD'), 150000); -- Front Desk

-- Programming Department
INSERT INTO employees VALUES (11, 'Charlotte', 'Dupont', 4, 11, TO_DATE('2022-11-01', 'YYYY-MM-DD'), 170000); -- Director
INSERT INTO employees VALUES (12, 'Mohan', 'Sharma', 4, 21, TO_DATE('2022-12-01', 'YYYY-MM-DD'), 280000); -- Senior Engineer
INSERT INTO employees VALUES (13, 'Emma', 'Perez', 4, 22, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 190000); -- Software Engineer
INSERT INTO employees VALUES (14, 'Matteo', 'Rossi', 4, 23, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 150000); -- Software Developer
INSERT INTO employees VALUES (15, 'Vikram', 'Kumar', 4, 26, TO_DATE('2023-03-01', 'YYYY-MM-DD'), 10000); -- Tech Intern
INSERT INTO employees VALUES (36, 'Charlotte', 'Dupont', 4, 26, TO_DATE('2024-12-01', 'YYYY-MM-DD'), 160000); -- Senior Software Engineer
INSERT INTO employees VALUES (37, 'Mohan', 'Sharma', 4, 27, TO_DATE('2025-01-01', 'YYYY-MM-DD'), 150000); -- Software Engineer
INSERT INTO employees VALUES (38, 'Emma', 'Perez', 4, 28, TO_DATE('2025-02-01', 'YYYY-MM-DD'), 140000); -- Software Developer
INSERT INTO employees VALUES (39, 'Matteo', 'Rossi', 4, 29, TO_DATE('2025-03-01', 'YYYY-MM-DD'), 130000); -- Tech Intern
INSERT INTO employees VALUES (40, 'Vikram', 'Kumar', 4, 30, TO_DATE('2025-04-01', 'YYYY-MM-DD'), 120000); -- Project Manager

-- Accounting Department
INSERT INTO employees VALUES (16, 'Eva', 'Santos', 3, 27, TO_DATE('2023-04-01', 'YYYY-MM-DD'), 110000); -- Financial Analyst
INSERT INTO employees VALUES (17, 'Liam', 'Connor', 3, 31, TO_DATE('2023-05-01', 'YYYY-MM-DD'), 100000); -- Database Administrator
INSERT INTO employees VALUES (18, 'Anna', 'Gomez', 3, 30, TO_DATE('2023-06-01', 'YYYY-MM-DD'), 90000); -- Senior Product Manager

-- Marketing Department
INSERT INTO employees VALUES (21, 'Sophie', 'Russo', 6, 28, TO_DATE('2023-09-01', 'YYYY-MM-DD'), 95000); -- Product Manager
INSERT INTO employees VALUES (22, 'Lucas', 'Moreno', 6, 29, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 88000); -- Senior Product Manager
INSERT INTO employees VALUES (23, 'Eva', 'Santos', 6, 30, TO_DATE('2023-11-01', 'YYYY-MM-DD'), 81000); -- Digital Marketing Manager
INSERT INTO employees VALUES (24, 'Oliver', 'White', 6, 15, TO_DATE('2023-12-01', 'YYYY-MM-DD'), 75000); -- Database Developer
INSERT INTO employees VALUES (25, 'Emma', 'Garcia', 6, 32, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 72000); -- Front Desk

-- HR Department
INSERT INTO employees VALUES (26, 'Leo', 'Conti', 7, 19, TO_DATE('2024-02-01', 'YYYY-MM-DD'), 78000); -- Assistant Manager
INSERT INTO employees VALUES (27, 'Sophia', 'Martinez', 7, 14, TO_DATE('2024-03-01', 'YYYY-MM-DD'), 82000); -- HR Manager
INSERT INTO employees VALUES (28, 'Aryan', 'Sharma', 7, 18, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 89000); -- HR Executive
INSERT INTO employees VALUES (29, 'Isabella', 'Kumar', 7, 17, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 95000); -- Senior HR Manager
INSERT INTO employees VALUES (30, 'Lucia', 'Anderson', 7, 16, TO_DATE('2024-06-01', 'YYYY-MM-DD'), 82000); -- Assistant HR Manager

-- Digital Security Department
INSERT INTO employees VALUES (31, 'Daniel', 'Santos', 5, 25, TO_DATE('2024-07-01', 'YYYY-MM-DD'), 110000); -- Database Adminstrator
INSERT INTO employees VALUES (32, 'Ava', 'Perez', 5, 24, TO_DATE('2024-08-01', 'YYYY-MM-DD'), 105000); -- Senior Security Analyst
INSERT INTO employees VALUES (33, 'Liam', 'Rodriguez', 5, 20, TO_DATE('2024-09-01', 'YYYY-MM-DD'), 100000); -- Security Manager
INSERT INTO employees VALUES (34, 'Emma', 'Gomez', 5, 12, TO_DATE('2024-10-01', 'YYYY-MM-DD'), 95000); -- Security Analyst
INSERT INTO employees VALUES (35, 'Aryan', 'Patil', 5, 13, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 90000); -- Security Analyst

-- to show the role_name and department_name with the employees to table
SELECT e.employee_id, e.first_name, e.surname, d.department_name, r.role_name, e.hire_date, e.salary
FROM employees e
JOIN roles r ON e.role_id = r.role_id
JOIN departments d ON e.department_id = d.department_id;

--make it so employees' salaries can never be zero
ALTER TABLE employees
ADD CONSTRAINT positive_salary CHECK (salary > 0);

--calculates the bonus for employees
CREATE OR REPLACE FUNCTION calculate_bonus(salary NUMBER) RETURN NUMBER AS
    bonus NUMBER;
BEGIN
    bonus := salary * 0.1; --assumes a 10% bonus
    RETURN bonus;
END calculate_bonus;
/

--implementing the function
SELECT employee_id, first_name, calculate_bonus(salary) AS bonus FROM employees;


select * from departments
select * from roles
select * from employees
