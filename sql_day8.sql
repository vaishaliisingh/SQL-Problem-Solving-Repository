use test;
#setting default value
create table student1(sid int,email char(20) default "hey");
insert into student1(sid) values(3);
select *from student1;

#constraints
#1. not null constraint here sid cannot have null value
create table student2(sid int not null default 0,email char(20) default "hey");
insert into student2(email) values("user@");
select *from student2;

#2. unique constraint here sid have unique constraint
create table student_unique(sid int unique default 0,email char(20) default "hey");
insert into student_unique(sid,email) values (null , "user@");
select *from student_unique;

#to delete a table
#drop table tablename;

#3. primary key constraint
create table employee3(eid int primary key, ename char(20));
insert into employee3 values(1,"tushar");
select *from employee3;

#data types:-
create table ex3(eid int(2) zerofill);
insert into ex3 values (3);
select *from ex3;

#big_int
create table test_bigint(id bigint unsigned);
insert into test_bigint values (18446744073709551615-1);
select *from test_bigint;

#boolean
create table test_bool(i bool);
insert into test_bool values(true),(false);
select *from test_bool;



