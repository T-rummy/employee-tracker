DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS current_role;
DROP TABLE IF EXISTS employee;

CREATE TABLE department (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE current_role (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary INTEGER NOT NULL,
  department_id INTEGER,
  CONSTRAINT fk_party FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE SET NULL
);

CREATE TABLE employee (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  CONSTRAINT fk_party2 FOREIGN KEY (role_id) REFERENCES current_role(id) ON DELETE SET NULL,
  manager_id INT,
  CONSTRAINT fk_party3 FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);