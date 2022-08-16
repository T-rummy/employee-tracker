INSERT INTO department (dept_name)
VALUES ('Accounting'),
('IT'),
('Human Resources'),
('Marketing'),
('Compliance'),
('Quality control');

INSERT INTO current_role (title, salary, department_id)
VALUES ('Bookkeeper', 80000, 1),
('Comptroller', 75000, 1),
('Content Marketing', 60000, 4),
('Employee Relations', 60000, 3),
('Recruitment', 60000, 3),
('Cost Accounting', 70000, 1),
('Brand Management', 60000, 4),
('Public Relations', 80000, 3),
('Network Administrator', 100000, 2),
('Data Scientist', 80000, 2),
('Network Engineer', 80000, 2),
('Compensation and Benefits', 60000, 3),
('Compliance Analyst', 80000, 5),
('Compliance Officer', 80000, 5),
('Inspector', 80000, 6),
('Payroll', 60000, 1);

INSERT INTO employee (first_name, last_name, role_id)
VALUES ('Charles', 'Houston', 1),
('James', 'Barnes', 6),
('Chris', 'Johnson', 4),
('Jesse', 'Allen', 7),
('Callie', 'Johnson', 4),
('Jamie', 'Von', 5),
('Maddie', 'Novak', 9),
('JJ', 'Brown', 8),
('Veronica', 'Jo', 10),
('Jack', 'Johns', 11),
('Chris', 'Evans', 12),
('Charlie', 'Xavier', 13),
('Billy', 'Newson', 14),
('Arthur', 'Piers', 15),
('Noah', 'Irby', 16),
('Cal', 'Forest', 2),
('Jan', 'Levinson', 3);