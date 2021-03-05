const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const input = process.argv.slice(2);
// console.log(input)

const queryString = `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1
ORDER BY teacher;
`;
const cohortName = input[0] || 'FEB12gits t'

const values = [cohortName]

// queries

pool.query(queryString, values)
.then(res => {
  res.rows.forEach(x => {
   console.log(`${x.cohort}: ${x.teacher}`)
  })
})
.catch(err => console.error('query error', err.stack));
