--Number of films  with rating NC-17 and length > 100 and rental duration is between 2 and 5?

select count(*)
from film
where rating= 'NC-17' and length > 100 and rental_duration between 2 and 5;