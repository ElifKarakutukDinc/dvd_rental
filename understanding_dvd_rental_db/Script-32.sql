--Number of films rental_rate/replacement_cost > 0.05?

select  count(*)
from film
where  rental_rate/replacement_cost > 0.05 ;