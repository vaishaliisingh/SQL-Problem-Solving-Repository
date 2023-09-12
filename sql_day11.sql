use world;
select *from country;
select count(continent) from country;
select distinct(continent) from country;
select continent,count(*) from country group by continent;
#group by with having clauses 
select continent,count(*),sum(population) from country 
group by continent having count(*) >50;

#set operations
use sakila;
show tables;
desc actor;
desc actor_info;

select first_name from actor limit 3;
select first_name from actor_info order by first_name limit 3;

#union :- combines two query's output union by default distinct data hi 
#extract hoti hai duplcate data hat jata hai iske liye union all use karte hai 
select first_name from actor union 
select first_name from actor_info;
use test;
create table xyz(id int);
insert into xyz values(10);
create table abc(id int);
insert into abc values(20);
select *from xyz union all select *from abc;
#intersect
select *from xyz 
intersect 
select  *from abc;

#except :- vo data jo phali table me hai dusri me nhi hai
select *from xyz
except
select *from abc;





