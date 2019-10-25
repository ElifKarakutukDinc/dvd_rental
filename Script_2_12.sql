--Which movie has most  actor/actress?

select f.film_id, f.title, count(a.actor_id)
from film as f
left join film_actor as fa on (fa.film_id=f.film_id)
left join actor as a on (a.actor_id=fa.actor_id)
group by f.film_id
order by count(a.actor_id) desc
limit 1;