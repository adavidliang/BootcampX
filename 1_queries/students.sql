-- Select their id and name.
-- Order them by their name in alphabetical order.
-- Since this query needs to work with any specific cohort, just use any number for the cohort_id.

SELECT id, name
FROM students
WHERE cohort_id = 7
ORDER BY id;

SELECT COUNT(*)
FROM students
WHERE cohort_id IN (1, 2, 3);

SELECT name, id, cohort_id
FROM students
WHERE email IS NULL 
OR phone IS NUL;

SELECT name, email, id, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com' 
AND phone IS NULL;

SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;

SELECT name, email, phone
FROM students
WHERE end_date IS NOT NULL
AND github IS NULL;

-- Get the student's name, student's start_date, cohort's name, and cohort's start_date.
-- Alias the column names to be more descriptive.
-- Order by the start date of the cohort.

SELECT students.name as students_name, cohorts.name as cohorts_name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date 
ORDER BY cohorts.start_date;