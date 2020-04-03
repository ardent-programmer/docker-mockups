# Docker Mysql usage

## Startup
Start mysql with 
```
docker-compose up
```
proper shutdown
```
docker-compose down
```

## Setup
create database setup permission create table can be done my adding any number of *.sql file in the mysql_setup folder. The sample file init.sql will generate a database called *another_database*. The sql files can contain any table create, alter, inserts... 

## Copy data
You can copy tables with or without data, or with a where clause. The following example will need the description between {} replaced including the brackets with actual values. These are just templates.

Copy table with all data
```
mysqldump -h{hostname} -u{mysql_user} --password={mysql_pw} {mysql_db} {mysql_table} \
    | mysql --host=127.0.0.1 -udevuser -pdevpassword {mysql_db}

```
Copy table structure only
```
mysqldump -h{hostname} -u{mysql_user} --no-data --password={mysql_pw} {mysql_db} {mysql_table} \
    | mysql --host=127.0.0.1 -udevuser -pdevpassword {mysql_db}

```
Copy table with data where column = value
```
mysqldump -t -h{hostname} -u{mysql_user} --password={mysql_pw} {mysql_db} {mysql_table} --where={column}={value} \
    | mysql --host=127.0.0.1 -udevuser -pdevpassword {mysql_db}

```

## Clear Data
Reset data by removing the attached volume. see the main [README.md](../README.md#volumes