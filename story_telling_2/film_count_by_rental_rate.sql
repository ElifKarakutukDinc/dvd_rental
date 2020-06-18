--Film Count By Rental Rate 

select rental_rate, count(film.film_id) as film_count  
from film 
inner join film_actor as fa on (fa.film_id=film.film_id)
inner join actor as a on(fa.actor_id=a.actor_id)
group by 1
order by 2 desc;