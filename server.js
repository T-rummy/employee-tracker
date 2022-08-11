const express = require('express');
const mysql = require('mysql2');

const PORT = process.env.PORT || 3001;
const app = express();
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '!c3hOckey',
    database: 'employees'

},
console.log('Connected to the employee database.'))




  app.use((req, res) => {
    res.status(404).end();
  });

  db.query(`SELECT * FROM employee`, (err, rows) => {
    console.log(rows);
  });
  db.query(`SELECT * FROM current_role`, (err, rows) => {
    console.log(rows);
  });
  
  db.query(`SELECT * FROM department`, (err, rows) => {
    console.log(rows);
  });
  
  const sql1 = `INSERT INTO employee (id, first_name, last_name, role_id, manager_id) 
                VALUES (?,?,?,?,?)`;
  const params1 = [1, 'Ronald', 'Firbank', 1, 2];
  
  db.query(sql1, params1, (err, result) => {
    if (err) {
      console.log(err);
    }
    console.log(result);
  });
  
  const sql2 = `INSERT INTO current_role (id, title, salary, deptartment_id) 
                VALUES (?,?,?,?)`;
  const params2 = [1, 'Accountant', '50,000', 1];
  
  db.query(sql2, params2, (err, result) => {
    if (err) {
      console.log(err);
    }
    console.log(result);
  });
  const sql3 = `INSERT INTO department (id, dept_name) 
                VALUES (?,?)`;
  const params3 = [1, 'Accounting'];
  
  db.query(sql3, params3, (err, result) => {
    if (err) {
      console.log(err);
    }
    console.log(result);
  });


app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });