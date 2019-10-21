--Number of films with rental_rate/length ratio > 0.1?

select count(*)
from film
where rental_rate/"length" > 0.1 ;