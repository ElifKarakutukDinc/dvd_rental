--Actors by film count (top and buttom 10 actors according to their film counts)

with A as (
select  first_name ||' '|| last_name  as full_name,  count(film.film_id) as count, '1' as type
from film 
inner join film_actor as fa on (fa.film_id=film.film_id)
inner join actor as a on(fa.actor_id=a.actor_id)
group by 1
order by 2 desc
limit 10)

, B as (select  first_name ||' '|| last_name  as full_name,  count(film.film_id) as count, '2' as type
from film 
inner join film_actor as fa on (fa.film_id=film.film_id)
inner join actor as a on(fa.actor_id=a.actor_id)
group by 1
order by 2 asc
limit 10)

select*
from A
union
select *
from B
order by 3 asc, 2 desc;