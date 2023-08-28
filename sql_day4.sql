use sakila;
# --logical and , or ,not 
select *from actor;
select *from actor where first_name="NICK" or actor_id=3;
show tables;
select *from actor_info
         where file_info like "animation%"
         and first_name="GOLDIE";
         
#select *from actor_info where file_info like "animation%" and first_name="GOLDIE" or first_name="nick";
show tables;
desc actor_info;
select *from actor_info where film_info like "animation%" and first_name="GOLDIE" or first_name="nick";
# -- 

#vahi movies aya rahi hai jinme category sc-fi and rating pg hai
select *from film_list;
select category,rating,title
from film_list where category like "sci-fi"
and rating like 'pg';  

#isme phale and condition phale solve hui family or pg rating vali or phit or vali sci-fi contion solve hui
#isme parenthisis priority ko set karne ke liye lagaye (or) vale ki priority phale set ho gayi
select category,rating,title from film_list
where (category like 'sci-fi'
or category like 'family') and rating like 'pg'; 

select 2+2*3;#normally
select (2+2)*3; #parenthisis

#2,5 or unke bich ka data isme badi value phale dene se nhi chalega choti phale deni hai badi baad me
select *from actor
where actor_id between 2 and 5; 

#b,c ,d vale users mil rahe hai isse pr b to d ke bich vale bhi d inclusive hai or uske baad vale charater se uski assci value badh rahi hai
select *from actor
where first_name between "B" and "D" ; 

select *from actor
where first_name > "D" ; 

#in operator in where clause
select *from actor
where actor_id=1 or actor_id=5; #manual tarika in operator ka
#same chise
select *from actor
where actor_id in (1,5); #isme sirf 1 or 5 aya raha hai isse simplicity badh rahi hai isme (1,5,10) bhi dal sakte hai

# -- <> !=
#not operator with other or condition
select *from actor where not(actor_id=1);

#assignments
#1.
select *from actor;
where actor_id between 2 and 7 and (first_name="nick" or first_name="ed") ;
#2.
select *from actor where last_name not like "%a%" or last_name not like "%e%";
#3
select *from actor where first_name not in ('grace','mathew','joe') and actor_id<15;
#4
select *from actor where last_name not like "%a%" and first_name not like "%I%" and (actor_id between 10 and 20);


