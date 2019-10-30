--How many customers returned the film 3 days later then the rented day?

select count(customer_id)
from rental
where date_part('day',return_date - rental_date)=3;