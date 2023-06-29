CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  birth_year SMALLINT,
  member_since TIMESTAMP
);

CREATE TABLE users (id, name, birth_year, member_since);

INSERT INTO users (name, birth_year)
VALUES('david', 1990),
('kevin', 2000);

pets(id, name, owner_id)

INSERT INTO pets (name, owner_id)
VALUES('dog', 6);

UPDATE pets
SET owner_id = 1
WHERE name = 'dog';