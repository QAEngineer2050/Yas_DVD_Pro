select first_name , last_name from actor

select last_name , actor_id from actor

select first_name, last_update from actor 

select title , description , rental_rate , length from film

select  title , rental_duration from film where rental_duration =4


select title , film_id , rental_rate from film where rental_rate=2.99


select title , replacement_cost , fulltext from film where replacement_cost >=17.99

SELECT*, (SELECT EXISTS (select 1 from film where description ILIKE '%squirrel%')) FROM film
WHERE description ILIKE '%woman%'
OR description ILIKE '%hampster%'
OR description ILIKE '%panorama%'

Select film_id, title from film
where rental_rate > some ( select rental_rate from film
where replacement_cost> 20);


SELECT c.customer_id, c.first_name, c.last_name, p.amount
FROM customer c
left JOIN payment p ON c.customer_id = p.customer_id;


