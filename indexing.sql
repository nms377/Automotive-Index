
-- \c nicolesandry;

DROP USER "indexed_cars_user";

CREATE USER "indexed_cars_user";

DROP DATABASE IF EXISTS "indexed_cars";

CREATE DATABASE "indexed_cars" OWNER "indexed_cars_user";

\c indexed_cars indexed_cars_user;

\i scripts/car_models.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

\timing on

SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM'; -- 50.768 ms

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN'
AND model_code = 'GT-R';	-- 44.276 ms

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';	-- 42.857 ms

SELECT * FROM car_models
WHERE year BETWEEN 2010 AND 2015; -- 140.221 ms

SELECT * FROM car_models
WHERE year = 2010;	-- 62.755 ms

\timing off

\timing on

-- Indexes
SELECT DISTINCT "make_title"
FROM "car_models"
WHERE "make_code" = 'LAM';	-- 1.781 ms


SELECT DISTINCT "model_title"
FROM "car_models"
WHERE "make_code" = 'NISSAN'
AND "model_code" = 'GT-R';	-- 1.685 ms

SELECT "make_code", "model_code", "model_title", "year"
FROM "car_models"
WHERE "make_code" = 'LAM';	-- 1.045 ms

SELECT * FROM "car_models"
WHERE "year" BETWEEN 2010 AND 2015;	-- 123.627ms

SELECT * FROM "car_models"
WHERE "year" = 2010;	-- 23.405 ms

\timing off
