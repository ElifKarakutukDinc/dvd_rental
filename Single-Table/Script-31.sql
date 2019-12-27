--Number of films replacement_cost > 15 and length > 150?

select count(*)
from film
where replacement_cost > 15 and "length" > 150;