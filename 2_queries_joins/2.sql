-- This should work for any student but use 'Ibrahim Schimmel' for now.
-- Select only the total amount of time as a single column.

SELECT sum(duration) as total_duration
FROM assignment_submissions
JOIN students
ON student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';

-- Get the total amount of time that all students from a specific cohort have spent on all assignments.

SELECT sum(duration) as total_duration
FROM assignment_submissions
JOIN students
ON student_id = students.id
JOIN cohorts
ON cohort_id = cohorts.id
WHERE cohorts.name = 'FEB12';


SELECT students.name as student, COUNT(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students
ON student_id = students.id
GROUP BY students.name;


SELECT students.name as student, COUNT(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students
ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name;


SELECT students.name as student, COUNT(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students
ON student_id = students.id
WHERE students.end_date IS NULL 
GROUP BY students.name
HAVING COUNT(assignment_submissions.*) < 100;