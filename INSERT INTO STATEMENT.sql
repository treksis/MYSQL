#1. Write a SQL statement to insert a record with your own value into the table countries against each columns.

drop table if exists countries;

create table if not exists countries(
country_id varchar(2) not null unique primary key,
country_name varchar(40) not null,
region_id decimal(10,0) not null
);

insert into countries values('a1','Canada',0001);

select * from countries;

#2. Write a SQL statement to insert one row into the table countries against the column country_id and country_name.

drop table if exists countries;

CREATE TABLE IF NOT EXISTS countries ( 
COUNTRY_ID varchar(2) NOT NULL UNIQUE PRIMARY KEY,
COUNTRY_NAME varchar(40) NOT NULL
);

INSERT INTO countries (country_id,country_name) VALUES('a1','Canada');

SELECT * FROM countries;

#3. Write a SQL statement to create duplicate of countries table named country_new with all structure and data.

drop table if exists countries;

CREATE TABLE IF NOT EXISTS countries ( 
COUNTRY_ID varchar(2) NOT NULL UNIQUE PRIMARY KEY,
COUNTRY_NAME varchar(40) NOT NULL
);

INSERT INTO countries (country_id,country_name) VALUES('a1','Canada');

drop table if exists country_new;

CREATE TABLE IF NOT EXISTS country_new
AS SELECT * FROM countries;

SHOW COLUMNS FROM country_new;

SELECT * FROM country_new;

#4. Write a SQL statement to insert NULL values against region_id column for a row of countries table.

drop table if exists countries;

create table if not exists countries(
country_id varchar(2) not null unique primary key,
country_name varchar(40) not null,
region_id decimal(10,0) # should allow null value
);

INSERT INTO countries (country_id,country_name,region_id) VALUES('a1','Canada',NULL);
select * from countries;

#5. Write a SQL statement to insert 3 rows by a single insert statement.

drop table if exists countries;

create table if not exists countries(
country_id varchar(10) not null unique primary key,
country_name varchar(40) not null,
region_id decimal(10,0) # should allow null value
);

INSERT INTO countries (country_id,country_name,region_id) VALUES 
('a1','Canada',NULL),
('a2','united states',0002),
('a3','mexico',0003);

select * from countries;

#6. Write a SQL statement insert rows from country_new table to countries table.

drop table if exists country_new;

CREATE TABLE IF NOT EXISTS country_new
AS SELECT * FROM countries;

insert country_new(country_id, country_name, region_id) values
('c001','India',1001),
('c002','USA',1007),
('c003','UK',1003);

SHOW COLUMNS FROM country_new;

SELECT * FROM country_new;

#7. Write a SQL statement to insert one row in jobs table to ensure that no duplicate value will be entered in the job_id column.

SET FOREIGN_KEY_CHECKS=0; DROP TABLE jobs; SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE IF NOT EXISTS JOBS ( 
JOB_ID integer NOT NULL UNIQUE , 
JOB_TITLE varchar(35) NOT NULL, 
MIN_SALARY decimal(6,0)
);

INSERT INTO JOBS VALUES(1001,'OFFICER',8000);

SELECT * FROM JOBS;

#9. Write a SQL statement to insert a record into the table countries to ensure that, a country_id and region_id combination will be entered once in the table.

drop table if exists countries;

CREATE TABLE IF NOT EXISTS countries ( 
COUNTRY_ID integer NOT NULL,
COUNTRY_NAME varchar(40) NOT NULL,
REGION_ID integer NOT NULL,
PRIMARY KEY (COUNTRY_ID,REGION_ID)
);

INSERT INTO countries VALUES(501,'India',185);

show columns from countries;

select * from countries;

#10. Write a SQL statement to insert rows into the table countries in which the value of country_id column will be unique and auto incremented.

drop table if exists countries;

CREATE TABLE IF NOT EXISTS countries ( 
COUNTRY_ID integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
COUNTRY_NAME varchar(40) NOT NULL,
REGION_ID integer NOT NULL
);

insert into countries values(007, 'UK', 221);

insert into countries values(002, 'Mexico', 661);

select* from countries;

#11. Write a SQL statement to insert records into the table countries to ensure that the country_id column will not contain any duplicate data and this will be automatically incremented and the column country_name will be filled up by 'N/A' if no value assigned for that column.

drop table if exists countries;

CREATE TABLE IF NOT EXISTS countries ( 
COUNTRY_ID integer NOT NULL AUTO_INCREMENT PRIMARY KEY,
COUNTRY_NAME varchar(40) NOT NULL DEFAULT 'N/A',
REGION_ID integer NOT NULL
);

INSERT INTO countries VALUES(501,'India',102);

SELECT * FROM countries;

INSERT INTO countries(region_id) VALUES(109);

SELECT * FROM countries;

INSERT INTO countries(country_name,region_id) VALUES('Australia',121);

SELECT * FROM countries;


