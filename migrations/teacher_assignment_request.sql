CREATE TABLE teacher (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  start_date DATE,
  end_date DATE,
  is_active BOOLEAN
)

CREATE TABLE assistance_request (
  id SERIAL PRIMARY KEY.
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE
  teacher_id INTEGER REFERENCES teacher(id) ON DELETE CASCADE
  created_at
  started_at timestamp
completed_at timestamp
student_feedback 
teacher_feedback
)