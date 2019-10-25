--Top 5 actor/actress list according to their distinct film category numbers?

select a.actor_id, a.first_name, a.last_name, count(distinct fc.category_id)
from actor as a
left join film_actor as fa on (a.actor_id=fa.actor_id)
left join film_category as fc on (fa.film_id=fc.film_id)
group by a.actor_id
order by count(fc.category_id) desc
limit 5;