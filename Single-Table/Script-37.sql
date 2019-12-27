--Number of actors with more then 10 films?

select count(actor_id)
from film_actor
having  count(distinct film_id)>10;
