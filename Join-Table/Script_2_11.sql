--Which actor/actress has most movies?

select a.actor_id,a.first_name,a.last_name, count(f.film_id)
from actor as a
left join film_actor as fa on (a.actor_id=fa.actor_id)
left join film as f on (fa.film_id=f.film_id)
group by a.actor_id,a.first_name,a.last_name
order by count(f.film_id) desc;