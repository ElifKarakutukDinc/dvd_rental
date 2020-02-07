--count of actor's film and rentaled count of actor's film 

with actor_film_table as(

select a.actor_id, film.film_id 
from film 
inner join film_actor as fa on (fa.film_id=film.film_id)
inner join actor as a on(fa.actor_id=a.actor_id)
group by 1,2),

film_rent_table as (select film.film_id, r.rental_id 
from film
inner join inventory as i on (i.film_id=film.film_id)
inner join rental as r on (r.inventory_id=i.inventory_id)),

actor_movie_total as (select actor_id, count(1) as movie_acted_count
from actor_film_table
group by 1),

movie_rent_total as (select actor_id, count(rental_id) as rental_count
from actor_film_table as table_1
inner join film_rent_table as table_2 on (table_1.film_id = table_2.film_id)
group by 1)

select first_name ||' '|| last_name  as full_name, actor_movie_total.*,  movie_rent_total.rental_count 
from actor_movie_total 
left join
movie_rent_total on (actor_movie_total.actor_id = movie_rent_total.actor_id)
inner join actor on (actor_movie_total.actor_id = actor.actor_id);