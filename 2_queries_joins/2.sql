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