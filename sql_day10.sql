use sakila;
select first_name, concat("MR",first_name) as FullName from actor;
#Group By :- 
#single row functions because applied on every row and getting outpur for every row
select first_name, length(first_name) from actor; 

#group by operations:-
use world;
show tables;
select *from country;
#count function
desc country;
create table t1(id int, city varchar(20));
insert into t1 values (1,"hey");
insert into t1 values (2,"hii");
insert into t1 values (null,"hello");
select count(*) from t1;
select count(id) from t1; 

#sum:-
select sum(id) from t1;
#distinct:-
select distinct(city) from t1;
#distinct with count
select count(distinct city) from t1;
select count(distinct id) from t1;

use world;
show tables;
select *from city;
select *from city where countrycode="AFG";
select countrycode from city group by countrycode;
select countrycode,count(id) from city group by countrycode;

select countrycode, count(id), sum(population) as 
TOTALPOPULATION from city group by countrycode;

select country, 
concat("afg has totl count of",count(id)) and concat("sum is", sum(population));

select countrycode,count(id), sum(population) as TOTALPOPULATION
from city group by countrycode having sum(population)>500 and count(id)>1
order by TOTALPOPULATION;

select countrycode, sum(population) from city where population > 200000 
group by countrycode;

select *from country;
#do column me group by lagana
select continent,region, count(code) from country 
where continent = "Europe"group by continent,region; 

select continent,region, count(code) from country 
where continent = "Europe"group by continent,region order by continent,region; 

select continent,region, count(code) from country 
group by continent,region order by continent,region; 

select continent,region, count(code) from country 
group by continent,region order by region,country; 

