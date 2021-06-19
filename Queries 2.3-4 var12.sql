-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- ЗАПРОСЫ (общие)
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- 1) выборка данных (select) с выводом всех данных по столбцам и строкам,
SELECT * FROM pupils;

-- 2) с сортировкой по id 
SELECT * FROM pupils ORDER BY id DESC;

-- 3) и по имени
SELECT * FROM pupils ORDER BY name ASC;

-- 4) и с выводом последних 5 строк (инструкция limit);
SELECT * FROM pupils ORDER BY id DESC LIMIT 5;

-- 5) выборка данных с фильтрацией (условие where), если id=5;
SELECT * FROM pupils WHERE id = 5;

-- 6) выборка данных с фильтрацией (условие where) и с совпадением по маске, 
--    например все записи, где имя объекта (согласно варианту) начинается на 
--    первую букву вашей фамилии (инструкция like);
SELECT * FROM pupils WHERE name LIKE 'м%';

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- ЗАПРОСЫ (мои)
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- 7) Вывести сведения про всех учеников пятых классов.
SELECT * FROM pupils WHERE grade = 5;

-- 8) подсчет количества школьников с помощью count, если рост >128 см 
SELECT COUNT(id) FROM pupils WHERE height > 128;

-- 9) суммарный вес школьников с помощью sum, если рост = 120 см
SELECT SUM(weight) FROM pupils WHERE height = 120;

-- 10) максимальный и минимальный вес с помощью max и min
SELECT MIN(weight),MAX(weight) FROM pupils;


-- 11) Вывести данные обо всех школьниках в форме идентификатор школьника, 
--     фамилия, имя, отчество, дата рождения, класс, название школы. 
SELECT pupils.id, pupils.surname, pupils.name, pupils.fathername, pupils.birthdate, pupils.grade, school.sch_name
FROM pupils
LEFT JOIN school
ON pupils.school_id = school.id;


-- 12) Используя инструкцию inner join вывести полные сведения об школьника и школах для школ с id= 1 и 5.
SELECT * 
FROM pupils
INNER JOIN school
ON pupils.school_id = school.id
WHERE school.id IN (1, 5);
