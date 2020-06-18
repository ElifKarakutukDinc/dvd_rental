--Top 5 movies with the highest rating and their actor/actress list?

select f.film_id, a.actor_id,f.rating
from film as f
left join film_actor as fa on (f.film_id=fa.film_id)
left join actor as a on (fa.actor_id=a.actor_id)
group by  f.film_id, a.actor_id
order by rating desc
limit 5;

