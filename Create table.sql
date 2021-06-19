-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- ТАБЛИЦА 'ШКОЛЬНИК'
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- создание таблицы (create)
CREATE TABLE pupils(
	id SERIAL PRIMARY KEY, 
	surname VARCHAR(50) NOT NULL, 
	name VARCHAR(50) NOT NULL, 
	fathername VARCHAR(50), 
	gender VARCHAR(1), 
	nationality VARCHAR(50), 
	height INT, 
	weight INT, 
	birthdate DATE, 
	phonenumber VARCHAR(16), 
	homeaddress VARCHAR(50), 
	grade INT,
    school_id INT
);

-- Создать таблицу school (id, sch_name, sch_description).
CREATE TABLE school(
  id INT, 
  sch_name VARCHAR(50), 
  sch_description VARCHAR(50),
  UNIQUE(id)
);