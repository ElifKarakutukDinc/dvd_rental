--Number of films with length < 90 and rental_duration between 2 and 5?

select count(*)
from film
where length < 90 and rental_duration between 2 and 5;