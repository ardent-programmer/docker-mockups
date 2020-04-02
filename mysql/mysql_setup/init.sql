CREATE DATABASE IF NOT EXISTS another_database;

GRANT ALL PRIVILEGES ON another_database.* TO 'myuser'@'%' WITH GRANT OPTION;

