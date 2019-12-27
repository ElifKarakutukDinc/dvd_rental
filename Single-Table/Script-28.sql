--Number of films with rental_rate > 2 and rental_duration < 5? 

select count(*)
from film
where rental_rate > 2 and rental_duration < 5;