--Which actor/actress played movies which have minimum average rental_rate > 1 and average length < 200?

select a.actor_id, a.first_name, a.last_name, avg(rental_rate), avg(length)
from actor as a
left join film_actor as fa on (a.actor_id=fa.actor_id)
left join film as f on (fa.film_id=f.film_id)
group by a.actor_id, a.first_name, a.last_name
having avg(rental_rate) >1 and avg(length) <200
order by avg(rental_rate);