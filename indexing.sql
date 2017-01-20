\c nicolesandry;

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