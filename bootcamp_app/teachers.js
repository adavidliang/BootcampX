const { Pool, Client } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});
const client = new Client({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});
const quertString = `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1
ORDER BY teacher;
`;

const teacher = process.argv[2]
const values = [`${teacher}`]
pool.query(quertString, values)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort}:${user.teacher}`);
  })
}).catch(err => console.error('query error', err.stack));

