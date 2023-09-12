use test;

#char
create table ep4(name1 char(20));
insert into ep4 values ("c ");
select name1,length(name1) from ep4;

#varchar
create table ep_var(name1 varchar(3));
insert into ep_var values("A");
select name1, length(name1) from ep_var;

#check constraint
# and or conditions bhi likh sakte hai check constraint me 
create table ep_var5(age int, gender char(1), check(age>10 and gender in ("M","F","o")));
insert into ep_var5 values (2, "M");
select *from ep_var5;

#DML statements
delete from ep4;
select *from ep4;

#update 
update ep_var set name1="T" where name1="A";
update ep_var set name1="T" limit 1; #limit dena






 