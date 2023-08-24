-- dql select statement
select database();
show tables;
use sakila;
show tables;
show columns from actor_info;
desc actor;
select *from actor;
select *from sakila.actor;
SELECT name FROM sakila.language;
/* thw where clause is a powerful tool that allows you to find*/
select *from language where name='english';
select *from language where languge_id>3;
select *from language where name='english';

select *from language where language_id!=3;
select *from language where name > 'I';
select *from actor;
#b or b se badi value ayengi, this works on character set value
SELECT first_name FROM actor WHERE first_name > 'b';

SELECT first_name FROM actor WHERE first_name > 'bette'; 
# --pattern
select *from film;
#title me hame koi specific chis dhundne hai ek specific pattern 
#here like is an operator % means 0 or more vahi movie milegi jo % ke age a hai usse 'A%'
select *from film where title like 'A%R'; 
#vahi movies mil rahi hai jo 'a' se start hai or r pe khatam hai
#--pattern
select *from film where title like '%DINOSAUR%'; # 3 CASE ke liye chalega
select *from film;
select *from film where description like '%drama%';
select *from film where title like 'A%les';
select *from film where title like 'A_%'; #combination of  _ and % vo movies jinme minimum 2 character ho
select *from film where title like 'A_E%'; #first character a bich me kuch bhi 3rd character e or % matalb uske baad kitne bhi charater ho
select  title, film_id,release_year,description from film where title like '_C%';
select  title, film_id,release_year,description from film where title like 'A%an';
select  title, film_id,release_year,description from film where title like '%t___';
select  title, film_id,release_year,description from film where title like '_F_I%EGG';
select  title, film_id,release_year,description from film where title like '__a__%';

