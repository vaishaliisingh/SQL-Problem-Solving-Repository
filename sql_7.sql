use sakila;
desc language;
select *from language;

#method to insert values in a table
insert into  language values (12, 'portugues2', now());
select *from language;

#giving time and date manually
insert into  language values(13,'russian','2020-09-26 10:35:00');
select *from language;

#ignore will not give duplicate data error
insert ignore into language values(13,'arabic','2020-09-26 10:35:00');
insert into language(language_id,name,last_update) values (15,'arabic','2020-09-26 10:35:00');

#no. of col should be equal to no. of data entries in insert
insert into language(last_update,name) values('2020-09-30 10:45:00', 'arabic1');
insert into language(last_update,name) values('2020-09-30 10:45:00', 'arabic3'),
('2020-09-30 10:45:00', 'arabic5'),('2020-09-30 10:45:00', 'arabic6');

#another method of inserting data
insert into language set language_id=100,name="abc";

#creation of a new database
create database test;

#this will create the database with name test if does not exists already
create database if not exists test;
use test;

#creating table
create table employee(eid int, name char(20),email char(20));
desc employee;
#inserting values in the table
insert into employee values(1,'tushar','tushar@gamil.com');
select *from employee;
insert into employee values(2,'vaishali','vaishali@gmail.com');

create table employee2(eid int default 0, name char(20),email char(20));
insert into employee2( name,email) values('suhani','suhani@gmail.com');
select *from employee2;

create table student(roll_no int, name char(20),course char(20));
insert into student(roll_no,name,course) value(1,'vaishali','big data'),
(2,'suhani','ML'),(3,'sumit','flutter'),(4,'vipul','basic c');
select *from student;
#update and delete statement
UPDATE student SET name = 'aman' WHERE roll_no = 4;
DELETE FROM student WHERE name = 'sumit';
set SQL_SAFE_UPDATES=0;
