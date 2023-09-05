select now() from dual;
select char_length("c");
select concat("h","-","y") from dual;
select concat_ws("-","hey","hello") from dual;
select now();
select upper("hey");
select substr("hello",2,1);
select substr(substr("hello",1,3),2);
select instr("hello","e");
-- substring and data
select locate("a","rajasthan",2);
select ltrim("    xyz");
select trim(leading " " from "  zyz  ");
select trim(trailing " " from "  zyz  ");
select trim(both "z" from "zzzzy zz  zyz");
select lpad("hello01", 6, "#");
select replace("tushars", "s","#");


use sakila;
select *from language;
desc language;

select count(*) from language;

-- dml data manipulation language
-- insert statement insert into table values(val1,val2,val3)
insert into language values (NULL, 'portuguese', now());
describe language;
select *from language;
insert into language values (10, 'portuguese1', now());
describe language;
select *from language;







